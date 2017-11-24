using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 100.0)
setupperbound(x[5], 200.0)
setupperbound(x[6], 50.0)
setupperbound(x[7], 50.0)
setupperbound(x[8], 100.0)
setupperbound(x[9], 200.0)
setupperbound(x[10], 300.0)
setupperbound(x[11], 50.0)
setupperbound(x[12], 300.0)
setupperbound(x[13], 100.0)
setupperbound(x[14], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+3*x[4]+9*x[5]-6*x[6]-7*x[8]-x[9]-x[13]+5*x[14] == 0.0)
@constraint(m, e2, x[4]+x[5] <= 300.0)
@constraint(m, e3, x[6]+x[7] <= 50.0)
@constraint(m, e4, x[8]+x[9] <= 300.0)
@constraint(m, e5, x[13]+x[14] <= 300.0)
@constraint(m, e6, x[4]+x[5]+x[6]+x[7]+x[8]+x[9] <= 300.0)
@constraint(m, e7, x[4]+x[6]+x[8]+x[13] <= 100.0)
@constraint(m, e8, x[5]+x[7]+x[9]+x[14] <= 200.0)
@constraint(m, e9, 0.5*x[4]-1.5*x[6]-1.5*x[8]-0.5*x[13] <= 0.0)
@constraint(m, e10, 1.5*x[5]-0.5*x[7]-0.5*x[9]+0.5*x[14] <= 0.0)
@constraint(m, e11, x[2]+x[3] == 1.0)
@NLconstraint(m, e12, -x[2]*x[10]+x[4] == 0.0)
@NLconstraint(m, e13, -x[3]*x[10]+x[5] == 0.0)
@NLconstraint(m, e14, -x[2]*x[11]+x[6] == 0.0)
@NLconstraint(m, e15, -x[3]*x[11]+x[7] == 0.0)
@NLconstraint(m, e16, -x[2]*x[12]+x[8] == 0.0)
@NLconstraint(m, e17, -x[3]*x[12]+x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
