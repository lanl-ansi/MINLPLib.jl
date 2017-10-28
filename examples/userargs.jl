using POD_experiment, Gurobi, Ipopt, AmplNLWriter, CoinOptServices

pode_m = PODe.run(ARGS[1], expname="userargs",
    options=Dict(:verbose=>true, :K=>parse(ARGS[2]), :N=>parse(ARGS[3]), :D=>parse(ARGS[4]),
                 :solver_options=>Dict(:nlp_local_solver => IpoptSolver(print_level=0),
                                       :mip_solver => GurobiSolver(OutputFlag=1),
                                       :colorful_pod => "warmer",
                                       :bound_basic_propagation => true,
                                       :discretization_var_pick_algo => 0,
                                       :log_level => 1,
                                       :delta => 12)
   )
)
