using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[7], 0.0)
set_upper_bound(x[6], 0.0)
set_upper_bound(x[3], 0.0)
set_lower_bound(x[1], 2.0)
set_upper_bound(x[1], 50.0)
set_lower_bound(x[2], -50.0)
set_upper_bound(x[2], 50.0)
set_upper_bound(x[3], 50.0)
set_lower_bound(x[4], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, 10*x[1]-x[2] >= 10.0)
@constraint(m, e2, 10*x[1]-x[2] >= 10.0)
@constraint(m, e3, 10*x[1]-x[2] >= 10.0)
@constraint(m, e4, 10*x[1]-x[2] >= 10.0)
@constraint(m, e5, 10*x[1]-x[2] >= 10.0)
@constraint(m, e6, 10*x[1]-x[2] >= 10.0)
@constraint(m, e7, 10*x[1]-x[2] >= 10.0)
@constraint(m, e8, 10*x[1]-x[2] >= 10.0)
@constraint(m, e9, 10*x[1]-x[2] >= 10.0)
@constraint(m, e10, 10*x[1]-x[2] >= 10.0)
@constraint(m, e11, 10*x[1]-x[2] >= 10.0)
@constraint(m, e12, 10*x[1]-x[2] >= 10.0)
@constraint(m, e13, 10*x[1]-x[2] >= 10.0)
@NLconstraint(m, e14, -(0.01*( (x[1])^2+ (x[3])^2+ (x[5])^2+ (x[6])^2)+ (x[2])^2+ (x[4])^2+ (x[7])^2)+objvar == -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.