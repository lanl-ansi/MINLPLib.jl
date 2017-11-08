function minlplib2_download(pname::AbstractString; ptype="gms")

    url = "http://www.gamsworld.org/minlp/minlplib2/data/$(ptype)/$(pname).$(ptype)"

    download_fail = false
    try
        filepath = joinpath(Pkg.dir("POD_experiment"),".prob","")
        download(url, "$(filepath)$(pname).gms")
    catch e
        download_fail = true
        warn(e)
    end

    download_fail ? info("FAILED downloading $(pname).$(ptype)") : info("SUCCESSFULLY downloaded $(pname).$(ptype)")
    return
end

function minlplib2_meta(pname::AbstractString, show=true)

    if !isfile("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).prop")
        show && info("No $(pname).prop found")
        return
    end

    prop_f = open("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).prop", "r")
    prop_c = Dict()

    for l in readlines(prop_f)
        sl = split(l, "=")
        identifier = split(sl[1])[1]
        if length(sl) > 1
            (identifier == "NVARS") && (prop_c[:NVARS] = parse(sl[2]))
            (identifier == "NCONS") && (prop_c[:NCONS] = parse(sl[2]))
            (identifier == "NBINVARS") && (prop_c[:NBINVARS] = parse(sl[2]))
            (identifier == "NINTVARS") && (prop_c[:NINTVARS] = parse(sl[2]))
            (identifier == "NNLVARS") && (prop_c[:NNLVARS] = parse(sl[2]))
            (identifier == "OBJSENSE") && (prop_c[:OBJSENSE] = parse(sl[2]))
            (identifier == "OBJTYPE") && (prop_c[:OBJTYPE] = parse(sl[2]))
            (identifier == "NLOPERANDS") && (prop_c[:NLOPERANDS] = sl[2])
        end
    end
    close(prop_f)

    !haskey(prop_c, :OBJSENSE) && info("No detection of objective sense in $(pname).prop", prefix="MINLPLIB2: ")
    !haskey(prop_c, :OBJSENSE) && return
    obj_sense = prop_c[:OBJSENSE]

    found = true
    i = 1
    if isfile("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).p$(i).prop")
        prop_f = open("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).p$(i).prop", "r")
        for l in readlines(prop_f)
            sl = split(l)
            if length(sl) > 2
                sl[1] == "OBJVALUE" && (prop_c[:OBJVALUE] = parse(sl[3]))
                sl[1] == "INFEASIBILITY" && (prop_c[:INFEASIBILITY] = parse(sl[3]))
            end
        end
        close(prop_f)
    else
        info("No detection of the solution p# file $(pname)", prefix="MINLPLIB2: ")
    end

    obj_sense == :min ? bound = -Inf : bound = +Inf
    bound_solver = ""
    if isfile("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).db")
        dbf = open("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2/$(pname).db", "r")
        last_l = ""
        for l in readlines(dbf)
            sl = split(l)
            if length(sl) > 2 && sl[1] == "DUALBOUND"
                if obj_sense == :min
                    bound_candidate = parse(sl[3])
                    bound_candidate == :inf && (bound_candidate = Inf)
                    if bound_candidate > bound
                        bound = bound_candidate
                        bound_solver = last_l
                    end
                elseif obj_sense == :max
                    bound_candidate = parse(sl[3])
                    if bound_candidate < bound
                        bound = bound_candidate
                        bound_solver = last_l
                    end
                end
            end
            last_l = l
        end
        close(dbf)
    end

    prop_c[:BOUND] = bound
    prop_c[:SOLVER] = bound_solver

    if show
        println("======================================")
        println("    PROBLEM: $(pname)")
        println("======================================")
        haskey(prop_c, :NVARS) ? println("NUM VARS     : $(prop_c[:NVARS])") : println("NUM VARS     : ?")
        haskey(prop_c, :NCONS) ? println("NUM CONS     : $(prop_c[:NCONS])") : println("NUM CONS     : ?")
        haskey(prop_c, :NBINVARS) ? println("NUM BIN VARS : $(prop_c[:NBINVARS])") : println("NUM BIN VARS : ?")
        haskey(prop_c, :NINTVARS) ? println("NUM INT VARS : $(prop_c[:NINTVARS])") : println("NUM INT VARS : ?")
        haskey(prop_c, :NNLVARS) ? println("NUM NL VARS  : $(prop_c[:NNLVARS])") : println("NUM NL VARS  : ?")
        haskey(prop_c, :OBJSENSE) ? println("OBJ SENSE    : $(prop_c[:OBJSENSE])") : println("OBJ SENSE    : ?")
        haskey(prop_c, :OBJTYPE) ? println("OBJ TYPE     : $(prop_c[:OBJTYPE])") : println("OBJ TYPE     : ?")
        haskey(prop_c, :NLOPERANDS) ? println("SPE OPERATOR  : $(prop_c[:NLOPERANDS])") : println("SPE OPERATOR  : ?")
        haskey(prop_c, :OBJVALUE) ? println("BEST OBEJCTIVE : $(prop_c[:OBJVALUE])") : println("BEST OBEJCTIVE : ?")
        # println("INFEA TOLERANCE: $(prob_c]"INFEASIBILITY")\n")
        haskey(prop_c, :BOUND) ? println("BEST BOUND   : $(prop_c[:BOUND])") : println("BEST BOUND   : ?")
        haskey(prop_c, :SOLVER) ? println("SOLVER       : $(prop_c[:SOLVER])") : println("SOLVER       : ?")
    end

    return prop_c
