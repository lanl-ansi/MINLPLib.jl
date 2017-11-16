using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 1.6)
setupperbound(x[4], 1.2)
setupperbound(x[5], 5.0)
setupperbound(x[6], 2.0)
setlowerbound(x[7], 0.85)
setupperbound(x[7], 0.93)
setlowerbound(x[8], 0.9)
setupperbound(x[8], 0.95)
setlowerbound(x[9], 3.0)
setupperbound(x[9], 12.0)
setlowerbound(x[10], 1.2)
setupperbound(x[10], 4.0)
setlowerbound(x[11], 1.45)
setupperbound(x[11], 1.62)
setlowerbound(x[12], 0.99)
setupperbound(x[12], 1.01010101010101)
setlowerbound(x[13], 0.99)
setupperbound(x[13], 1.01010101010101)
setlowerbound(x[14], 0.9)
setupperbound(x[14], 1.11111111111111)
setlowerbound(x[15], 0.99)
setupperbound(x[15], 1.01010101010101)


# ----- Constraints ----- #
@NLconstraint(m, e1, 6.3*x[5]*x[8]+objvar-5.04*x[2]-0.35*x[3]-x[4]-3.36*x[6] == 0.0)
@constraint(m, e2, -0.819672131147541*x[2]+x[5]-0.819672131147541*x[6] == 0.0)
@NLconstraint(m, e3, 0.98*x[4]-x[7]*(0.01*x[5]*x[10]+x[4]) == 0.0)
@NLconstraint(m, e4, -x[2]*x[9]+10*x[3]+x[6] == 0.0)
@NLconstraint(m, e5, x[5]*x[12]-x[2]*(1.12+0.13167*x[9]-0.0067*x[9]*x[9]) == 0.0)
@NLconstraint(m, e6, x[8]*x[13]-0.01*(1.098*x[9]-0.038*x[9]*x[9])-0.325*x[7] == 0.57425)
@NLconstraint(m, e7, x[10]*x[14]+22.2*x[11] == 35.82)
@NLconstraint(m, e8, x[11]*x[15]-3*x[8] == -1.33)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
