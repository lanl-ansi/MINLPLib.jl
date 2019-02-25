using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -11*x[1]-12*x[2]-x[3] == 20.0)
@constraint(m, e2, x[1] <= 1.0)
@constraint(m, e3, x[2] <= 1.0)
@constraint(m, e4, 2*x[1]-x[2] <= -1.0)
@constraint(m, e5, -x[1]+2*x[2] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script.