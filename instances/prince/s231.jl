using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 0.333333333333333*x[1]+x[2] >= -0.1)
@constraint(m, e2, -0.333333333333333*x[1]+x[2] >= -0.1)
@NLconstraint(m, e3, -(100* (x[2]- (x[1])^2)^2+ (1-x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
