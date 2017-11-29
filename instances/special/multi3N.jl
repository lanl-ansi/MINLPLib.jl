function multi3N(;options=Dict())

	haskey(options, :exprmode) ? exprmode=options[:exprmode] : exprmode=1
	haskey(options, :N) ? N=options[:N] : N=1
	haskey(options, :randomub) ? randomub=options[:randomub] : randomub=10

	m = Model()

	M = 1+2*N
	srand(100)
    isa(randomub, Int) ? @variable(m, 0.1<=x[1:M]<=randomub) : @variable(m, 0.1<=x[1:M]<=rand()*100)
	if exprmode == 1
		@NLobjective(m, Max, sum(x[i]*x[i+1]*x[i+2] for i in 1:2:(M-1)))
	elseif exprmode == 2
		@NLobjective(m, Max, sum((x[i]*x[i+1])*x[i+2] for i in 1:2:(M-1)))
	elseif exprmode == 3
		@NLobjective(m, Max, sum(x[i]*(x[i+1]*x[i+2]) for i in 1:2:(M-1)))
	else
		error("exprmode argument only taks from 1-3")
	end

	@constraint(m, [i in 1:2:(M-1)], x[i] + x[i+1] + x[i+2] <= 3)

	return m
end
