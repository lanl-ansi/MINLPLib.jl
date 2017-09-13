using POD_experiment, Gurobi, Ipopt, AmplNLWriter, Pajarito

for i in 10:20
    PODe.run("simplebi", expname="demo",
        options=Dict(:verbose=>true,
                     :solver_options=>Dict(:mip_solver => GurobiSolver(OutputFlag=1),
                                           :nlp_local_solver => IpoptSolver(print_level=0),
                                           :discretization_uniform_rate => i)
       )
    )
end
