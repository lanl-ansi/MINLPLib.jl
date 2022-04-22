using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2] == 2.0)
@constraint(m, e2, 2*x[1]+x[2] == 2.0)
@constraint(m, e3, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
