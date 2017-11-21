using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.5206)
setupperbound(x[2], 0.5206)
setlowerbound(x[3], 0.4071)
setupperbound(x[3], 0.4071)
setlowerbound(x[4], 0.3126)
setupperbound(x[4], 0.3126)
setlowerbound(x[5], 2.0238)
setupperbound(x[5], 2.0238)
setlowerbound(x[6], 1.9484)
setupperbound(x[6], 1.9484)
setlowerbound(x[7], 0.9015)
setupperbound(x[7], 0.9015)
setlowerbound(x[8], 0.9384)
setupperbound(x[8], 0.9384)
setlowerbound(x[9], 11.5631)
setupperbound(x[9], 11.5631)
setlowerbound(x[10], 1.3449)
setupperbound(x[10], 1.3449)
setlowerbound(x[11], 1.5587)
setupperbound(x[11], 1.5587)
setlowerbound(x[12], 0.4493)
setupperbound(x[12], 0.4493)
setlowerbound(x[13], 1.0053)
setupperbound(x[13], 1.0053)
setlowerbound(x[14], 0.9054)
setupperbound(x[14], 0.9054)
setlowerbound(x[15], 0.9529)
setupperbound(x[15], 0.9529)


# ----- Constraints ----- #
@NLconstraint(m, e1, 6.3*x[5]*x[8]+x[1]-5.04*x[2]-0.35*x[3]-x[4]-3.36*x[6] == 0.0)
@constraint(m, e2, -0.819672131147541*x[2]+x[5]-0.819672131147541*x[6] == 0.0)
@NLconstraint(m, e3, 0.98*x[4]-(0.01*x[5]*x[10]+x[4])*x[7] == 0.0)
@NLconstraint(m, e4, -x[2]*x[9]+10*x[3]+x[6] == 0.0)
@NLconstraint(m, e5, x[5]*x[12]-(1.12+0.13167*x[9]-0.0067*x[9]*x[9])*x[2] == 0.0)
@NLconstraint(m, e6, x[8]*x[13]-0.01*(1.098*x[9]-0.038*x[9]*x[9])-0.325*x[7] == 0.57425)
@NLconstraint(m, e7, x[10]*x[14]+22.2*x[11] == 35.82)
@NLconstraint(m, e8, x[11]*x[15]-3*x[8] == -1.33)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
