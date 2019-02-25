using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2]-2*x[3]-4*x[4] == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4] <= 4.0)
@constraint(m, e3, -x[2]+3*x[3] <= 4.0)
@constraint(m, e4, -x[2]+x[4] <= 1.0)
@constraint(m, e5, x[3] == 0.0)
@constraint(m, e6, x[4] == 0.0)
@constraint(m, e7, x[2]-x[3] <= 0.0)
@constraint(m, e8, 2*x[2]-5*x[4] <= 1.0)
@constraint(m, e9, -2*x[2]-x[4] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.