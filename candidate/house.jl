function house(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Variables ----- #
	@variable(m, objvar)
	x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
	@variable(m, x[x_Idx])
	setlowerbound(x[4], 40.0)
	setupperbound(x[4], 68.0)
	setlowerbound(x[6], 56.0)
	setupperbound(x[6], 100.0)
	setupperbound(x[7], 3000.0)


	# ----- Constraints ----- #
	@constraint(m, e1, -(x[1]*x[2]+x[5]*x[4])+x[7] == 0.0)
	@constraint(m, e2, -x[1]*x[3]+x[8] == 0.0)
	@constraint(m, e3, -x[7]-x[8]-objvar == 0.0)
	@constraint(m, e4, -x[2]-x[5]+x[6] == 0.0)
	@constraint(m, e5, x[1]-0.333333333333333*x[4] >= 0.0)
	@constraint(m, e6, x[1]-0.5*x[4] <= 0.0)
	@constraint(m, e7, x[2]*(x[4]-x[1]) >= 1500.0)
	@constraint(m, e8, -0.5*x[2]+x[3]-x[5] == 0.0)
	@constraint(m, e9, -0.5*x[2]+x[5] >= 0.0)


	# ----- Objective ----- #
	@objective(m, Min, objvar)
	verbose && print(m)
	return m
end


# ----- END ----- #