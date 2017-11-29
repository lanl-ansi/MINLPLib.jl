function multiKND(;options=Dict())

	haskey(options, :exprmode) ? exprmode=options[:exprmode] : exprmode=1
	haskey(options, :N) ? N=options[:N] : N=2
	haskey(options, :K) ? K=options[:K] : K=3
	haskey(options, :D) ? D=options[:D] : D=1
	haskey(options, :randomub) ? randomub=options[:randomub] : randomub=10

	m = Model()

	M = K+(K-D)*(N-1)
	srand(100)

	isa(randomub, Int) ? @variable(m, 0.1<=x[1:M]<=randomub) : @variable(m, 0.1<=x[1:M]<=rand()*100)
	@NLobjective(m, Max, sum(prod(x[i+k] for k in 0:(K-1)) for i in 1:(K-D):(M-D)))
	@constraint(m, [i in 1:(K-D):(M-D)], sum(x[i+k] for k in 0:(K-1)) <= K)

	return m
end
