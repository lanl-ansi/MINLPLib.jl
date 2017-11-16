using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[1], -1.0)
setupperbound(x[1], 1.0)
setlowerbound(x[2], -2.1)
setupperbound(x[2], 2.0)
setlowerbound(x[3], -3.2)
setupperbound(x[3], 3.0)
setlowerbound(x[4], -4.3)
setupperbound(x[4], 4.0)
setlowerbound(x[5], -5.4)
setupperbound(x[5], 5.0)
setlowerbound(x[6], -6.5)
setupperbound(x[6], 6.0)
setlowerbound(x[7], -7.6)
setupperbound(x[7], 7.0)
setlowerbound(x[8], -8.7)
setupperbound(x[8], 8.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2] >= -1.0)
@constraint(m, e2, -x[2]+x[3] >= -1.05)
@constraint(m, e3, -x[3]+x[4] >= -1.1)
@constraint(m, e4, -x[4]+x[5] >= -1.15)
@constraint(m, e5, -x[5]+x[6] >= -1.2)
@constraint(m, e6, -x[6]+x[7] >= -1.25)
@constraint(m, e7, -x[7]+x[8] >= -1.3)
@NLconstraint(m, e8, -(1.69*x[1]*x[1]+7*x[1]+x[1]*x[2]+6*x[2]+2*x[1]*x[3]+5*x[3]+3*x[1]*x[4]+4*x[4]+4*x[1]*x[5]+3*x[5]+5*x[1]*x[6]+2*x[6]+6*x[1]*x[7]+x[7]+7*x[1]*x[8]+x[2]*x[1]+1.69*x[2]*x[2]+x[2]*x[3]+2*x[2]*x[4]+3*x[2]*x[5]+4*x[2]*x[6]+5*x[2]*x[7]+6*x[2]*x[8]+2*x[3]*x[1]+x[3]*x[2]+1.69*x[3]*x[3]+x[3]*x[4]+2*x[3]*x[5]+3*x[3]*x[6]+4*x[3]*x[7]+5*x[3]*x[8]+3*x[4]*x[1]+2*x[4]*x[2]+x[4]*x[3]+1.69*x[4]*x[4]+x[4]*x[5]+2*x[4]*x[6]+3*x[4]*x[7]+4*x[4]*x[8]+4*x[5]*x[1]+3*x[5]*x[2]+2*x[5]*x[3]+x[5]*x[4]+1.69*x[5]*x[5]+x[5]*x[6]+2*x[5]*x[7]+3*x[5]*x[8]+5*x[6]*x[1]+4*x[6]*x[2]+3*x[6]*x[3]+2*x[6]*x[4]+x[6]*x[5]+1.69*x[6]*x[6]+x[6]*x[7]+2*x[6]*x[8]+6*x[7]*x[1]+5*x[7]*x[2]+4*x[7]*x[3]+3*x[7]*x[4]+2*x[7]*x[5]+x[7]*x[6]+1.69*x[7]*x[7]+x[7]*x[8]+7*x[8]*x[1]+6*x[8]*x[2]+5*x[8]*x[3]+4*x[8]*x[4]+3*x[8]*x[5]+2*x[8]*x[6]+x[8]*x[7]+1.69*x[8]*x[8])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