end

function minlplib2_match(kword::Vector)

    ml2 = JSON.parsefile("$(Pkg.dir())/POD_experiment/.solvedata/minlplib2.json")
    @show keys(ml2)
    nlist = ml2["names"]
    tlist = Set()

    info("Keyword target => $(kword)", prefix="MINLPLIB2: ")

    for i in nlist
        i_info = minlplib2_meta(i, false)
        found_match = false
        i_info == nothing && continue
        for j in keys(i_info)
            for k in kword
                if ismatch(Regex(k), string(i_info[j]))
                    minlplib2_meta(i)
                    push!(tlist, i)
                    found_match = true
                end
                found_match && break
            end
            found_match && break
        end
    end

    return tlist
end

function gms2julia(gmsName::AbstractString, juliaName::AbstractString="", mode::AbstractString="index"; kwargs...)
    isempty(juliaName) && (juliaName = gmsName)
    gms = read_gms_file(gmsName)
    write_julia_script(juliaName, gms, mode)
end

function read_gms_file(filename::AbstractString)

    info("Reading .gms file ...")

    filepath = joinpath(Pkg.dir("POD_experiment"),".gms","")
    filepath = string(filepath,filename,".gms")
    @show filepath
    if isfile(filepath)
        f = open(filepath, "r")
    else
        error("No gms file detected.")
    end

    #=
        ----------------------- Line Header Space ------------------
            Example :: 4stufen.gms
        Unkown ::
        $offlisting
        $if set nostart $goto modeldef
        $label modeldef
        $if not set MINLP $set MINLP MINLP  Model Type

        *                 -> comment
        Null              -> emptyline
        Variables         -> All Variable List, separated by ","
        Positive Variable -> Non-negative variables list, separated by "," (assert)
        Binary Variable   -> Binary variables list, separated by "," (assert)
        Equations         -> Equations symbols, separated by ","
        EquSymbols..      -> Equation content
        VarSymbols.lo     -> Lower Bound
        VarSymbols.l      -> Upper Bound ??
        Model m / all /   -> ??
        m.limrow=0
        m.
        ------------------------------------------------------------
    =#

    # Null Trackers
    skip = 0
    comment = 0

    # Main data structure initialization
    gms = oneProblem()

    # -------------------------- Start Reading -------------------------- #
    for l in eachline(f)

        sl = lstrip(l, ' ')
        if isempty(sl) || length(sl) == 1  # Skip empty line
            skip += 1
        elseif sl[1] == "*"
            comment += 1
        else
            slt = split(sl, r" |,|\.")
            slt = [slt[i] for i in 1:length(slt) if length(slt[i]) > 0]
            if slt[1] in BLOCK_HEADER
                read_block(f, gms, l)           # Reading a general block
            elseif slt[1] in gms.rows #ismatch(r"e\d", sl[1])
                read_equation(f, gms, l)        # Reading an equation block
            elseif slt[1] in gms.cols #ismatch(r"\w\.\w", sl[1])
                read_bounds(f, gms, l)          # Reading a bound block
            elseif slt[1] == "\$"
                read_command(f, gms, l)         # Reading a logical command line
            elseif slt[1] == "Model"
                read_model(f, gms, sl)           # Reading a model command
            elseif slt[1] == "Solve"
                read_solve(f, gms, sl)           # Reading a solve command line
            else
                # println("[Unkown]DUMPING >> ", l)
            end
        end

    end
    close(f)

    return gms
end

