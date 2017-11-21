using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[1], 10.0)
setupperbound(x[1], 350.0)
setlowerbound(x[2], 10.0)
setupperbound(x[2], 350.0)
setlowerbound(x[3], 10.0)
setupperbound(x[3], 200.0)
setlowerbound(x[4], 10.0)
setupperbound(x[4], 200.0)
setupperbound(x[5], 10.0)
setupperbound(x[6], 10.0)
setupperbound(x[7], 10.0)
setupperbound(x[8], 10.0)
setupperbound(x[9], 10.0)
setupperbound(x[10], 10.0)
setupperbound(x[11], 10.0)
setupperbound(x[12], 10.0)
setlowerbound(x[13], 150.0)
setupperbound(x[13], 310.0)
setlowerbound(x[14], 150.0)
setupperbound(x[14], 310.0)
setlowerbound(x[15], 150.0)
setupperbound(x[15], 310.0)
setlowerbound(x[16], 150.0)
setupperbound(x[16], 310.0)


# ----- Constraints ----- #
@constraint(m, e1, x[5]+x[9] == 10.0)
@constraint(m, e2, x[5]-x[6]+x[11] == 0.0)
@constraint(m, e3, x[7]+x[9]-x[10] == 0.0)
@constraint(m, e4, -x[6]+x[7]+x[8] == 0.0)
@constraint(m, e5, -x[10]+x[11]+x[12] == 0.0)
@NLconstraint(m, e6, x[16]*x[11]-x[13]*x[6]+150*x[5] == 0.0)
@NLconstraint(m, e7, x[15]*x[7]-x[14]*x[10]+150*x[9] == 0.0)
@NLconstraint(m, e8, x[6]*x[15]-x[6]*x[13] == 1000.0)
@NLconstraint(m, e9, x[10]*x[16]-x[10]*x[14] == 600.0)
@constraint(m, e10, x[1]+x[15] == 500.0)
@constraint(m, e11, x[2]+x[13] == 250.0)
@constraint(m, e12, x[3]+x[16] == 350.0)
@constraint(m, e13, x[4]+x[14] == 200.0)
@NLconstraint(m, e14, -(1300*(1000/(0.0333333333333333*x[1]*x[2]+0.166666666666667*x[1]+0.166666666666667*x[2]))^0.6+1300*(600/(0.0333333333333333*x[3]*x[4]+0.166666666666667*x[3]+0.166666666666667*x[4]))^0.6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
