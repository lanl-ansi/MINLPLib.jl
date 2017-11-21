using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[4], 50.0)
setupperbound(x[5], 50.0)
setupperbound(x[6], 200.0)
setupperbound(x[7], 200.0)
setupperbound(x[8], 200.0)
setupperbound(x[9], 200.0)
setupperbound(x[10], 200.0)
setupperbound(x[11], 200.0)
setupperbound(x[12], 200.0)
setupperbound(x[13], 200.0)
setupperbound(x[14], 200.0)
setupperbound(x[15], 200.0)
setupperbound(x[16], 200.0)
setupperbound(x[17], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, -3*x[1]-3*x[2]-objvar+2*x[4]+2*x[5] == 60.0)
@constraint(m, e2, x[1]-2*x[2]+x[4]+x[5] <= 40.0)
@constraint(m, e3, 2*x[1]-x[4]+x[6] == -10.0)
@constraint(m, e4, 2*x[2]-x[5]+x[7] == -10.0)
@constraint(m, e5, -x[1]+x[8] == 10.0)
@constraint(m, e6, x[1]+x[9] == 20.0)
@constraint(m, e7, -x[2]+x[10] == 10.0)
@constraint(m, e8, x[2]+x[11] == 20.0)
@NLconstraint(m, e9, x[6]*x[12] == 0.0)
@NLconstraint(m, e10, x[7]*x[13] == 0.0)
@NLconstraint(m, e11, x[8]*x[14] == 0.0)
@NLconstraint(m, e12, x[9]*x[15] == 0.0)
@NLconstraint(m, e13, x[10]*x[16] == 0.0)
@NLconstraint(m, e14, x[11]*x[17] == 0.0)
@constraint(m, e15, 2*x[1]-2*x[4]+2*x[12]-x[14]+x[15] == -40.0)
@constraint(m, e16, 2*x[2]-2*x[5]+2*x[13]-x[16]+x[17] == -40.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
