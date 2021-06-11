using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -50.0)
set_upper_bound(x[1], 50.0)
set_lower_bound(x[2], -50.0)
set_upper_bound(x[2], 50.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (4-(exp(2*x[1])+exp(2*x[2])))^2+ (4.1-(exp(2.1*x[1])+exp(2.1*x[2])))^2+ (4.3-(exp(2.2*x[1])+exp(2.2*x[2])))^2+ (4.5-(exp(2.3*x[1])+exp(2.3*x[2])))^2+ (4.6-(exp(2.4*x[1])+exp(2.4*x[2])))^2+ (4.8-(exp(2.5*x[1])+exp(2.5*x[2])))^2+ (5-(exp(2.6*x[1])+exp(2.6*x[2])))^2+ (5.1-(exp(2.7*x[1])+exp(2.7*x[2])))^2+ (5.3-(exp(2.8*x[1])+exp(2.8*x[2])))^2+ (5.5-(exp(2.9*x[1])+exp(2.9*x[2])))^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
