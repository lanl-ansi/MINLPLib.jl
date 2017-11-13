function simpleN(options=Dict())

    haskey(options, :N) ? N=options[:N] : N=2

    N == 1 && error("Why are you solving this problems ? The answer is 100 !!!!!!")

    m = Model()

    @variable(m, -100<=x[1:N]<=100)
    @NLobjective(m, Min, prod(x[1+k] for k in 0:(N-1)))

	return m
end
