using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] == -0.69)
@constraint(m, e2, x[3]+x[4] == -0.044)
@NLconstraint(m, e3, x[5]*x[1]+x[6]*x[2]-x[7]*x[3]-x[8]*x[4] == -1.57)
@NLconstraint(m, e4, x[7]*x[1]+x[8]*x[2]+x[5]*x[3]+x[6]*x[4] == -1.31)
@NLconstraint(m, e5, (x[5]*x[5]-x[7]*x[7])*x[1]-2*x[3]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[2]-2*x[4]*x[6]*x[8] == -2.65)
@NLconstraint(m, e6, (x[5]*x[5]-x[7]*x[7])*x[3]+2*x[1]*x[5]*x[7]+(x[6]*x[6]-x[8]*x[8])*x[4]+2*x[2]*x[6]*x[8] == 2.0)
@NLconstraint(m, e7, x[1]*x[5]*(x[5]*x[5]-3*x[7]*x[7])+x[3]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[2]*x[6]*(x[6]*x[6]-3*x[8]*x[8])+x[4]*x[8]*(x[8]*x[8]-3*x[6]*x[6]) == -12.6)
@NLconstraint(m, e8, x[3]*x[5]*(x[5]*x[5]-3*x[7]*x[7])-x[1]*x[7]*(x[7]*x[7]-3*x[5]*x[5])+x[4]*x[6]*(x[6]*x[6]-3*x[8]*x[8])-x[2]*x[8]*(x[8]*x[8]-3*x[6]*x[6]) == 9.48)
@constraint(m, e9, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.