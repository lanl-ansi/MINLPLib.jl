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
    p = eval(parse(instance))(fetch_solver, options=options)
    info("Finish loading problem $(instance)", prefix="PODe: ")
    solve(p)
    jobname = hash(rand())

    return jobname, p
end
