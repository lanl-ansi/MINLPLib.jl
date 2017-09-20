using JuMP
function circleN(;verbose=false, N=2, kwargs...)

	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false
	haskey(options, :N) ? N=options[:N] : N=2

    m = Model(solver=fetch_solver(solver_options))

    @variable(m, 0<=x[1:N]<=N)
    @NLconstraint(m, sum(x[i]^2 for i in 1:N) >= N)
    @objective(m, Min, sum(x))

	if verbose
		print(m)
	end

	return m
end
