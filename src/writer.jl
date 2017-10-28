function write_julia_script(juliaName::AbstractString, gms::oneProblem, mode="index"; kwargs...)

    if mode == "index"
        parse_varname(gms)
        replace_vars(gms)
    end

    options = Dict(kwargs)

    info(" --------- Start writing Julia script ---------")
    !isdir("$(Pkg.dir())/POD_experiment/.jls/fgms") && mkdir("$(Pkg.dir())/POD_experiment/.jls/fgms")
    filepath = joinpath(Pkg.dir("POD_experiment"),".jls/fgms","")
    filepath = string(filepath, juliaName,".jl")
    f = open(filepath, "w")

    info("Writing headers...")
    write(f, "using JuMP\n\n")
    # write(f, "function $(juliaName)(;options=Dict())\n\n")
    # write(f, "\thaskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()\n")
    # write(f, "\thaskey(options, :verbose) ? verbose=options[:verbose] : verbose=false\n\n")
    # write(f, "\tm = Model(solver=fetch_solver(solver_options))\n")
    write(f, "\tm = Model()\n")

    write(f, "\n\t# ----- Variables ----- #\n")
    info("Writing variables...")
    if mode == "raw"
        for var in gms.cols
            if haskey(gms.colsType, var)
                if gms.colsType[var] == "Positive"
                    write(f, "\t@variable(m, $(var)>=0)\n")
                elseif gms.colsType[var] == "Binary"
                    write(f, "\t@variable(m, $(var), Bin)\n")
                elseif gms.colsType[var] == "Integer"
                    write(f, "\t@variable(m, $(var), Int)\n")
                else
                    error("ERROR|gms2julia.jl|write_julia_script()|Unsupported variable type.")
                end
            else
                write(f, "\t@variable(m, $(var))\n")
            end
        end
    elseif mode == "index"
        for var in keys(gms.vars)
            if gms.vars[var] != 0
                write(f, "\t$(var)_Idx = $(gms.vars[var])\n")
                write(f, "\t@variable(m, $(var)[$(var)_Idx])\n")
                vs = "@variable(m_tester, $(var)[$(gms.vars[var])])"
                eval(parse(vs))
            else
                write(f, "\t@variable(m, $(var))\n")
                vs = "@variable(m_tester, $(var))"
                eval(parse(vs))
            end
        end
        for col in keys(gms.colsType)
            if gms.colsType[col] == "Binary"
                write(f, "\tsetcategory($(gms.cols2vars[col]), :Bin)\n")
            elseif gms.colsType[col] == "Integer"
                write(f, "\tsetcategory($(gms.cols2vars[col]), :Int)\n")
            elseif gms.colsType[col] == "Positive"
                write(f, "\tsetlowerbound($(gms.cols2vars[col]), 0.0)\n")
            else
                error("ERROR|gms2julia.jl|write_julia_script()|Unsupported variable type.")
            end
        end
    end

    info("Writing variables' bounds...")
    for col in gms.cols
        if mode == "raw"
            colName = col
        elseif mode == "index"
            colName = gms.cols2vars[col]
        end
        if haskey(gms.lb, col)
            write(f, "\tsetlowerbound($(colName), $(gms.lb[col]))\n")
        end
        if haskey(gms.ub, col)
            write(f, "\tsetupperbound($(colName), $(gms.ub[col]))\n")
        end
        if haskey(gms.fx, col)
            write(f, "\tsetlowerbound($(colName), $(gms.fx[col]))\n")
            write(f, "\tsetupperbound($(colName), $(gms.fx[col]))\n")
        end
    end

    write(f, string("\n\n\t# ----- Constraints ----- #\n"))

    info("Writing Constraints...")
    for row in gms.rows
        if gms.rowsSense[row] == "E"
            gms.rowsLHS[row] = replace_oprs(gms.rowsLHS[row])
            if try_iflinear("\t@constraint(m_tester, $(row), $(gms.rowsLHS[row]) == $(gms.rowsRHS[row]))\n")
                write(f, "\t@constraint(m, $(row), $(gms.rowsLHS[row]) == $(gms.rowsRHS[row]))\n")
            else
                write(f, "\t@NLconstraint(m, $(row), $(gms.rowsLHS[row]) == $(gms.rowsRHS[row]))\n")
            end
        elseif gms.rowsSense[row] == "L"
            gms.rowsLHS[row] = replace_oprs(gms.rowsLHS[row])
            if try_iflinear("\t@constraint(m_tester, $(row), $(gms.rowsLHS[row]) <= $(gms.rowsRHS[row]))\n")
                write(f, "\t@constraint(m, $(row), $(gms.rowsLHS[row]) <= $(gms.rowsRHS[row]))\n")
            else
                write(f, "\t@NLconstraint(m, $(row), $(gms.rowsLHS[row]) <= $(gms.rowsRHS[row]))\n")
            end
        elseif gms.rowsSense[row] == "G"
            gms.rowsLHS[row] = replace_oprs(gms.rowsLHS[row])
            if try_iflinear("\t@constraint(m_tester, $(row), $(gms.rowsLHS[row]) >= $(gms.rowsRHS[row]))\n")
                write(f, "\t@constraint(m, $(row), $(gms.rowsLHS[row]) >= $(gms.rowsRHS[row]))\n")
            else
                write(f, "\t@NLconstraint(m, $(row), $(gms.rowsLHS[row]) >= $(gms.rowsRHS[row]))\n")
            end
        else
            error("ERROR|gms2julia.jl|write_julia_script()|Unkown sense type. (Unlikely)")
        end
    end

    write(f, string("\n\n\t# ----- Objective ----- #\n"))
    if mode == "raw"
        info("Writing objective section...")
        if gms.objSense == "maximizing"
            write(f, "\t@objective(m, Max, $(gms.objVar))\n")
        elseif gms.objSense == "minimizing"
            write(f, "\t@objective(m, Min, $(gms.objVar))\n")
        else
            error("ERROR|gms2julia.jl|write_julia_script()|Unkown objective sense.")
        end
    else mode == "index"
        info("Writing objective section...")
        if gms.objSense == "maximizing"
            write(f, "\t@objective(m, Max, $(gms.cols2vars[gms.objVar]))\n")
        elseif gms.objSense == "minimizing"
            write(f, "\t@objective(m, Min, $(gms.cols2vars[gms.objVar]))\n")
        else
            error("ERROR|gms2julia.jl|write_julia_script()|Unkown objective sense.")
        end
    end

    # write(f, "\tverbose && print(m)\n")
    # write(f, "\treturn m\n")
    # write(f, "end\n\n")
    # write(f, "m = $(juliaName)()\n")
    write(f, "m = m\n")
    # write(f, string("\n\n# ----- END ----- #"))
    info(" --------- Finish writing Julia script ---------")
    close(f)

    return 0
end

"""
    Takes .gms variable name like "\w+\d+" and get the both part
"""
function parse_varname(gms::oneProblem)

    if isempty(gms.vars)

        for varString in gms.cols
            varName = split(varString, r"\d+")[1]
            if varName != varString
                varSplit = split(varString, varName)
                varIndex = parse(varSplit[2])
                @assert isa(varIndex, Int)
                if !haskey(gms.vars, varName)
                    gms.vars[varName] = []
                end
                if varIndex in gms.vars[varName]
                    error("ERROR|gms2julia.jl|parse_varname()|Conflicting indice variable names")
                end
                push!(gms.vars[varName], varIndex)
                gms.cols2vars[varString] = parse(string(varName, "[",varIndex,"]"))
                gms.vars2cols[parse(string(varName,"[",varIndex,"]"))] = varString
            else
                if !haskey(gms.vars, varName)
                    gms.vars[varName] = 0
                else
                    error("ERROR|gms2julia.jl|parse_varname()|Conflicting symbolic variable names.")
                end
                gms.cols2vars[varString] = parse(varName)
                gms.vars2cols[parse(varName)] = varString
            end

        end
    else
        return 0
    end
end
