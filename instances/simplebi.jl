using JuMP

function simplebi(;options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

    @variable(m, 1<=x[1:2]<=10)
	@NLobjective(m, Min, x[1]*x[2])

	verbose && print(m)

	return m
end

m = simplebi()
