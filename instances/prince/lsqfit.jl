using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] == 0.85)
@NLconstraint(m, e2, -0.5*( ((-0.25)+0.1*x[1]+x[2])^2+ ((-0.3)+0.3*x[1]+x[2])^2+ ((-0.625)+0.5*x[1]+x[2])^2+ ((-0.701)+0.7*x[1]+x[2])^2+ ((-1)+0.9*x[1]+x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
