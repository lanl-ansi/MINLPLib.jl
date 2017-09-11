using POD_experiment, Gurobi, Ipopt, AmplNLWriter, Pajarito

for drb in [0.1, 0.2, 0.3, 0.4]
    PODe.run("nlp3", expname="demo",
        options=Dict(:verbose=>true,
                     :solver_options=>Dict(:mip_solver => GurobiSolver(OutputFlag=0),
                                           :nlp_local_solver => IpoptSolver(print_level=0),
                                           :disc_ratio_branch => true,
                                           :disc_ratio_branch_timeout => drb,
                                           :delta => 8)
       )
    )
end
