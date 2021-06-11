using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 8.7495087e-5)
set_upper_bound(x[1], 8.7495087e-5)
set_lower_bound(x[2], 14.700000974514)
set_upper_bound(x[2], 14.700000974514)
set_lower_bound(x[3], 0.170624356199)
set_upper_bound(x[3], 0.170624356199)
set_lower_bound(x[4], 79.99999989633)
set_upper_bound(x[4], 79.99999989633)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[3]*x[1]+144*x[4] >= 11520.0)
@NLconstraint(m, e2, -exp(11.86-3950/(460+x[4]))+x[2] == 0.0)
@NLconstraint(m, e3, -(400*x[1]^0.9+22*(-14.7+x[2])^1.2)-x[3]+x[5] == 1000.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

m = m 		 # model get returned when including this script. 
