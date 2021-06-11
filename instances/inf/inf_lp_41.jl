using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[1]-4*x[2] == -4.0)
@constraint(m, e2, -8*x[1]-20*x[2] == -24.0)
@constraint(m, e3, x[1] <= 3.0)
@constraint(m, e4, x[2] <= 1.2)
@constraint(m, e5, -x[1]+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[3])

m = m 		 # model get returned when including this script. 
