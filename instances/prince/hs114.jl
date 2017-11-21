using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[5], 1.0e-5)
setupperbound(x[5], 2000.0)
setlowerbound(x[6], 1.0e-5)
setupperbound(x[6], 16000.0)
setlowerbound(x[7], 1.0e-5)
setupperbound(x[7], 120.0)
setlowerbound(x[8], 1.0e-5)
setupperbound(x[8], 5000.0)
setlowerbound(x[9], 1.0e-5)
setupperbound(x[9], 2000.0)
setlowerbound(x[10], 85.0)
setupperbound(x[10], 93.0)
setlowerbound(x[11], 90.0)
setupperbound(x[11], 95.0)
setlowerbound(x[12], 3.0)
setupperbound(x[12], 12.0)
setlowerbound(x[13], 1.2)
setupperbound(x[13], 4.0)
setlowerbound(x[14], 145.0)
setupperbound(x[14], 162.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+0.9*x[13]+0.222*x[14] == 35.82)
@constraint(m, e2, x[2]-3*x[11]+0.99*x[14] == -133.0)
@NLconstraint(m, e3, -(0.13167*x[5]*x[12]+1.12*x[5]-0.00667* (x[12])^2*x[5])+x[3]+0.99*x[8] == 0.0)
@NLconstraint(m, e4, -(1.098*x[12]-0.038* (x[12])^2)+x[4]-0.325*x[10]+0.99*x[11] == 57.425)
@constraint(m, e5, -x[1]+0.211111111111111*x[13] >= 0.0)
@constraint(m, e6, -x[2]+0.0201010101010102*x[14] >= 0.0)
@constraint(m, e7, -x[3]+0.0201010101010102*x[8] >= 0.0)
@constraint(m, e8, -x[4]+0.0201010101010102*x[11] >= 0.0)
@constraint(m, e9, -x[5]+1.22*x[8]-x[9] == 0.0)
@NLconstraint(m, e10, 98000*x[7]/(x[8]*x[13]+1000*x[7])-x[10] == 0.0)
@NLconstraint(m, e11, (x[6]+x[9])/x[5]-x[12] == 0.0)
@NLconstraint(m, e12, 0.063*x[8]*x[11]-5.04*x[5]-0.035*x[6]-10*x[7]-3.36*x[9]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
