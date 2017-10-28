using JuMP

m = Model()

@variable(m, 1<=x[1:2]<=10)

@NLconstraint(m, x[1]*x[2] >= 8)
@NLobjective(m, Min, 6*x[1]^2 + 4*x[2]^2 - 2.5*x[1]*x[2])

m = m
