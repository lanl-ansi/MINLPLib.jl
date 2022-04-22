using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 15.1)
set_lower_bound(x[2], 14.7)
set_upper_bound(x[2], 94.2)
set_upper_bound(x[3], 5371.0)
set_lower_bound(x[4], -459.67)
set_upper_bound(x[4], 80.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[3]*x[1]+144*x[4] >= 11520.0)
@NLconstraint(m, e2, -exp(11.86-3950/(460+x[4]))+x[2] == 0.0)
@NLconstraint(m, e3, -(400*x[1]^0.9+22*(x[2]-14.7)^1.2)-x[3]+objvar == 1000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
