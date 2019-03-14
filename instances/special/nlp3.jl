using JuMP

m = Model()

LB = [100, 1000, 1000, 10, 10, 10, 10, 10]
UB = [10000, 10000, 10000,  1000, 1000, 1000, 1000, 1000]

@variable(m, LB[i] <= x[i=1:8] <= UB[i])

@constraint(m, 0.0025*(x[4] + x[6]) <= 1)
@constraint(m, 0.0025*(x[5] - x[4] + x[7]) <= 1)
@constraint(m, 0.01(x[8]-x[5]) <= 1)
@NLconstraint(m, 100*x[1] - x[1]*x[6] + 833.33252*x[4] <= 83333.333)
@NLconstraint(m, x[2]*x[4] - x[2]*x[7] - 1250*x[4] + 1250*x[5] <= 0)
@NLconstraint(m, x[3]*x[5] - x[3]*x[8] - 2500*x[5] + 1250000 <= 0)

@objective(m, Min, x[1]+x[2]+x[3])

m = m
