using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 10.0)
setupperbound(x[5], 10.0)
setupperbound(x[6], 10.0)
setupperbound(x[7], 10.0)
setupperbound(x[8], 10.0)
setlowerbound(x[9], 100.0)
setupperbound(x[9], 290.0)
setlowerbound(x[10], 100.0)
setupperbound(x[10], 310.0)
setlowerbound(x[11], 100.0)
setupperbound(x[11], 290.0)
setlowerbound(x[12], 100.0)
setupperbound(x[12], 330.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] == 10.0)
@constraint(m, e2, x[1]-x[3]+x[6] == 0.0)
@constraint(m, e3, x[2]-x[4]+x[5] == 0.0)
@constraint(m, e4, -x[3]+x[5]+x[7] == 0.0)
@constraint(m, e5, -x[4]+x[6]+x[8] == 0.0)
@NLconstraint(m, e6, x[12]*x[6]-x[9]*x[3]+100*x[1] == 0.0)
@NLconstraint(m, e7, x[10]*x[5]-x[11]*x[4]+100*x[2] == 0.0)
@NLconstraint(m, e8, x[3]*(x[10]-x[9]) == 800.0)
@NLconstraint(m, e9, x[4]*(x[12]-x[11]) == 1000.0)
@NLconstraint(m, e10, -(1200*(800/(258.333333333333+2.5*(0.666666666666667*((320-x[10])*(300-x[9]))^0.5-0.166666666666667*x[9]-0.166666666666667*x[10])))^0.6+1200*(5000/(106.666666666667+0.666666666666667*((340-x[12])*(300-x[11]))^0.5-0.166666666666667*x[11]-0.166666666666667*x[12]))^0.6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
