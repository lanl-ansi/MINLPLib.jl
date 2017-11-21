using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(-5*x[3])*x[2]+x[1]+x[4] >= 127.0)
@NLconstraint(m, e2, exp(-3*x[3])*x[2]+x[1]+x[5] >= 151.0)
@NLconstraint(m, e3, exp(-x[3])*x[2]+x[1]+x[6] >= 379.0)
@NLconstraint(m, e4, exp(x[3])*x[2]+x[1]+x[7] >= 421.0)
@NLconstraint(m, e5, exp(3*x[3])*x[2]+x[1]+x[8] >= 460.0)
@NLconstraint(m, e6, exp(5*x[3])*x[2]+x[1]+x[9] >= 426.0)
@NLconstraint(m, e7, -exp(-5*x[3])*x[2]-x[1]+x[4] >= -127.0)
@NLconstraint(m, e8, -exp(-3*x[3])*x[2]-x[1]+x[5] >= -151.0)
@NLconstraint(m, e9, -exp(-x[3])*x[2]-x[1]+x[6] >= -379.0)
@NLconstraint(m, e10, -exp(x[3])*x[2]-x[1]+x[7] >= -421.0)
@NLconstraint(m, e11, -exp(3*x[3])*x[2]-x[1]+x[8] >= -460.0)
@NLconstraint(m, e12, -exp(5*x[3])*x[2]-x[1]+x[9] >= -426.0)
@NLconstraint(m, e13, -( (x[4])^2+ (x[5])^2+ (x[6])^2+ (x[7])^2+ (x[8])^2+ (x[9])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
