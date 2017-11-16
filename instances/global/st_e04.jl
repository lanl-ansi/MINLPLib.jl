using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 15.1)
setlowerbound(x[2], 14.7)
setupperbound(x[2], 94.2)
setupperbound(x[3], 5371.0)
setlowerbound(x[4], -459.67)
setupperbound(x[4], 80.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[3]*x[1]+144*x[4] >= 11520.0)
@NLconstraint(m, e2, -exp(11.86-3950/(460+x[4]))+x[2] == 0.0)
@NLconstraint(m, e3, -(400*x[1]^0.9+22*(x[2]-14.7)^1.2)-x[3]+objvar == 1000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
