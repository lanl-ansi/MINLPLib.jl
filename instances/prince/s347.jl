using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setlowerbound(x[4], 1.0e-6)
setlowerbound(x[5], 1.0e-6)
setlowerbound(x[6], 1.0e-6)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3] == 1.0)
@NLconstraint(m, e2, -(0.03+x[1]+x[2]+x[3])/(0.03+0.09*x[1]+x[2]+x[3])+x[4] == 0.0)
@NLconstraint(m, e3, -(0.03+x[2]+x[3])/(0.03+0.07*x[2]+x[3])+x[5] == 0.0)
@NLconstraint(m, e4, -(0.03+x[3])/(0.03+0.13*x[3])+x[6] == 0.0)
@NLconstraint(m, e5, -(8204.37*log(x[4])+9008.72*log(x[5])+9330.46*log(x[6]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
