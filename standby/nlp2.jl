function nlp2(fetch_solver::Function; options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

	@variable(m, -500<=x[1:2]<=500)

	@NLobjective(m, Min, sum((x[i]^2 - i)^2 for i in 1:2))

	if verbose
		print(m)
	end

	return m
end
