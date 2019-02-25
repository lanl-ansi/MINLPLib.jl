using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 100.0)
set_upper_bound(x[2], 5.0)
set_upper_bound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (8.93-x[1]/(1+exp(x[2]-9*x[3])))^2+ (10.8-x[1]/(1+exp(x[2]-14*x[3])))^2+ (18.59-x[1]/(1+exp(x[2]-21*x[3])))^2+ (22.33-x[1]/(1+exp(x[2]-28*x[3])))^2+ (39.35-x[1]/(1+exp(x[2]-42*x[3])))^2+ (56.11-x[1]/(1+exp(x[2]-57*x[3])))^2+ (61.73-x[1]/(1+exp(x[2]-63*x[3])))^2+ (64.62-x[1]/(1+exp(x[2]-70*x[3])))^2+ (67.08-x[1]/(1+exp(x[2]-79*x[3])))^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script.