using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-4*x[2]-x[3] == -6.0)
@constraint(m, e2, -2.45*x[1]-10*x[2]-2*x[4] == -12.0)
@constraint(m, e3, -2.1*x[1]-x[2]-2*x[3]-x[4] == -6.0)
@constraint(m, e4, -4.25*x[1]-24*x[2] == -24.0)
@constraint(m, e5, x[2] <= 1.0)
@constraint(m, e6, x[1] >= 0.1)
@constraint(m, e7, -x[2]+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[5])

m = m 		 # model get returned when including this script.