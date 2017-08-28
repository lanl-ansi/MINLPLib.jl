function BENCHMARK(;hpc_type="slurm", no_submit=false, just_one=false, expname="benchmark",
                    instances=[], solver_options=Dict(), hpc_options=Dict())

    store_history(expname, hpc_type, instances, solver_options, hpc_options)

    cnt = 0
    for i in instances
        jobname = write_basic_jl(i, expname, solver_options)
        write_basic_sh(expname, jobname, hpc_type, hpc_options)
        !no_submit && submit_to_hpc(hpc_type, jobname, expname)
        cnt += 1
    end

    println("Total cnt $(cnt)")
    return
end
