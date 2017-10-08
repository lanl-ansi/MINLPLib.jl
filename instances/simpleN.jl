using JuMP

function simpleN(;options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false
    haskey(options, :N) ? N=options[:N] : N=2

    N == 1 && error("Why are you solving this problems ? The answer is 100 !!!!!!")

    m = Model(solver=fetch_solver(solver_options))

    @variable(m, -100<=x[1:N]<=100)
    @NLobjective(m, Min, prod(x[1+k] for k in 0:(N-1)))

	verbose && print(m)

	return m
end

m = simpleN()
