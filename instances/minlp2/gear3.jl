using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, 12 <= x[x_Idx] ,= 60)
i_Idx = Any[6, 7, 8, 9]
@variable(m, 12 <= i[i_Idx] <= 60)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-x[2]*x[3]/(x[4]*x[5]))^2+objvar == 0.0)
@constraint(m, e2, x[2]-i[6] == 0.0)
@constraint(m, e3, x[3]-i[7] == 0.0)
@constraint(m, e4, x[4]-i[8] == 0.0)
@constraint(m, e5, x[5]-i[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
