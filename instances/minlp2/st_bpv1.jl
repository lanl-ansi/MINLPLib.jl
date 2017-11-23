using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 27.0)
setupperbound(x[2], 16.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+3*x[2] >= 30.0)
@constraint(m, e2, 2*x[1]+x[2] >= 20.0)
@constraint(m, e3, -1.6667*x[3]+x[4] >= 10.0)
@constraint(m, e4, x[3]+x[4] <= 15.0)
@NLconstraint(m, e5, -(x[1]*x[3]+x[2]*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
