function POD_ORL_FORMULATION(hpc_type="slurm", no_submit=false, just_one=false)

    expname = "multiKN_formulation"

    # Specialized Loops
    naming = Dict("sos2"=>"sos2", "facet"=>"facet", "sos2"=>"minib", "sos2_alter"=>"auxv")
    Fgroup = ["sos2", "facet", "minib", "sos2b"]
    Kgroup = [2, 3, 4]
    Ngroup = {2:[16,15,14],3:[8,7,6],4:[4,3,2]}
    Pgroup = {2:range(2,32,2),3:range(2,16,2),4:range(2,14,2)}

    cnt = 0
    for f in Fgroup
    for k in Kgroup
    for n in Ngroup[k]
    for p in Pgroup[k]
        jobname = write_jl_script(Dict("K"=>k,
                                        "N"=>n,
                                        "uniform"=>p,
                                        f=>true)
        if hpc_type == "slurm"
            batchf = open("shs/{0}.sh".format(jobname), 'w')
            batchf = write_slurm_head(batchf, jobname, expname)
        elseif hpc_type == "pbs"
            batchf = open("shs/{0}.pbs".format(jobname), 'w')
            batchf = write_pbs_head(batchf, jobname, expname)
        end
        batchf.write("julia $(Pkg.dir())/POD_experiment/.jls/$(jobname).jl\n")
        batchf.close()
        submit_to_hpc(hpc_type, jobname)
        cnt += 1
    end
    end
    end
    end

    println("Total cnt $(cnt)")
    return
end
