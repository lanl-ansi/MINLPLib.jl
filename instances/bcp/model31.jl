using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 10000.0)
set_upper_bound(x[2], 10000.0)
set_upper_bound(x[3], 10000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.126-x[1]*x[3]/(1+x[1]+x[2]))^2+ (0.219-2*x[1]*x[3]/(1+2*x[1]+x[2]))^2+ (0.076-x[1]*x[3]/(1+x[1]+2*x[2]))^2+ (0.126-2*x[1]*x[3]/(1+2*x[1]+2*x[2]))^2+ (0.186-0.1*x[1]*x[3]/(1+0.1*x[1]))^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script. 
