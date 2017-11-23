using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[1], 0.25)
setupperbound(x[1], 4.0)
setlowerbound(x[2], 0.5)
setupperbound(x[2], 3.5)
setlowerbound(x[3], 0.5)
setupperbound(x[3], 0.5)
setlowerbound(x[4], 0.5)
setupperbound(x[4], 3.5)
setlowerbound(x[5], 0.5)
setupperbound(x[5], 0.5)
setlowerbound(x[6], 0.5)
setupperbound(x[6], 3.5)
setlowerbound(x[7], 0.5)
setupperbound(x[7], 0.5)
setlowerbound(x[8], 0.5)
setupperbound(x[8], 3.5)
setlowerbound(x[9], 0.5)
setupperbound(x[9], 0.5)
setupperbound(x[10], 4.0)
setupperbound(x[11], 1.0)
setlowerbound(objvar, 0.0)
setupperbound(objvar, 4.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -3.14159265358979)
@NLconstraint(m, e2, -x[10]*x[11]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 1.0)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 1.0)
@NLconstraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 1.0)
@NLconstraint(m, e6, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.0)
@NLconstraint(m, e7, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 1.0)
@NLconstraint(m, e8, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 1.0)
@constraint(m, e9, x[2]-x[10] <= -0.5)
@constraint(m, e10, x[3]-x[11] <= -0.5)
@constraint(m, e11, x[4]-x[10] <= -0.5)
@constraint(m, e12, x[5]-x[11] <= -0.5)
@constraint(m, e13, x[6]-x[10] <= -0.5)
@constraint(m, e14, x[7]-x[11] <= -0.5)
@constraint(m, e15, x[8]-x[10] <= -0.5)
@constraint(m, e16, x[9]-x[11] <= -0.5)
@constraint(m, e17, x[2] <= 2.0)
@constraint(m, e18, x[3] <= 0.5)
@constraint(m, e19, x[2]-x[4] <= 0.0)
@constraint(m, e20, x[2]-x[6] <= 0.0)
@constraint(m, e21, x[2]-x[8] <= 0.0)
@constraint(m, e22, x[4]-x[6] <= 0.0)
@constraint(m, e23, x[4]-x[8] <= 0.0)
@constraint(m, e24, x[6]-x[8] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
