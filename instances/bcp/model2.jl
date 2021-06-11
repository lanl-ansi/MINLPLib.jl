using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -100.0)
set_upper_bound(x[1], 1000.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (109-(1-exp(-x[2]))*x[1])^2+ (149-(1-exp(-2*x[2]))*x[1])^2+ (149-(1-exp(-3*x[2]))*x[1])^2+ (191-(1-exp(-5*x[2]))*x[1])^2+ (213-(1-exp(-7*x[2]))*x[1])^2+ (224-(1-exp(-10*x[2]))*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
