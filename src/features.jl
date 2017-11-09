function fetch_model(instance::AbstractString, options=Dict();kwargs...)

    st = time()
    if instance in special_instances
        m = eval(parse(instance))(fetch_solver, options=options)
    else
        m = include("$(Pkg.dir())/MINLPLib_jump/instances/$(instance).jl")
    end
    info("Finish loading problem $(instance) in $(time()-st) seconds")

    return m
end

function minlplib2_meta(pname::AbstractString, show=true)

    if !isfile("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).prop")
        show && info("No $(pname).prop found")
        return
    end

    prop_f = open("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).prop", "r")
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
    if isfile("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).p$(i).prop")
        prop_f = open("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).p$(i).prop", "r")
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
    if isfile("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).db")
        dbf = open("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2/$(pname).db", "r")
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

    ml2 = JSON.parsefile("$(Pkg.dir())/MINLPLib_jump/.solvedata/minlplib2.json")
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
