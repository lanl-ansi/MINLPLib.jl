function circleN(;options=Dict())

haskey(options, :N) ? N=options[:N] : N=2

m = Model()

@variable(m, 0<=x[1:N]<=N)
@NLconstraint(m, sum(x[i]^2 for i in 1:N) >= N)
@objective(m, Min, sum(x))

return m
end