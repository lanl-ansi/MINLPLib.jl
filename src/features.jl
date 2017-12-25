function fetch_model(instance::AbstractString;options::Dict=Dict())

    pname = replace(splitdir(instance)[end], ".jl", "")
    nakeinstance = replace(instance, ".jl", "")

    if "$(pname).jl" in special_instances
        m = eval(parse(pname))(options=options)
    elseif isfile(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", "$(nakeinstance).jl"))
        m = include(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", "$(nakeinstance).jl"))
    else
        warn("No instances detected...")
        return nothing
    end

    return m
end

fetch_model(libname::AbstractString, pname::AbstractString; options::Dict=Dict()) = fetch_model(joinpath(libname,pname); options=options)

function fetch_meta(instance::AbstractString)
    if !isfile("$(Pkg.dir())/MINLPLibJuMP/meta/$(instance).json")
        warn("No meta information for $(instance) found")
        return Dict()
    end
    m = JSON.parsefile("$(Pkg.dir())/MINLPLibJuMP/meta/$(instance).json")

    return m
end

fetch_meta(libname::AbstractString, pname::AbstractString) = fetch_meta(joinpath(libname,pname))

function fetch_names(libname::AbstractString; postfix=false)
    !isdir("$(Pkg.dir())/MINLPLibJuMP/instances/$(libname)") && error("Library $(libname) does not exist.")
    nraw = readdir("$(Pkg.dir())/MINLPLibJuMP/instances/$(libname)")
    nlist = []
    inactive = 0
    postfix && return nlist
    for i in 1:length(nraw)
        if !(nraw[i][1] in ['_', '#']) && !(nraw[i] == "README.md")
            postfix ? push!(nlist, nraw[i]) : push!(nlist, replace(nraw[i], r".tar.gz|.jl", ""))
        else
            inactive += 1
        end
    end
    return nlist
end

function fetch_lib_names()
    libs = readdir("$(Pkg.dir("MINLPLibJuMP"))/instances")
    return [i for i in libs if i != "special"]
end

function build_basic_meta(libname::AbstractString, pname::AbstractString; injection::Bool=false)

	st = time()
    m = fetch_model(libname, pname)
	lt = time() - st

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
                "NNLCONS" => length(d.constraints),
                "NAME"=> pname,
                "NLOPERANDS"=> [],  # TODO: introduce the expression sweeper here
                "NVARS"=> m.numCols,
                "NINTVARS"=> length([i for i in m.colCat if i == :Int]),
                "NBINVARS"=> length([i for i in m.colCat if i == :Bin]),
				"LOAD"=>lt)

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

    !isfile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json") && error("No meta file detected...")

    m = JSON.parsefile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
	println("$(libname) $(pname) $(m["LOAD"]) $(m["OBJSENSE"]) $(m["NVARS"]) $(m["NBINVARS"]) $(m["NINTVARS"]) $(m["NCONS"]) $(m["NLINCONS"]) $(m["NNLCONS"]) $(m["NCONS"]-m["NLINCONS"]-m["NNLCONS"])")
    return
end

function add_to_meta(libname::AbstractString, pname::AbstractString, attributename::AbstractString, attributevalue::Any; injection::Bool=false)

    tarf_path = "$(Pkg.dir("MINLPLibJuMP"))/instances/$(libname)/$(pname).tar.gz"
    jlf_path = "$(Pkg.dir("MINLPLibJuMP"))/instances/$(libname)/$(pname).jl"

    if !isfile(tarf_path) && !isfile(jlf_path)
        error("No problem $(libname)/$(pname) detected...")
    end

    # Even with the instance file, meta file can still be missing
    if !isfile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
        meta = Dict()
    else
        meta = JSON.parsefile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
    end
    meta[attributename] = attributevalue
    if injection
        warn("Meta injection is ON. Built-in meta info will be over-written!")
        isfile("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json") && rm("$(Pkg.dir("MINLPLibJuMP"))/meta/$(libname)/$(pname).json")
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

function add_to_lib(tolib::AbstractString, fromlib::AbstractString, instance::AbstractString; copyall=false, override=false)

    if !override
        tolib in PROTECTED_LIBS && error("In-take library is protected by package. Use override=true to change it.")
    end

    pname = replace(splitdir(instance)[end], ".jl", "")
    isempty(pname) && error("Issue recognizing instance name from string $(instance)...")

    # First check if there is actually the library
    if !isdir(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", tolib))
        warn("Building user-library $(tolib)...")
        mkdir(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", tolib))
    end

    # Then check is the intaking lib is already there.
    if isfile(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", tolib, "$(pname).jl"))
        warn("Instance $(pname) already exist in in-take library $(tolib). Not doing anything...")
        return
    end

    # Check if the source instance exist or not
    if !isfile(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", fromlib, "$(pname).jl"))
        warn("Instance $(pname) not detected in library $(fromlib). Not doing anything...")
        return
    end

    # Adding the instance
    f = open(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", tolib, "$(pname).jl"), "w")
    write(f, "include(joinpath(Pkg.dir(\"MINLPLibJuMP\"),\"instances\",\"$(fromlib)\", \"$(pname).jl\"))")
    close(f)
    println("Successfully added instance $(fromlib)/$(pname) to library $(tolib)...")

    return
end

function remove_from_lib(libname::AbstractString, pname::AbstractString)

    # Library protection
    if libname in PROTECTED_LIBS
        error("Cannot remote instances from protected libraries $(libname)")
        return
    end

    # Finding instance
    if !isfile(joinpath(Pkg.dir("MINLPLibJuMP"), "instances",libname, "$(pname).jl"))
        warn("No instances detected to remote.")
        return
    end

    # Removing instance
    warn("Removing instance $(pname) from library $(libname)")
    rm(joinpath(Pkg.dir("MINLPLibJuMP"), "instances", libname, "$(pname).jl"))

    return
end

function convert_minlplib2_meta(pname::AbstractString; outputpath="")

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

    if isempty(outputpath)
        f = open("$(Pkg.dir())/MINLPLibJuMP/meta/PODLib/$(pname).json", "w")
    else
        f = open(outputpath, "w")
    end

    JSON.print(f, pc)
    close(f)

    return pc
end
