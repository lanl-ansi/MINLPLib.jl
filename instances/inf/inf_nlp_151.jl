using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -2401.501*x[1]-496.561*x[2]+x[6] == 0.0)
@constraint(m, e2, x[1]-x[4] == 14.403)
@constraint(m, e3, 367.41157*x[1]+951.6012*x[2] == 132500.0)
@NLconstraint(m, e4, x[1]*x[5]-1006.2871*x[1]+1951.479*x[3] == 0.0)
@constraint(m, e5, 1006.2871*x[1]-207.3292*x[4] == 37056.237)
@constraint(m, e6, x[1]-x[2]-x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script. 
