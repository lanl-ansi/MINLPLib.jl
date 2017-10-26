function dispatch(fetch_solver::Function; options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Variables ----- #
	@variable(m, objvar)
	x_Idx = Any[1, 2, 3, 4]
	@variable(m, x[x_Idx])
	setlowerbound(x[1], 50.0)
	setupperbound(x[1], 200.0)
	setlowerbound(x[2], 37.5)
	setupperbound(x[2], 150.0)
	setlowerbound(x[3], 45.0)
	setupperbound(x[3], 180.0)


	# ----- Constraints ----- #
	@constraint(m, e1, -(0.00533* (x[1])^2+11.669*x[1]+0.00889* (x[2])^2+10.333*x[2]+0.00741* (x[3])^2+10.833*x[3])+objvar == 653.1)
	@constraint(m, e2, -(0.01*(0.0676*x[1]*x[1]+0.00953*x[1]*x[2]-0.00507*x[1]*x[3]+0.00953*x[2]*x[1]+0.0521*x[2]*x[2]+0.00901*x[2]*x[3]-0.00507*x[3]*x[1]+0.00901*x[3]*x[2]+0.0294*x[3]*x[3])-0.000766*x[1]-3.42e-5*x[2]+0.000189*x[3])+x[4] == 0.040357)
	@NLconstraint(m, e3, x[1]+x[2]+x[3]-x[4] >= 210.0)


	# ----- Objective ----- #
	@objective(m, Min, objvar)
	verbose && print(m)
	return m
end
