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
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 2.0)
set_upper_bound(x[3], 3.0)
set_upper_bound(x[4], 4.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (8-(x[1]+x[2]+x[3]+x[4]))^2+ (18-( (x[1])^2+ (x[2])^2+ (x[3])^2+ (x[4])^2))^2+ (44-( (x[1])^3+ (x[2])^3+ (x[3])^3+ (x[4])^3))^2+ (114-( (x[1])^4+ (x[2])^4+ (x[3])^4+ (x[4])^4))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
