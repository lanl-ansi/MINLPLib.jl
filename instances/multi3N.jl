println("--------------------------------------------------------------------------")
println("Multi3/N - exprmode 1 -> X1 * X2 * X3")
println("Multi3/N - exprmode 2 -> (X1*X2) * X3")
println("Multi3/N - exprmode 3 -> X1 * (X2*X3)")
println("--------------------------------------------------------------------------")

function multi3N(;verbose=false,
				  exprmode=1, N=1, kwargs...)

	m = Model(solver=fetch_solver(options=Dict(kwargs)))

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
		error("exprmode argument only taks from 1-7")
	end

	@constraint(m, [i in 1:2:(M-1)], x[i] + x[i+1] + x[i+2] <= 3)

	if verbose
		print(m)
	end

	return m
end
