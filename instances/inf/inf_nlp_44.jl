using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[2], 4.0)
setupperbound(x[2], 4.0)
setlowerbound(x[3], 4.0)
setupperbound(x[3], 4.0)
setlowerbound(x[4], 3.0)
setupperbound(x[4], 3.0)
setlowerbound(x[5], 0.0)
setupperbound(x[5], 0.0)
setlowerbound(x[6], 0.0)
setupperbound(x[6], 0.0)
setlowerbound(x[7], 4.0)
setupperbound(x[7], 4.0)
setlowerbound(x[8], 0.0)
setupperbound(x[8], 0.0)
setlowerbound(x[9], 19.7064)
setupperbound(x[9], 19.7064)
setlowerbound(x[10], 40.4129)
setupperbound(x[10], 40.4129)
setlowerbound(x[11], 0.0)
setupperbound(x[11], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-3*x[3] == 0.0)
@constraint(m, e2, -x[2]+x[3]+x[4] == 3.0)
@constraint(m, e3, x[2]+2*x[3]+x[5] == 12.0)
@constraint(m, e4, 4*x[2]-x[3]+x[6] == 12.0)
@constraint(m, e5, -x[3]+x[7] == 0.0)
@NLconstraint(m, e6, x[8]*x[4] == 0.0)
@NLconstraint(m, e7, x[9]*x[5] == 0.0)
@NLconstraint(m, e8, x[10]*x[6] == 0.0)
@NLconstraint(m, e9, x[11]*x[7] == 0.0)
@constraint(m, e10, x[8]+2*x[9]-x[10]-x[11] == -1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
