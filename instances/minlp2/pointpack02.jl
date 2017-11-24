using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 0.5)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*x[1]*x[2]-x[1]*x[1]-x[2]*x[2]-x[3]*x[3]+2*x[3]*x[4]-x[4]*x[4]+objvar <= 0.0)
@constraint(m, e2, -x[3]+x[4] <= 0.0)
@constraint(m, e3, -x[1]+x[2] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
