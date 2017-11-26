using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (1.5-x[1]*(1-x[2]))^2+ (2.25-(1- (x[2])^2)*x[1])^2+ (2.625-(1- (x[2])^3)*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
