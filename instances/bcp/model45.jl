using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1000.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (16.7242-exp(x[3])*x[2]-x[1])^2+ (16.8262-exp(5*x[3])*x[2]-x[1])^2+ (16.9657-exp(10*x[3])*x[2]-x[1])^2+ (17.1198-exp(15*x[3])*x[2]-x[1])^2+ (17.2902-exp(20*x[3])*x[2]-x[1])^2+ (17.4785-exp(25*x[3])*x[2]-x[1])^2+ (17.6865-exp(30*x[3])*x[2]-x[1])^2+ (17.9165-exp(35*x[3])*x[2]-x[1])^2+ (18.1706-exp(40*x[3])*x[2]-x[1])^2+ (18.7619-exp(50*x[3])*x[2]-x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script. 
