using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[1], 0.25)
setupperbound(x[1], 5.0)
setlowerbound(x[2], 0.5)
setupperbound(x[2], 2.0)
setlowerbound(x[3], 0.5)
setupperbound(x[3], 1.5)
setlowerbound(x[4], 0.5)
setupperbound(x[4], 2.0)
setlowerbound(x[5], 0.5)
setupperbound(x[5], 1.5)
setlowerbound(x[6], 0.5)
setupperbound(x[6], 2.0)
setlowerbound(x[7], 0.5)
setupperbound(x[7], 1.5)
setupperbound(x[8], 2.5)
setupperbound(x[9], 2.0)
setlowerbound(objvar, 0.0)
setupperbound(objvar, 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -2.35619449019234)
@NLconstraint(m, e2, -x[8]*x[9]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 1.0)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 1.0)
@NLconstraint(m, e5, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.0)
@constraint(m, e6, x[2]-x[8] <= -0.5)
@constraint(m, e7, x[3]-x[9] <= -0.5)
@constraint(m, e8, x[4]-x[8] <= -0.5)
@constraint(m, e9, x[5]-x[9] <= -0.5)
@constraint(m, e10, x[6]-x[8] <= -0.5)
@constraint(m, e11, x[7]-x[9] <= -0.5)
@constraint(m, e12, x[2] <= 1.25)
@constraint(m, e13, x[3] <= 1.0)
@constraint(m, e14, x[2]-x[4] <= 0.0)
@constraint(m, e15, x[2]-x[6] <= 0.0)
@constraint(m, e16, x[4]-x[6] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
