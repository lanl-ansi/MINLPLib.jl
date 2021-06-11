using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -0.5)
set_upper_bound(x[1], 0.4)
set_lower_bound(x[2], -0.5)
set_upper_bound(x[2], 0.4)
set_lower_bound(x[3], -0.5)
set_upper_bound(x[3], 0.4)
set_lower_bound(x[4], -0.5)
set_upper_bound(x[4], 0.4)
set_lower_bound(x[5], -0.5)
set_upper_bound(x[5], 0.4)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1])^10+ (x[2])^10+ (x[3])^10+ (x[4])^10+ (x[5])^10)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
