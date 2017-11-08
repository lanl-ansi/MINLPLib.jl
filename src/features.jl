function fetch_model(instance::AbstractString, options)

    info("Start loading problem $(instance)")
    st = time()
    if instance in special_instances
        m = eval(parse(instance))(fetch_solver, options=options)
    else
        m = include("$(Pkg.dir())/POD_experiment/instances/$(instance).jl")
    end
    info("Finish loading problem $(instance) in $(time()-st) seconds")

    return m
end
