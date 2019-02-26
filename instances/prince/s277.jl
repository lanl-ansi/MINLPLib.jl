using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 2.08333333333333*x[1] >= 2.08333333333333)
@constraint(m, e2, 1.28333333333333*x[2] >= 1.28333333333333)
@constraint(m, e3, 0.95*x[3] >= 0.95)
@constraint(m, e4, 0.759523809523809*x[4] >= 0.759523809523809)
@constraint(m, e5, -2.08333333333333*x[1]-1.28333333333333*x[2]-0.95*x[3]-0.759523809523809*x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.