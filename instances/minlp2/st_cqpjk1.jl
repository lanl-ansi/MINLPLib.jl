using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[3], -10000.0)
setupperbound(x[3], 10000.0)
setlowerbound(x[4], -10000.0)
setupperbound(x[4], 10000.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]-x[4] <= -1.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4] <= 1.0)
@NLconstraint(m, e3, -(2*x[1]*x[1]-1.33333*x[1]+4*x[2]*x[2]-2.66667*x[2]+6*x[3]*x[3]-4*x[3]+0.5*x[4]*x[4]-10*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
