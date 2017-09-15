using POD_experiment, Gurobi, Ipopt, AmplNLWriter, Pajarito, CoinOptServices

PODe.run("nlp2", expname="demo",
    options=Dict(:verbose=>true,
     :solver_options=>Dict(#:minlp_local_solver => PajaritoSolver(mip_solver=GurobiSolver(OutputFlag=0), cont_solver=IpoptSolver(print_level=0)),
                           :minlp_local_solver => BonminNLSolver(["bonmin.num_resolve_at_node=1","bonmin.time_limit=20"]),
                           :nlp_local_solver => IpoptSolver(print_level=0),
                           :mip_solver => GurobiSolver(OutputFlag=0),
                           :colorful_pod => "warmer",
                           :discretization_var_pick_algo => 0,
                           :discretization_var_level => 0.5,
                           :discretization_var_minimum => 1,
                           :disc_ratio_branch => true,
                           :disc_ratio_branch_timeout => 0.2,
                           :delta => 8)
   )
)
