using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -5*x[2]*x[2]+x[1]+x[5] >= 0.0)
@NLconstraint(m, e2, -(3.2*x[3]*x[3]+3.2*x[3]*x[6]+0.8*x[6]*x[6])+x[1]+x[5] >= 0.0)
@NLconstraint(m, e3, -(20*x[5]*x[5]-40*x[5]*x[6]+20*x[6]*x[6]-x[5])+x[1] >= 0.0)
@NLconstraint(m, e4, -(3.2*x[2]*x[2]-3.2*x[2]*x[5]+0.8*x[5]*x[5]-x[5])+x[1] >= 0.0)
@NLconstraint(m, e5, -5*x[3]*x[3]+x[1]+x[5] >= 0.0)
@NLconstraint(m, e6, -(3.2*x[4]*x[4]+3.2*x[4]*x[7]+0.8*x[7]*x[7])+x[1]+x[5] >= 0.0)
@NLconstraint(m, e7, -(20*x[6]*x[6]-40*x[6]*x[7]+20*x[7]*x[7])+x[1]+x[5] >= 0.0)
@NLconstraint(m, e8, -(3.2*x[3]*x[3]-3.2*x[3]*x[6]+0.8*x[6]*x[6])+x[1]+x[5] >= 0.0)
@NLconstraint(m, e9, -5*x[4]*x[4]+x[1]+x[5] >= 0.0)
@constraint(m, e10, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
