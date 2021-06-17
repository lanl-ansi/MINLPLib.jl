function fetch_model(instance::AbstractString;options::Dict=Dict())

    pname = replace(splitdir(instance)[end], Pair(".jl", ""))
    nakeinstance = replace(instance, Pair(".jl", ""))

    if "$(pname).jl" in special_instances
        m = getfield(MINLPLib, Symbol(pname))(options=options)
    elseif isfile(joinpath(minlplib_dir, "instances", "$(nakeinstance).jl"))
        m = include(joinpath(minlplib_dir, "instances", "$(nakeinstance).jl"))
    else
        @warn "No instances detected..."
        return nothing
    end

    return m
end

fetch_model(libname::AbstractString, pname::AbstractString; options::Dict=Dict()) = fetch_model(joinpath(libname,pname); options=options)

function fetch_meta(instance::AbstractString)

    if !isfile(joinpath(minlplib_dir, "meta", "$(instance).json"))
        @warn "No meta information for $(instance) found"
        return Dict()
    end

    m = JSON.parsefile(joinpath(minlplib_dir, "meta", "$(instance).json"))

    if haskey(m, "INTERNALLINK")
        sourcelib = m["INTERNALLINK"]
        isempty(sourcelib) && return Dict()
        pname = splitdir(instance)[end]
        return JSON.parsefile(joinpath(minlplib_dir, "meta", sourcelib, "$(pname).json"))
    end

    return m
end

fetch_meta(libname::AbstractString, pname::AbstractString) = fetch_meta(joinpath(libname,pname))

function fetch_names(libname::AbstractString; postfix=false)

    !isdir(joinpath(minlplib_dir, "instances", libname)) && error("Library $(libname) does not exist.")

    nraw = readdir(joinpath(minlplib_dir, "instances", libname))
    nlist = []
    inactive = 0
    postfix && return nlist
    for i in 1:length(nraw)
        if !(nraw[i][1] in ['_', '#']) && !(nraw[i] == "README.md")
            postfix ? push!(nlist, nraw[i]) : push!(nlist, replace(nraw[i], Pair(r".tar.gz|.jl", "")))
        else
            inactive += 1
        end
    end
    return nlist
end

function fetch_lib_names()
    libs = readdir(joinpath(minlplib_dir, "instances"))
    return [i for i in libs if i != "special"]
end

function show_basic_dimensions(libname::AbstractString, pname::AbstractString)

    !isfile("$(minlplib_dir)/meta/$(libname)/$(pname).json") && error("No meta file detected...")

    m = JSON.parsefile("$(minlplib_dir)/meta/$(libname)/$(pname).json")
	println("$(libname) $(pname) $(m["LOAD"]) $(m["OBJSENSE"]) $(m["NVARS"]) $(m["NBINVARS"]) $(m["NINTVARS"]) $(m["NCONS"]) $(m["NLINCONS"]) $(m["NNLCONS"]) $(m["NCONS"]-m["NLINCONS"]-m["NNLCONS"])")
    return
end

function add_to_meta(libname::AbstractString, pname::AbstractString, attributename::AbstractString, attributevalue::Any; injection::Bool=false)

    jlf_path = "$(minlplib_dir)/instances/$(libname)/$(pname).jl"

    if !isfile(jlf_path)
        error("No problem $(libname)/$(pname) detected...")
    end

    # Even with the instance file, meta file can still be missing
    if !isfile("$(minlplib_dir)/meta/$(libname)/$(pname).json")
        meta = Dict()
    else
        meta = JSON.parsefile("$(minlplib_dir)/meta/$(libname)/$(pname).json")
    end
    meta[attributename] = attributevalue
    if injection
        @warn "Meta injection is ON. Built-in meta info will be over-written!"
        isfile("$(minlplib_dir)/meta/$(libname)/$(pname).json") && rm("$(minlplib_dir)/meta/$(libname)/$(pname).json")
        f = open("$(minlplib_dir)/meta/$(libname)/$(pname).json", "w")
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

    pname = replace(splitdir(instance)[end], Pair(".jl", ""))
    isempty(pname) && error("Issue recognizing instance name from string $(instance)...")

    # First check if there is actually the library
    if !isdir(joinpath(minlplib_dir, "instances", tolib))
        @info "Initializing user-library $(tolib)..."
        mkdir(joinpath(minlplib_dir, "instances", tolib))
        mkdir(joinpath(minlplib_dir, "meta", tolib))
    end

    # Then check is the intaking lib is already there.
    if isfile(joinpath(minlplib_dir, "instances", tolib, "$(pname).jl"))
        @warn "Instance $(pname) already exist in in-take library $(tolib). Not doing anything..."
        return
    end

    # Check if the source instance exist or not
    if !isfile(joinpath(minlplib_dir, "instances", fromlib, "$(pname).jl"))
        @warn "Instance $(pname) is not detected in library $(fromlib). Not doing anything..."
        return
    end

    # Check if the source meta exist or not
    nometa = false
    if !isfile(joinpath(minlplib_dir, "meta", fromlib, "$(pname).json"))
        @warn "Instance $(pname) meta info missing in library $(fromlib). Carry on without meta info..."
        nometa = true
    end

    # Adding the instance
    f = open(joinpath(minlplib_dir, "instances", tolib, "$(pname).jl"), "w")
    write(f, "include(joinpath(raw\"$(minlplib_dir)\",\"instances\",\"$(fromlib)\", \"$(pname).jl\"))")
    close(f)
    println("Successfully added instance $(fromlib)/$(pname) to library $(tolib)...")

    if !nometa
        desjson = joinpath(minlplib_dir, "meta", tolib, "$(pname).json")
        df = open(desjson, "w")
        md = Dict("INTERNALLINK"=>fromlib)
        JSON.print(df, md)
        close(df)
    end

    return
