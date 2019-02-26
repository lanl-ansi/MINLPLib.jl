using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -4.5)
set_upper_bound(x[1], 4.5)
set_lower_bound(x[2], -4.5)
set_upper_bound(x[2], 4.5)
set_lower_bound(x[3], -5.0)
set_upper_bound(x[3], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2+ (x[3])^2 <= 48.0)
@NLconstraint(m, e2, -( (x[1]-x[2])^2+0.111111111111111* ((-10)+x[1]+x[2])^2+ ((-5)+x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.