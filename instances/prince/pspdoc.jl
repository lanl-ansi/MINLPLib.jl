using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_upper_bound(x[1], 0.0)
set_upper_bound(x[1], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt(1+ (x[1])^2+ (x[2]-x[3])^2)+sqrt(1+ (x[2])^2+ (x[3]-x[4])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.