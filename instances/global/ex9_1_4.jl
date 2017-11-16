using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[4], 200.0)
setupperbound(x[5], 200.0)
setupperbound(x[6], 200.0)
setupperbound(x[7], 200.0)
setupperbound(x[8], 200.0)
setupperbound(x[9], 200.0)
setupperbound(x[10], 200.0)
setupperbound(x[11], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, -objvar+x[2]-4*x[3] == 0.0)
@constraint(m, e2, -2*x[2]+x[3]+x[4] == 0.0)
@constraint(m, e3, 2*x[2]+5*x[3]+x[5] == 108.0)
@constraint(m, e4, 2*x[2]-3*x[3]+x[6] == -4.0)
@constraint(m, e5, -x[3]+x[7] == 0.0)
@NLconstraint(m, e6, x[8]*x[4] == 0.0)
@NLconstraint(m, e7, x[9]*x[5] == 0.0)
@NLconstraint(m, e8, x[10]*x[6] == 0.0)
@NLconstraint(m, e9, x[11]*x[7] == 0.0)
@constraint(m, e10, x[8]+5*x[9]-3*x[10]-x[11] == -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
