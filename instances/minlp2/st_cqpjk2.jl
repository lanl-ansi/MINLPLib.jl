using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3] <= 1.0e10)
@NLconstraint(m, e2, -(9*x[1]*x[1]-15*x[1]+9*x[2]*x[2]-12*x[2]+9*x[3]*x[3]-9*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
