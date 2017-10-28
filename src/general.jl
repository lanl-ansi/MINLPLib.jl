function run(instance="nlp3"; hpc_type="local", submit=false, expname="benchmark",options=Dict(), hpc_options=Dict())
    if isa(instance, AbstractString)
        println("Running instance $(instance)")
        jobname, m = run_one(instance, hpc_type, submit, expname, options, hpc_options)
        store_history(expname, hpc_type, instance, options, hpc_options, jobname)
    else
        println("Running instance $(instance)")
        jobnames = Dict()
        for i in instances
            jobnames[i] = run_one(i, hpc_type, submit, expname, options, hpc_options)
        end
        m = nothing
        store_history(expname, hpc_type, i, options, hpc_options, jobnames)
    end

    return m
end

function run_one(instance::AbstractString, hpc_type, submit, expname, options, hpc_options)

    info("Start loading problem $(instance)", prefix="PODe: ")
    st = time()
    if instance in special_instances
        m = eval(parse(instance))(fetch_solver, options=options)
    else
        m = include("$(Pkg.dir())/POD_experiment/Instances/$(instance).jl")
        haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
        haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false
        verbose && print(m)
        setsolver(m, fetch_solver(solver_options))
    end
    info("Finish loading problem $(instance) in $(time()-st) seconds", prefix="PODe: ")

    jobname = randstring(srand(Int(round(time()))), 10)
    info("Job identification ID = $(jobname)", prefix="PODe: ")

    solve(m)

    info("Job $(jobname) Finished", prefix="PODe: ")
    return jobname, m
end
