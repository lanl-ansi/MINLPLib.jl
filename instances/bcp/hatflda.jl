using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-7)
set_lower_bound(x[2], 1.0e-7)
set_lower_bound(x[3], 1.0e-7)
set_lower_bound(x[4], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+x[1])^2+ (x[1]-sqrt(x[2]))^2+ (x[2]-sqrt(x[3]))^2+ (x[3]-sqrt(x[4]))^2)+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

m = m 		 # model get returned when including this script.