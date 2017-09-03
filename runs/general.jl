function run(instance="nlp3"; hpc_type="local", submit=false, expname="benchmark",options=Dict(), hpc_options=Dict())

    if isa(instance, AbstractString)
        println("Running instance $(instance)")
        jobname = run_one(instance, hpc_type, submit, expname, options, hpc_options)
        store_history(expname, hpc_type, instance, options, hpc_options, jobname)
    else
        println("Running instance $(instance)")
        jobnames = Dict()
        for i in instances
            jobnames[i] = run_one(i, hpc_type, submit, expname, options, hpc_options)
        end
        store_history(expname, hpc_type, i, options, hpc_options, jobnames)
    end

    return
end

function run_one(instance::AbstractString, hpc_type, submit, expname, options, hpc_options)

    if hpc_type == "local"
        m = eval(parse(instance))(options=options)
        solve(m)
        jobname = hash(rand())
    elseif hpc_type in ["slurm","pbs"]
        jobname = write_basic_jl(instance, expname, options)
        submit && write_basic_sh(expname, jobname, hpc_type, hpc_options)
        submit && submit_to_hpc(hpc_type, jobname, expname)
    end

    return jobname
end
