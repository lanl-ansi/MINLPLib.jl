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
set_upper_bound(x[1], 5.0)
set_upper_bound(x[2], 5.0)
set_upper_bound(x[3], 5.0)
set_upper_bound(x[4], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2] <= -2.5)
@constraint(m, e2, -x[1]-x[3] <= -2.5)
@constraint(m, e3, -x[1]-x[4] <= -2.5)
@constraint(m, e4, -x[2]-x[3] <= -2.0)
@constraint(m, e5, -x[2]-x[4] <= -2.0)
@constraint(m, e6, -x[3]-x[4] <= -1.5)
@constraint(m, e7, x[1]+x[2] <= 7.5)
@constraint(m, e8, x[1]+x[3] <= 7.5)
@constraint(m, e9, x[1]+x[4] <= 7.5)
@constraint(m, e10, x[2]+x[3] <= 7.0)
@constraint(m, e11, x[2]+x[4] <= 7.0)
@constraint(m, e12, x[3]+x[4] <= 6.5)
@constraint(m, e13, x[1]+x[2]+x[3]+x[4] >= 5.0)
@NLconstraint(m, e14, -(-x[1]*x[3]-x[2]*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.