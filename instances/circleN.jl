function circleN(;verbose=false, N=2, kwargs...)

	m = Model(solver=fetch_solver(options=Dict(kwargs)))

    @variable(m, 0<=x[1:N]<=N)
    @NLconstraint(m, sum(x[i]^2 for i in 1:N) >= N)
    @objective(m, Min, sum(x))

	if verbose
		print(m)
	end

	return m
end
