using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
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
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 300.0)
setupperbound(x[3], 300.0)
setupperbound(x[4], 100.0)
setupperbound(x[5], 200.0)
setupperbound(x[6], 100.0)
setupperbound(x[7], 200.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 100.0)
setupperbound(x[13], 200.0)
setupperbound(x[14], 100.0)
setupperbound(x[15], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[4]+5*x[5]+3*x[12]+9*x[13]-7*x[14]-x[15] == 0.0)
@constraint(m, e2, x[12]+x[13] <= 300.0)
@constraint(m, e3, x[14]+x[15] <= 300.0)
@constraint(m, e4, x[4]+x[5] <= 300.0)
@constraint(m, e5, x[12]+x[13]+x[14]+x[15] <= 300.0)
@constraint(m, e6, x[4]+x[12]+x[14] <= 100.0)
@constraint(m, e7, x[5]+x[13]+x[15] <= 200.0)
@constraint(m, e8, -0.5*x[4]+0.5*x[12]-1.5*x[14] <= 0.0)
@constraint(m, e9, 0.5*x[5]+1.5*x[13]-0.5*x[15] <= 0.0)
@constraint(m, e10, x[8]+x[9] == 1.0)
@constraint(m, e11, x[10]+x[11] == 1.0)
@NLconstraint(m, e12, -x[8]*x[6]+x[12] == 0.0)
@NLconstraint(m, e13, -x[8]*x[7]+x[13] == 0.0)
@NLconstraint(m, e14, -x[9]*x[6]+x[14] == 0.0)
@NLconstraint(m, e15, -x[9]*x[7]+x[15] == 0.0)
@NLconstraint(m, e16, -x[10]*x[2]+x[12] == 0.0)
@NLconstraint(m, e17, -x[11]*x[2]+x[13] == 0.0)
@NLconstraint(m, e18, -x[10]*x[3]+x[14] == 0.0)
@NLconstraint(m, e19, -x[11]*x[3]+x[15] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
