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
