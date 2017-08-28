function ORL_EXPRESSION(;hpc_type="slurm", no_submit=false, just_one=false, expname="multiKN_expression")

    expname = "multiKN_expression"
    probname = "multiKN"

    # Specialized Loops
    naming = Dict("sos2"=>"sos2", "facet"=>"facet", "sos2"=>"minib")
    Fgroup = ["sos2"]
    Kgroup = [3,4]
    Exprgroup = Dict(3=>[1,2,3], 4=>[1,2,3,4,5,6,7,8,9,10,11])
    Ngroup = Dict(3=>[2:4;], 4=>[2:4;])
    Pgroup = Dict(3=>[2:2:24;], 4=>[2:2:24;])

    cnt = 0
    for f in Fgroup
    for k in Kgroup
    for ex in Exprgroup[k]
    for n in Ngroup[k]
    for p in Pgroup[k]
        jobname = write_basic_jl("multi$(k)N", expname,
                                 Dict("K"=>k,"N"=>n,"exprmode"=>ex,"uniform"=>p,f=>true))
        write_basic_sh(expname, jobname, hpc_type)
        !no_submit && submit_to_hpc(hpc_type, jobname, expname)
        cnt += 1
    end
    end
    end
    end
    end

    println("Total cnt $(cnt)")
    return
end
