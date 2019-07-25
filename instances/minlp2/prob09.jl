using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, -100 <= objvar <= 100)
x_Idx = Any[2, 3]
@variable(m, -2 <= x[x_Idx] <= 2)


# ----- Constraints ----- #
@NLconstraint(m, e1, 100* (x[3]- (x[2])^2)^2+ (1-x[2])^2-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
