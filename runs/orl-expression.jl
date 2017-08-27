function ORL_EXPRESSION(hpc_type="slurm", no_submit=false, just_one=false, expname="multiKN_expression")

    # Specialized Loops
    naming = Dict("sos2"=>"sos2", "facet"=>"facet", "sos2"=>"minib")
    Fgroup = ["sos2"]
    Kgroup = [3,4]
    Exprgroup = {3:[1,2,3], 4:[1,2,3,4,5,6,7,8,9,10,11]}
    Ngroup = {3:range(2,5), 4:range(2,5)}
    Pgroup = {3:range(2,32,2), 4:range(2,32,2)}

    cnt = 0
    for f in Fgroup
    for k in Kgroup
    for ex in Exprgroup[k]
    for n in Ngroup[k]
    for p in Pgroup[k]
        jobname = write_jl_script(Dict("K"=>k,
                                        "N"=>n,
                                        "exprmode"=>ex,
                                        "uniform"=>p,
                                        f=>true)
        if hpc_type == "slurm"
            batchf = open("shs/$(jobname).sh", "w")
            batchf = write_slurm_head(batchf, jobname, expname)
        elseif hpc_type == "pbs"
            batchf = open("shs/$(jobname).pbs", "w")
            batchf = write_pbs_head(batchf, jobname, expname)
        end
        batchf.write("julia $(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jobname).jl\n")
        batchf.close()
        submit_to_hpc(hpc_type, jobname, expname)
        cnt += 1
    end
    end
    end
    end
    end

    println("Total cnt $(cnt)")
    return
end
