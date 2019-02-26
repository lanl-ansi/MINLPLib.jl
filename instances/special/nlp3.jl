using JuMP

m = Model()

@variable(m, x[1:8])

set_lower_bound(x[1], 100)
set_lower_bound(x[2], 1000)
set_lower_bound(x[3], 1000)
set_lower_bound(x[4], 10)
set_lower_bound(x[5], 10)
set_lower_bound(x[6], 10)
set_lower_bound(x[7], 10)
set_lower_bound(x[8], 10)

set_upper_bound(x[1], 10000)
set_upper_bound(x[2], 10000)
set_upper_bound(x[3], 10000)
set_upper_bound(x[4], 1000)
set_upper_bound(x[5], 1000)
set_upper_bound(x[6], 1000)
set_upper_bound(x[7], 1000)
set_upper_bound(x[8], 1000)

@constraint(m, 0.0025*(x[4] + x[6]) <= 1)
@constraint(m, 0.0025*(x[5] - x[4] + x[7]) <= 1)
@constraint(m, 0.01(x[8]-x[5]) <= 1)
@NLconstraint(m, 100*x[1] - x[1]*x[6] + 833.33252*x[4] <= 83333.333)
@NLconstraint(m, x[2]*x[4] - x[2]*x[7] - 1250*x[4] + 1250*x[5] <= 0)
@NLconstraint(m, x[3]*x[5] - x[3]*x[8] - 2500*x[5] + 1250000 <= 0)

@objective(m, Min, x[1]+x[2]+x[3])

m = m