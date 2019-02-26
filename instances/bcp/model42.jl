using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 5.0)
set_upper_bound(x[2], 5.0)
set_upper_bound(x[3], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4.1-(1^x[2]*x[1]+x[3]^x[2]))^2+ (3.3-(1.2^x[2]*x[1]+x[3]^x[2]))^2+ (2.9-(1.4^x[2]*x[1]+x[3]^x[2]))^2+ (2.7-(1.6^x[2]*x[1]+x[3]^x[2]))^2+ (2.6-(1.8^x[2]*x[1]+x[3]^x[2]))^2+ (2.7-(2^x[2]*x[1]+x[3]^x[2]))^2+ (2.8-(2.2^x[2]*x[1]+x[3]^x[2]))^2+ (3-(2.4^x[2]*x[1]+x[3]^x[2]))^2+ (3.4-(2.6^x[2]*x[1]+x[3]^x[2]))^2+ (3.8-(2.8^x[2]*x[1]+x[3]^x[2]))^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script.