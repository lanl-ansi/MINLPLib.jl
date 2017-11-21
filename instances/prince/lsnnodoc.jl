using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 2.0)
setupperbound(x[1], 4.0)
setlowerbound(x[2], 6.0)
setupperbound(x[2], 8.0)
setupperbound(x[3], 2.0)
setlowerbound(x[4], -10000.0)
setupperbound(x[4], 6.0)
setlowerbound(x[5], -10000.0)
setupperbound(x[5], 8.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] == 10.0)
@constraint(m, e2, -x[1]-x[3]+x[4] == 0.0)
@constraint(m, e3, -x[2]+x[3]+x[5] == 0.0)
@constraint(m, e4, -x[4]-x[5] == -10.0)
@NLconstraint(m, e5, -(exp(x[1]+x[3])*x[2]+ (x[3])^2* (x[4])^2+ (x[3]-x[5])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
