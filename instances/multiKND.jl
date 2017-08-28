function multiKND(;verbose=false,
				  exprmode=1, N=1, K=2, kwargs...)

	m=Model(solver=fetch_solver(options=Dict(kwargs)))

	M = K+(K-D)*(N-1)
	srand(100)
	isa(randomub, Int) ? @variable(m, 0.1<=x[1:M]<=randomub) : @variable(m, 0.1<=x[1:M]<=rand()*100)
	@NLobjective(m, Max, sum(prod(x[i+k] for k in 0:(K-1)) for i in 1:(K-D):(M-D)))
	@constraint(m, [i in 1:(K-D):(M-D)], sum(x[i+k] for k in 0:(K-1)) <= K)

	verbose && print(m)

	return m
end
