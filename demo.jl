using POD_experiment, Gurobi, CPLEX, Ipopt, AmplNLWriter, Pajarito

PODe.run("nlp3", expname="demo",
            options=Dict(:verbose=>true,
                         :solver_options=>Dict(:mip_solver=>CplexSolver(CPX_PARAM_SCRIND=0),
                                              #:mip_solver=>GurobiSolver(OutputFlag=1),
                                              :delta=>8)
                        )
        )
