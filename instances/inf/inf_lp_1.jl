using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -1000.0)
set_upper_bound(x[1], 1000.0)
set_lower_bound(x[2], -100.0)
set_upper_bound(x[2], 100.0)
set_lower_bound(x[3], -100.0)
set_upper_bound(x[3], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-2*x[2]+x[3] == 0.0)
@constraint(m, e2, -10*x[2]+4*x[3] <= -5.0)
@constraint(m, e3, x[2]+3*x[3] <= 9.0)
@constraint(m, e4, x[2] >= 2.0)
@constraint(m, e5, x[3] >= 3.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.