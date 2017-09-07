function m3(;options=Dict())

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? solver_options=optios[:verbose] : verbose=false

	m = Model(solver=fetch_solver(options))

	# ----- Varirables ----- #
	@variable(m, objvar)
	b_Idx = Any[1, 2, 3, 4, 5, 6]
	@variable(m, b[b_Idx])
	x_Idx = Any[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27]
	@variable(m, x[x_Idx])
	setCategory(b[3], :Bin)
	setCategory(b[4], :Bin)
	setCategory(b[6], :Bin)
	setCategory(b[2], :Bin)
	setCategory(b[5], :Bin)
	setCategory(b[1], :Bin)
	setlowerbound(x[14], 2.0)
	setupperbound(x[14], 5.4772)
	setlowerbound(x[15], 3.0)
	setupperbound(x[15], 6.7081)
	setlowerbound(x[16], 3.8)
	setupperbound(x[16], 7.5498)
	setlowerbound(x[18], 1.8258)
	setupperbound(x[18], 5.0)
	setlowerbound(x[19], 2.2361)
	setupperbound(x[19], 5.0)
	setlowerbound(x[20], 2.5166)
	setupperbound(x[20], 5.0)


	# ----- Constraints ----- #
	@constraint(m, e1, objvar-6*x[10]-6*x[11]-6*x[12]-6*x[13] == 0.0)
	@constraint(m, e2, x[22]-x[23] <= 0.0)
	@constraint(m, e3, 0.5*x[14]-x[17]+x[22] <= 0.0)
	@constraint(m, e4, 0.5*x[14]-x[22] <= 0.0)
	@constraint(m, e5, 0.5*x[18]-x[21]+x[25] <= 0.0)
	@constraint(m, e6, 0.5*x[18]-x[25] <= 0.0)
	@constraint(m, e7, 0.5*x[15]-x[17]+x[23] <= 0.0)
	@constraint(m, e8, 0.5*x[15]-x[23] <= 0.0)
	@constraint(m, e9, 0.5*x[19]-x[21]+x[26] <= 0.0)
	@constraint(m, e10, 0.5*x[19]-x[26] <= 0.0)
	@constraint(m, e11, 0.5*x[16]-x[17]+x[24] <= 0.0)
	@constraint(m, e12, 0.5*x[16]-x[24] <= 0.0)
	@constraint(m, e13, 0.5*x[20]-x[21]+x[27] <= 0.0)
	@constraint(m, e14, 0.5*x[20]-x[27] <= 0.0)
	@constraint(m, e15, -x[8]+x[22]-x[23] <= 0.0)
	@constraint(m, e16, -x[8]-x[22]+x[23] <= 0.0)
	@constraint(m, e17, -x[9]+x[25]-x[26] <= 0.0)
	@constraint(m, e18, -x[9]-x[25]+x[26] <= 0.0)
	@constraint(m, e19, -10*b[1]-10*b[2]+0.5*x[14]+0.5*x[15]-x[22]+x[23] <= 0.0)
	@constraint(m, e20, -10*b[1]+10*b[2]+0.5*x[14]+0.5*x[15]+x[22]-x[23] <= 10.0)
	@constraint(m, e21, 5*b[1]-5*b[2]+0.5*x[18]+0.5*x[19]-x[25]+x[26] <= 5.0)
	@constraint(m, e22, 5*b[1]+5*b[2]+0.5*x[18]+0.5*x[19]+x[25]-x[26] <= 10.0)
	@constraint(m, e23, -x[10]+x[22]-x[24] <= 0.0)
	@constraint(m, e24, -x[10]-x[22]+x[24] <= 0.0)
	@constraint(m, e25, -x[11]+x[25]-x[27] <= 0.0)
	@constraint(m, e26, -x[11]-x[25]+x[27] <= 0.0)
	@constraint(m, e27, -10*b[3]-10*b[4]+0.5*x[14]+0.5*x[16]-x[22]+x[24] <= 0.0)
	@constraint(m, e28, -10*b[3]+10*b[4]+0.5*x[14]+0.5*x[16]+x[22]-x[24] <= 10.0)
	@constraint(m, e29, 5*b[3]-5*b[4]+0.5*x[18]+0.5*x[20]-x[25]+x[27] <= 5.0)
	@constraint(m, e30, 5*b[3]+5*b[4]+0.5*x[18]+0.5*x[20]+x[25]-x[27] <= 10.0)
	@constraint(m, e31, -x[12]+x[23]-x[24] <= 0.0)
	@constraint(m, e32, -x[12]-x[23]+x[24] <= 0.0)
	@constraint(m, e33, -x[13]+x[26]-x[27] <= 0.0)
	@constraint(m, e34, -x[13]-x[26]+x[27] <= 0.0)
	@constraint(m, e35, -10*b[5]-10*b[6]+0.5*x[15]+0.5*x[16]-x[23]+x[24] <= 0.0)
	@constraint(m, e36, -10*b[5]+10*b[6]+0.5*x[15]+0.5*x[16]+x[23]-x[24] <= 10.0)
	@constraint(m, e37, 5*b[5]-5*b[6]+0.5*x[19]+0.5*x[20]-x[26]+x[27] <= 5.0)
	@constraint(m, e38, 5*b[5]+5*b[6]+0.5*x[19]+0.5*x[20]+x[26]-x[27] <= 10.0)
	@NLconstraint(m, e39, 10/x[14]-x[18] <= 0.0)
	@NLconstraint(m, e40, 10/x[18]-x[14] <= 0.0)
	@NLconstraint(m, e41, 15/x[15]-x[19] <= 0.0)
	@NLconstraint(m, e42, 15/x[19]-x[15] <= 0.0)
	@NLconstraint(m, e43, 19/x[16]-x[20] <= 0.0)
	@NLconstraint(m, e44, 19/x[20]-x[16] <= 0.0)


	# ----- Objective ----- #
	@objective(m, Min, objvar)
	verbose && print(m)
	return m
end


# ----- END ----- #
