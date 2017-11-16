using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0e-6)
setupperbound(x[1], 2000.0)
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 16000.0)
setlowerbound(x[3], 1.0e-6)
setupperbound(x[3], 120.0)
setlowerbound(x[4], 1.0e-6)
setupperbound(x[4], 5000.0)
setlowerbound(x[5], 1.0e-6)
setupperbound(x[5], 2000.0)
setlowerbound(x[6], 85.0)
setupperbound(x[6], 93.0)
setlowerbound(x[7], 90.0)
setupperbound(x[7], 95.0)
setlowerbound(x[8], 3.0)
setupperbound(x[8], 12.0)
setlowerbound(x[9], 0.01)
setupperbound(x[9], 4.0)
setlowerbound(x[10], 145.0)
setupperbound(x[10], 162.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.063*x[4]*x[7]+5.04*x[1]+0.035*x[2]+10*x[3]+3.36*x[5]+objvar == 0.0)
@constraint(m, e2, x[1]-1.22*x[4]+x[5] == 0.0)
@NLconstraint(m, e3, -98000*x[3]/(x[4]*x[9]+1000*x[3])+x[6] == 0.0)
@NLconstraint(m, e4, -(x[2]+x[5])/x[1]+x[8] == 0.0)
@NLconstraint(m, e5, (1.12+0.13167*x[8]-0.00667*x[8]^2)*x[1]-0.99*x[4] >= 0.0)
@NLconstraint(m, e6, -(1.12+0.13167*x[8]-0.00667*x[8]^2)*x[1]+1.01010101010101*x[4] >= 0.0)
@NLconstraint(m, e7, 1.098*x[8]-0.038*x[8]^2+0.325*x[6]-0.99*x[7] >= -57.425)
@NLconstraint(m, e8, -(1.098*x[8]-0.038*x[8]^2)-0.325*x[6]+1.01010101010101*x[7] >= 57.425)
@constraint(m, e9, -0.9*x[9]-0.222*x[10] >= -35.82)
@constraint(m, e10, 1.11111111111111*x[9]+0.222*x[10] >= 35.82)
@constraint(m, e11, 3*x[7]-0.99*x[10] >= 133.0)
@constraint(m, e12, -3*x[7]+1.01010101010101*x[10] >= -133.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
