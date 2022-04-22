using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 4*x[1] == 20.0)
@constraint(m, e2, x[2] == 6.0)
@constraint(m, e3, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
