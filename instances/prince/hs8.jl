using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[1]+x[2]*x[2] == 25.0)
@NLconstraint(m, e2, x[1]*x[2] == 9.0)
@constraint(m, e3, objvar == -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
