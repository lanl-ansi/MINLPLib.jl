using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 10.0)
setupperbound(x[1], 2000.0)
setupperbound(x[2], 16000.0)
setupperbound(x[3], 120.0)
setupperbound(x[4], 5000.0)
setupperbound(x[5], 2000.0)
setlowerbound(x[6], 85.0)
setupperbound(x[6], 93.0)
setlowerbound(x[7], 90.0)
setupperbound(x[7], 95.0)
setlowerbound(x[8], 3.0)
setupperbound(x[8], 12.0)
setlowerbound(x[9], 1.2)
setupperbound(x[9], 4.0)
setlowerbound(x[10], 145.0)
setupperbound(x[10], 162.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[1]*(1.12+0.13167*x[8]-0.00667* (x[8])^2)+x[4] == 0.0)
@constraint(m, e2, -x[1]+1.22*x[4]-x[5] == 0.0)
@NLconstraint(m, e3, -0.001*x[4]*x[9]*x[6]/(98-x[6])+x[3] == 0.0)
@NLconstraint(m, e4, -(1.098*x[8]-0.038* (x[8])^2)-0.325*x[6]+x[7] == 57.425)
@NLconstraint(m, e5, -(x[2]+x[5])/x[1]+x[8] == 0.0)
@constraint(m, e6, x[9]+0.222*x[10] == 35.82)
@constraint(m, e7, -3*x[7]+x[10] == -133.0)
@NLconstraint(m, e8, -0.063*x[4]*x[7]+5.04*x[1]+0.035*x[2]+10*x[3]+3.36*x[5]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
