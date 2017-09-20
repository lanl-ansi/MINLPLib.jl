function multiKND(;options=Dict())

	haskey(options, :exprmode) ? exprmode=options[:exprmode] : exprmode=1
	haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
	haskey(options, :N) ? N=options[:N] : N=1
	haskey(options, :K) ? K=options[:K] : K=1
	haskey(options, :D) ? D=options[:D] : D=1
	haskey(options, :randomub) ? randomub=options[:randomub] : randomub=10
	haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

	m = Model(solver=fetch_solver(solver_options))

	M = K+(K-D)*(N-1)
	srand(100)

	isa(randomub, Int) ? @variable(m, 0.1<=x[1:M]<=randomub) : @variable(m, 0.1<=x[1:M]<=rand()*100)
	@NLobjective(m, Max, sum(prod(x[i+k] for k in 0:(K-1)) for i in 1:(K-D):(M-D)))
	@constraint(m, [i in 1:(K-D):(M-D)], sum(x[i+k] for k in 0:(K-1)) <= K)

	verbose && print(m)

	return m
end
