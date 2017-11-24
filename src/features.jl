function fetch_model(instance::AbstractString, options::Dict=Dict())

    st = time()
    if instance in special_instances
        m = eval(parse(instance))(options=options)
    else
        m = include("$(Pkg.dir())/MINLPLibJuMP/instances/$(instance).jl")
    end

    return m
end

fetch_model(libname::AbstractString, pname::AbstractString, options::Dict=Dict()) = fetch_model(joinpath(libname,pname), options)

function fetch_meta(instance::AbstractString; showthem=false)
    if !isfile("$(Pkg.dir())/MINLPLibJuMP/meta/$(instance).json")
        warn("No meta information for $(instance) found")
        return false
    end
    m = JSON.parsefile("$(Pkg.dir())/MINLPLibJuMP/meta/$(instance).json")

    for i in METAATTRS
        showthem && info("$(i) => $(m[i])", prefix="MINLPLibJuMP: ")
    end
    return m
end

function fetch_names(libname::AbstractString; postfix=false)
    !isdir("$(Pkg.dir())/MINLPLibJuMP/instances/$(libname)") && error("Library $(libname) does not exist.")
    nraw = readdir("$(Pkg.dir())/MINLPLibJuMP/instances/$(libname)")
    nlist = []
    inactive = 0
    postfix && return nlist
    for i in 1:length(nraw)
        if !(nraw[i][1] in ['_', '#'])
            postfix ? push!(nlist, nraw[i]) : push!(nlist, replace(nraw[i], ".jl", ""))
        else
            inactive += 1
        end
    end
    return nlist
end

function build_basic_meta(libname::AbstractString, pname::AbstractString; injection::Bool=false)

    m = fetch_model(libname, pname)

    d = JuMP.NLPEvaluator(m)
    MathProgBase.initialize(d, [:Grad, :Jac, :HessVec, :Hess, :ExprGraph])

    meta = Dict("OBJTYPE"=> d.has_nlobj ? "nonlinear" : "linear",
                "LIBRARY"=> libname,
                "OBJSENSE"=> m.objSense,
                "OBJVAL" => m.objSense == :Max ? -Inf : Inf,
                "OBJBOUND"=> m.objSense == :Max ? Inf : -Inf,
                "NCONS"=> length(m.linconstr)+length(m.sosconstr)+length(m.sdpconstr)+length(m.quadconstr)+length(d.constraints),
                "NLINCONS"=> length(m.linconstr),
                "NSOSCONS"=> length(m.sosconstr),
                "NSDPCONS"=> length(m.sdpconstr),
                "NQUADCONS" => length(m.quadconstr),
                "NNLCONS" => +length(d.constraints),
                "NAME"=> pname,
                "NLOPERANDS"=> nothing,
                "NVARS"=> m.numCols,
                "NINTVARS"=> length([i for i in m.colCat if i == :Int]),
                "NBINVARS"=> length([i for i in m.colCat if i == :Bin]))

    if injection
        warn("Meta injection is ON. Built-in meta info will be over-written!")
        !isdir("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)") && mkdir("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)")
        f = open("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json", "w")
        JSON.print(f, meta)
        close(f)
        return
    end

    return meta
end

function show_basic_dimensions(libname::AbstractString, pname::AbstractString)
    !isfile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json") && error("No meta file detected.")

    m = JSON.parsefile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
    println("$(libname) $(pname) $(m["OBJSENSE"]) $(m["NVARS"]) $(m["NBINVARS"]) $(m["NINTVARS"]) $(m["NCONS"]) $(m["NLINCONS"]) $(m["NNLCONS"]) $(m["NCONS"]-m["NLINCONS"]-m["NNLCONS"])")
    return
end

function add_to_meta(libname::AbstractString, pname::AbstractString, attributename::AbstractString, attributevalue::Any; injection::Bool=false)
    meta = JSON.parsefile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json", "w")
    meta[attributename] = attributevalue
    if injection
        warn("Meta injection is ON. Built-in meta info will be over-written!")
        rm("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
        f = open("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json", "w")
        JSON.print(f, meta)
        close(f)
        return
    end
    return meta
end

function benchmark_load(libname::AbstractString, pname::AbstractString)
	st = time()
	m = fetch_model("$(libname)/$(pname)")
	println("Load time $(libname) / $(pname) $(time()-st)")
	return
end

function convert_minlplib2_meta(pname::AbstractString)

    if !isfile("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).prop")
        show && info("No $(pname).prop found")
        return
    end

    pf = open("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).prop", "r")
    pc = Dict()

    for l in readlines(pf)
        sl = split(l, "=")
        identifier = split(sl[1])[1]
        if length(sl) > 1
            try
                pc[Symbol(identifier)] = parse(sl[2])
            catch e
                pc[Symbol(identifier)] = sl[2]
            end
        end
    end
    close(pf)

    !haskey(pc, :OBJSENSE) && info("No detection of objective sense in $(pname).prop", prefix="MINLPLibJuMP: ")
    !haskey(pc, :OBJSENSE) && return
    obj_sense = pc[:OBJSENSE]

    found = true
    i = 1
    if isfile("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).prop")
        pf = open("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).prop", "r")
        for l in readlines(pf)
            sl = split(l)
            if length(sl) > 2
                sl[1] == "OBJVALUE" && (pc[:OBJVALUE] = parse(sl[3]))
                sl[1] == "INFEASIBILITY" && (pc[:INFEASIBILITY] = parse(sl[3]))
            end
        end
        close(pf)
    else
        warn("No detection of the solution p# file $(pname)")
    end

    obj_sense == :min ? bound = -Inf : bound = +Inf
    if isfile("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).db")
        dbf = open("$(Pkg.dir())/MINLPLibJuMP/.solvedata/minlplib2/$(pname).db", "r")
        last_l = ""
        for l in readlines(dbf)
            sl = split(l)
            if length(sl) > 2 && sl[1] == "DUALBOUND"
                if obj_sense == :min
                    bound_candidate = parse(sl[3])
                    bound_candidate == :inf && (bound_candidate = Inf)
                    if bound_candidate > bound
                        bound = bound_candidate
                    end
                elseif obj_sense == :max
                    bound_candidate = parse(sl[3])
                    if bound_candidate < bound
                        bound = bound_candidate
                    end
                end
            end
            last_l = l
        end
        close(dbf)
    end

    pc[:OBJBOUND] = bound

    haskey(pc, :LIBRARY) || (pc[:LIBRARY] = "minlplib2")
    haskey(pc, :NAME) || (pc[:NAME] = pname)
    haskey(pc, :SOURCE) || (pc[:SOURCE] = "http://www.gamsworld.org/minlp/minlplib2/html/")

    f = open("$(Pkg.dir())/MINLPLibJuMP/meta/PODLib/$(pname).json", "w")
    JSON.print(f, pc)
    close(f)

    return pc
end
