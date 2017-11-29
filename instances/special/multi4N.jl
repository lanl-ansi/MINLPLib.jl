function multi4N(;options=Dict())

	haskey(options, :exprmode) ? exprmode=options[:exprmode] : exprmode=1
	haskey(options, :N) ? N=options[:N] : N=1
	haskey(options, :randomub) ? randomub=options[:randomub] : randomub=10

	m = Model()
	M = 1+3*N
	srand(100)
	isa(randomub, Bool) ? @variable(m, 0.1 <= x[1:M] <= 100*rand()) : @variable(m, 0.1 <= x[1:M] <= randomub)

	if exprmode == 1
		@NLobjective(m, Max, sum(x[i]*x[i+1]*x[i+2]*x[i+3] for i in 1:3:(M-1)))
	elseif exprmode == 2
		@NLobjective(m, Max, sum((x[i]*x[i+1])*(x[i+2]*x[i+3]) for i in 1:3:(M-1)))
	elseif exprmode == 3
		@NLobjective(m, Max, sum((x[i]*x[i+1])*x[i+2]*x[i+3] for i in 1:3:(M-1)))
	elseif exprmode == 4
		@NLobjective(m, Max, sum(x[i]*x[i+1]*(x[i+2]*x[i+3]) for i in 1:3:(M-1)))
	elseif exprmode == 5
		@NLobjective(m, Max, sum((((x[i]*x[i+1])*x[i+2])*x[i+3]) for i in 1:3:(M-1)))
	elseif exprmode == 6
		@NLobjective(m, Max, sum((x[i]*x[i+1]*x[i+2])*x[i+3] for i in 1:3:(M-1)))
	elseif exprmode == 7
		@NLobjective(m, Max, sum(x[i]*(x[i+1]*(x[i+2]*x[i+3])) for i in 1:3:(M-1)))
	elseif exprmode == 8
		@NLobjective(m, Max, sum(x[i]*(x[i+1]*x[i+2])*x[i+3] for i in 1:3:(M-1)))
	elseif exprmode == 9
		@NLobjective(m, Max, sum(x[i]*(x[i+1]*x[i+2]*x[i+3]) for i in 1:3:(M-1)))
	elseif exprmode == 10
		@NLobjective(m, Max, sum(x[i]*((x[i+1]*x[i+2])*x[i+3]) for i in 1:3:(M-1)))
	elseif exprmode == 11
		@NLobjective(m, Max, sum((x[i]*(x[i+1]*x[i+2]))*x[i+3] for i in 1:3:(M-1)))
	else
		error("exprmode argument only taks from 1-7")
	end

	@constraint(m, [i in 1:3:(M-1)], x[i]+x[i+1]+x[i+2]+x[i+3]<=4)

	return m
end
