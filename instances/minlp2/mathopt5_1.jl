using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, -5 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(exp(-x[1])- (sin(x[1]))^3)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
