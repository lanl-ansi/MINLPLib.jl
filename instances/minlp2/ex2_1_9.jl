using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*x[2]+x[2]*x[3]+x[3]*x[4]+x[4]*x[5]+x[5]*x[6]+x[6]*x[7]+x[7]*x[8]+x[8]*x[9]+x[9]*x[10]+x[1]*x[3]+x[2]*x[4]+x[3]*x[5]+x[4]*x[6]+x[5]*x[7]+x[6]*x[8]+x[7]*x[9]+x[8]*x[10]+x[1]*x[9]+x[1]*x[10]+x[2]*x[10]+x[1]*x[5]+x[4]*x[7])-objvar == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