end

function remove_from_lib(libname::AbstractString, pname::AbstractString)

    # Library protection
    if libname in PROTECTED_LIBS
        error("Cannot remote instances from protected libraries $(libname)")
        return
    end

    # Finding instance
    if !isfile(joinpath(minlplib_dir, "instances",libname, "$(pname).jl"))
        @warn "No instances detected to remote."
        return
    end

    nometa = false
    if !isfile(joinpath(minlplib_dir, "meta", libname, "$(pname).json"))
        @warn "No meta detected to remote."
        nometa = true
    end

    # Removing instance
    @warn "Removing instance $(pname) from library $(libname)"
    rm(joinpath(minlplib_dir, "instances", libname, "$(pname).jl"))
    nometa || rm(joinpath(minlplib_dir, "meta", libname, "$(pname).json"))

    return
end

function clean_lib_meta(libname::AbstractString)

    names = fetch_names(libname)
    metas = Glob.glob("*.json", joinpath(minlplib_dir, "meta", libname))

    for i in metas
        n = replace(splitdir(i)[end], Pair(".json", ""))
        n in names || rm(joinpath(minlplib_dir, "meta", libname, "$(n).json",))
        @info "Cleaning $(n).json meta from library $(libname)"
    end

    return
end

function reconstruct_link_meta(libname::AbstractString)

    if libname in PROTECTED_LIBS
        @warn "Meta info cannot be reconstructed in this library since it is protected. Finishing..."
        return
    end

    names = fetch_names(libname)
    for i in names
        pf = open(joinpath(minlplib_dir, "instances", libname, "$(i).jl"), "r")
        content = readline(pf)
        sourcelib = ""
        for j in PROTECTED_LIBS
            if contains(content, j)
                sourcelib = j
            end
        end
        close(pf)
        meta = Dict("INTERNALLINK"=>sourcelib)
        pf = open(joinpath(minlplib_dir, "meta", libname, "$(i).json"), "w")
        JSON.print(pf, meta)
        close(pf)
    end

    return
end

function convert_minlplib2_meta(pname::AbstractString; outputpath="")

    if !isfile("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).prop")
        show && @info "No $(pname).prop found"
        return
    end

    pf = open("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).prop", "r")
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

    !haskey(pc, :OBJSENSE) && @info "No detection of objective sense in $(pname).prop"
    !haskey(pc, :OBJSENSE) && return
    obj_sense = pc[:OBJSENSE]

    found = true
    i = 1
    if isfile("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).prop")
        pf = open("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).prop", "r")
        for l in readlines(pf)
            sl = split(l)
            if length(sl) > 2
                sl[1] == "OBJVALUE" && (pc[:OBJVALUE] = parse(sl[3]))
                sl[1] == "INFEASIBILITY" && (pc[:INFEASIBILITY] = parse(sl[3]))
            end
        end
        close(pf)
    else
        @warn "No detection of the solution p# file $(pname)"
    end

    obj_sense == :min ? bound = -Inf : bound = +Inf
    if isfile("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).db")
        dbf = open("$minlplib_dir/MINLPLib/.solvedata/minlplib2/$(pname).db", "r")
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
        f = open("$minlplib_dir/MINLPLib/meta/PODLib/$(pname).json", "w")
    else
        f = open(outputpath, "w")
    end

    JSON.print(f, pc)
    close(f)

    return pc
end


# function build_basic_meta(libname::AbstractString, pname::AbstractString; injection::Bool=false)

# 	st = time()
#     m = fetch_model(libname, pname)
# 	lt = time() - st

#     d = JuMP.NLPEvaluator(m)
#     MathProgBase.initialize(d, [:Grad, :Jac, :HessVec, :Hess, :ExprGraph])

#     meta = Dict("OBJTYPE"=> d.has_nlobj ? "nonlinear" : "linear",
#                 "LIBRARY"=> libname,
#                 "OBJSENSE"=> m.objSense,
#                 "OBJVAL" => m.objSense == :Max ? -Inf : Inf,
#                 "OBJBOUND"=> m.objSense == :Max ? Inf : -Inf,
#                 "NCONS"=> length(m.linconstr)+length(m.sosconstr)+length(m.sdpconstr)+length(m.quadconstr)+length(d.constraints),
#                 "NLINCONS"=> length(m.linconstr),
#                 "NSOSCONS"=> length(m.sosconstr),
#                 "NSDPCONS"=> length(m.sdpconstr),
#                 "NQUADCONS" => length(m.quadconstr),
#                 "NNLCONS" => length(d.constraints),
#                 "NAME"=> pname,
#                 "NLOPERANDS"=> [],  # TODO: introduce the expression sweeper here
#                 "NVARS"=> m.numCols,
#                 "NINTVARS"=> length([i for i in m.colCat if i == :Int]),
#                 "NBINVARS"=> length([i for i in m.colCat if i == :Bin]),
# 				"LOAD"=>lt)

#     if injection
#         @warn "Meta injection is ON. Built-in meta info will be over-written!"
#         !isdir(joinpath(minlplib_dir, "meta", libname)) && mkdir(joinpath(minlplib_dir, "meta", libname))
#         f = open(joinpath(minlplib_dir, "meta", libname, "$(pname).json"), "w")
#         JSON.print(f, meta)
#         close(f)
#         return
#     end

#     return meta
# end