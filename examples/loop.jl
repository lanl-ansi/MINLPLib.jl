using POD_experiment, Gurobi, Ipopt, AmplNLWriter, Pajarito

for i in 2:5
    PODe.run("multiKND", expname="demo_loop_$(i)",
       options=Dict(:verbose=>true,
                     :K=>3, :N=>i, :D=>1,
                     :solver_options=>:nlp_local_solver => IpoptSolver(print_level=0),
                                      :mip_solver => GurobiSolver(OutputFlag=0),
                                      :log_level => 1)
       )
    )
end
