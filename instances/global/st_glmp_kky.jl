using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -5*x[1]+8*x[2] <= 24.0)
@constraint(m, e2, -5*x[1]-8*x[2] <= 100.0)
@constraint(m, e3, -6*x[1]+3*x[2] <= 100.0)
@constraint(m, e4, -4*x[1]-5*x[2] <= -10.0)
@constraint(m, e5, 5*x[1]-8*x[2] <= 100.0)
@constraint(m, e6, 5*x[1]+8*x[2] <= 44.0)
@constraint(m, e7, 6*x[1]-3*x[2] <= 15.0)
@constraint(m, e8, 4*x[1]+5*x[2] <= 100.0)
@NLconstraint(m, e9, -(x[4]*x[5]+x[6]*x[7])-x[3]+objvar == 0.0)
@constraint(m, e10, 3*x[1]-4*x[2]-x[3] == 0.0)
@constraint(m, e11, x[1]+2*x[2]-x[4] == 1.5)
@constraint(m, e12, 2*x[1]-x[2]-x[5] == -4.0)
@constraint(m, e13, x[1]-2*x[2]-x[6] == -8.5)
@constraint(m, e14, 2*x[1]+x[2]-x[7] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.