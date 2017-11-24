using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[4], 100.0)
setlowerbound(x[5], 100.0)
setlowerbound(x[6], 100.0)
setlowerbound(x[7], 300.0)
setlowerbound(x[8], 300.0)
setlowerbound(x[9], 300.0)
setlowerbound(x[10], 300.0)
setlowerbound(x[11], 300.0)
setlowerbound(x[12], 5.0)
setlowerbound(x[13], 5.0)
setlowerbound(x[14], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-1.2*x[4] >= 0.0)
@constraint(m, e2, x[1]-1.5*x[5] >= 0.0)
@constraint(m, e3, x[1]-1.1*x[6] >= 0.0)
@constraint(m, e4, x[2]-1.4*x[4] >= 0.0)
@constraint(m, e5, x[2]-1.2*x[6] >= 0.0)
@constraint(m, e6, x[3]-x[4] >= 0.0)
@constraint(m, e7, x[3]-x[5] >= 0.0)
@constraint(m, e8, x[3]-x[6] >= 0.0)
@constraint(m, e9, x[8]-x[9] <= 0.0)
@constraint(m, e10, x[10]-x[11] <= 0.0)
@constraint(m, e11, x[8]-x[11] <= 0.0)
@constraint(m, e12, -x[8]+x[9] == 0.0)
@NLconstraint(m, e13, 592*x[1]^0.65+582*x[2]^0.39+1200*x[3]^0.52+370*x[7]^0.22+250*x[8]^0.4+210*x[9]^0.62+250*x[10]^0.4+200*x[11]^0.83-objvar <= 0.0)
@NLconstraint(m, e14, 400000*x[12]/x[4]+300000*x[13]/x[5]+100000*x[14]/x[6] <= 8000.0)
@NLconstraint(m, e15, 1.2*x[4]/x[7]-x[12] <= 0.0)
@NLconstraint(m, e16, 1.2*x[4]/x[8]-x[12] <= 0.0)
@NLconstraint(m, e17, 1.2*x[4]/x[9]-x[12] <= 0.0)
@NLconstraint(m, e18, 1.4*x[4]/x[10]-x[12] <= 0.0)
@NLconstraint(m, e19, 1.4*x[4]/x[11]-x[12] <= 0.0)
@NLconstraint(m, e20, 1.5*x[5]/x[7]-x[13] <= 0.0)
@NLconstraint(m, e21, 1.5*x[5]/x[8]-x[13] <= 0.0)
@NLconstraint(m, e22, 1.5*x[5]/x[9]-x[13] <= 0.0)
@NLconstraint(m, e23, 1.5*x[5]/x[11]-x[13] <= 0.0)
@NLconstraint(m, e24, 1.1*x[6]/x[7]-x[14] <= 0.0)
@NLconstraint(m, e25, 1.1*x[6]/x[8]-x[14] <= 0.0)
@NLconstraint(m, e26, 1.1*x[6]/x[9]-x[14] <= 0.0)
@NLconstraint(m, e27, 1.2*x[6]/x[10]-x[14] <= 0.0)
@NLconstraint(m, e28, 1.2*x[6]/x[11]-x[14] <= 0.0)
@NLconstraint(m, e29, 1.2*x[4]/x[7]+1.2*x[4]/x[8]-x[12] <= -3.0)
@NLconstraint(m, e30, 1.2*x[4]/x[9]+1.4*x[4]/x[10]-x[12] <= -1.0)
@NLconstraint(m, e31, 1.4*x[4]/x[11]-x[12] <= -4.0)
@NLconstraint(m, e32, 1.5*x[5]/x[7]+1.5*x[5]/x[8]-x[13] <= -6.0)
@NLconstraint(m, e33, 1.5*x[5]/x[11]-x[13] <= -8.0)
@NLconstraint(m, e34, 1.1*x[6]/x[7]+1.1*x[6]/x[8]-x[14] <= -2.0)
@NLconstraint(m, e35, 1.1*x[6]/x[9]+1.2*x[6]/x[10]-x[14] <= -2.0)
@NLconstraint(m, e36, 1.2*x[6]/x[11]-x[14] <= -4.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
