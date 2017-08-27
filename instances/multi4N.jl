println("--------------------------------------------------------------------------")
println("Multi4/N - exprmode 1 -> X1 * X2 * X3 * X4")
println("Multi4/N - exprmode 2 -> (X1*X2) * (X3*X4)")
println("Multi4/N - exprmode 3 -> (X1*X2) * X3 * X4")
println("Multi4/N - exprmode 4 -> X1 * X2 * (X3*X4)")
println("Multi4/N - exprmode 5 -> ((X1*X2) * X3) * X4")
println("Multi4/N - exprmode 6 -> (X1*X2*X3) *X4")
println("Multi4/N - exprmode 7 -> X1 * (X2 * (X3*X4))")
println("Multi4/N - exprmode 8 -> X1 * (X2*X3) * X4")
println("Multi4/N - exprmode 9 -> X1 * (X2*X3*X4)")
println("Multi4/N - exprmode 10 -> X1 * ((X2*X3) * X4)")
println("Multi4/N - exprmode 11 -> (X1 * (X2*X3)) * X4")
println("--------------------------------------------------------------------------")

function multi4N(;verbose=false, exprmode=1, N=1, kwargs...)

	m = Model(solver=fetch_solver(options=Dict(kwargs)))

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

	if verbose
		print(m)
	end

	return m
end
