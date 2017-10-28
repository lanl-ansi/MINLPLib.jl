using POD_experiment, Gurobi, Ipopt

podm = PODe.run("multiKND", expname="demo_prob",
   options=Dict(:verbose=>true,
                 :K=>3, :N=>3, :D=>1,
                 :solver_options=>:nlp_local_solver => IpoptSolver(print_level=0),
                                  :mip_solver => GurobiSolver(OutputFlag=0),
                                  :log_level => 1)
   )
)
