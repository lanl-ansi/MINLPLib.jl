function ORL_FORMULATION(;hpc_type="slurm", no_submit=false, just_one=false,
                         solver_options=Dict(), hpc_options=Dict())

    expname = "multiKN_formulation"
    probname = "multiKN"

    # Specialized Loops
    naming = Dict("sos2"=>"sos2", "facet"=>"facet", "sos2"=>"minib", "sos2_alter"=>"auxv")
    Fgroup = ["sos2", "facet", "minib", "sos2b"]
    Kgroup = [2, 3, 4]
    Ngroup = Dict(2=>[16,15,14],3=>[8,7,6],4=>[4,3,2])
    Pgroup = Dict(2=>[2:2:30;],3=>[2:2:16;],4=>[2:2:14;])

    store_history(expname, hpc_type, ["multiKN"], solver_options, hpc_options,
                    Fgroup=Fgroup, Kgroup=Kgroup, Ngroup=Ngroup, Pgroup=Pgroup)

    cnt = 0
    for f in Fgroup
    for k in Kgroup
    for n in Ngroup[k]
    for p in Pgroup[k]
        jobname = write_basic_jl(probname, expname,
                                 merge(solver_options,Dict("K"=>k,"N"=>n,"uniform"=>p,f=>true)))
        write_basic_sh(expname, jobname, hpc_type, hpc_options)
        !no_submit && submit_to_hpc(hpc_type, jobname, expname)
        cnt += 1
    end
    end
    end
    end

    println("Total cnt $(cnt)")
    return
end
