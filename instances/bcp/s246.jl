using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[3]- (0.5*x[1]+0.5*x[2])^2)^2+ (1-x[1])^2+ (1-x[2])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

 
