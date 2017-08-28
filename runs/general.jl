function BENCHMARK(;hpc_type="slurm", no_submit=false, just_one=false, expname="benchmark", instances=[])

    expname = "multiKN_expression"
    PGroup = [0, 1, 2]

    cnt = 0
    for i in instances
        for p in PGroup
            jobname = write_basic_jl(i, expname,
                                     Dict("presolve"=>p, ))
            write_basic_sh(expname, jobname, hpc_type)
            !no_submit && submit_to_hpc(hpc_type, jobname, expname)
            cnt += 1
        end
    end

    println("Total cnt $(cnt)")

    return
end