function read_block(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)

    sl = split(get_one_line(file, one_line=lInit), r" |,")
    sl = [sl[i] for i in 1:length(sl) if !isempty(sl[i])]  # Eliminate empty entries

    blockIdentifier = sl[1]  # This should always be true

    for i in 1:length(sl)
        if blockIdentifier == "Variables" && (i > 1)
            push!(gms.cols, sl[i])
        elseif blockIdentifier == "Positive" && (i > 2)
            gms.colsType[sl[i]] = "Positive"
        elseif blockIdentifier == "Binary" && (i > 2)
            gms.colsType[sl[i]] = "Binary"
        elseif blockIdentifier == "Integer" && (i > 2)
            gms.colsType[sl[i]] = "Integer"
        elseif blockIdentifier == "Equations" && (i > 1)
            push!(gms.rows, sl[i])
        end
    end

    return
end

function read_equation(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)

    #=
        Example Equation
        #Single Line
        e1..    objvar - x145 - x146 - x147 - x148 - x149 - x150 =E= 3271.22725820856;
        # Multi Line
        e38..    109.0495*x1 + 100.462*x2 + 115.2937*x3 + 2.860271*x4 + 15.1404*x5
               + x44 - x556 =E= 101.1304;
    =#

    lhs = ""
    rhs = ""
    sense = ""
    eName = string(strip(split(lInit, r" |,")[1], '.'))
    if eName in gms.rows   # TODO: This extra assertion can be elimated
        one_l = get_one_line(file, one_line=lInit)
        sl = split(one_l, r" |,|=", keep=false)
        sl = [sl[i] for i in 1:length(sl) if !isempty(sl[i])]  # Eliminate empty entries
        i = 2 # Default starting position for equations
        while true # Concatenate the parsed elements
            (i > length(sl)) && break # Multi-line expression
            if sl[i] in ["E", "L", "G"] && isempty(sense)
                sense = sl[i]
                gms.rowsSense[eName] = sense    # Storing raw sense character
                i = i + 1
            elseif sl[i] in ["E", "L", "G"] && !isempty(sense)
                error("Already detected sense for this equation")
                i = i + 1
            elseif !(sl[i] in ["E", "L", "G"]) && isempty(sense)
                lhs = string(lhs, sl[i])
                gms.rowsLHS[eName] = lhs
                i = i + 1
            else    # Implication
                rhs = Float64(parse(sl[i]))
                # A weak assertion :: eqach equation (stripped) ends with rhs
                @assert i == length(sl)
                gms.rowsRHS[eName] = rhs
                break
            end
        end
    else
        error("Non-indexed constraint detected.\n$(lInit)")
    end

    return
end

function read_bounds(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)

    #=
        .lo lower bound
        .l level or primal value
        .up upper bound
        .m marginal or dual value
    =#
    @assert rstrip(strip(lInit, '\n'), ' ')[end] == ';' # Assumption :: alwasy one line
    all_segs = split(lInit, ';', keep=false)
    all_segs = [i for i in all_segs if !isempty(strip(i,' '))]
    for lseg in all_segs
        lseg = strip(lseg, [';', '\n', ' '])
        sl = split(lseg, " ")
        sl = [sl[i] for i in 1:length(sl) if !isempty(sl[i])]
        # There shouldn't be any space to begin with
        @assert ismatch(r"\w.\w", sl[1])
        boundVal = Float64(parse(sl[end]))
        var = split(sl[1],".")[1]
        attr = split(sl[1],".")[2]

        if attr == "lo"
            gms.lb[var] = boundVal
        elseif attr == "l"
            gms.l[var] = boundVal
        elseif attr == "fx"
            gms.fx[var] = boundVal
        elseif attr == "up"
            gms.ub[var] = boundVal
        elseif attr == "m"
            gms.m[var] = boundVal
        end
    end

    return
end

function read_model(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)

    # Assume this will always be one line
    @assert strip(lInit, '\n')[end] == ';'
    sl = split(strip(lInit,[';','\n']), r" |,")
    @assert sl[1] == "Model"  # Already did outside
    # Not sure if the information stored here is useful or not.
    for i in 1:length(sl)
        if sl[i] == "Model"
            gms.modelSymbol = sl[i+1]
        end
    end

    return
end

function read_solve(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)

    @assert strip(lInit, '\n')[end] == ';'

    sl = split(strip(lInit, [';','\n']), r" |,")
    @assert sl[1] == "Solve"

    for i in 1:length(sl)
        if sl[i] in PROBTYPE
            gms.modelType = sl[i]
        elseif sl[i] == "maximizing"
            gms.objSense = sl[i]
        elseif sl[i] == "minimizing"
            gms.objSense = sl[i]
        elseif sl[i] in gms.cols
            gms.objVar = sl[i]
        end
    end
end
