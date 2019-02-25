using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, - (x[3])^2+x[1]+x[2] == 25.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2- (x[4])^2 == 25.0)
@NLconstraint(m, e3, - (x[5])^2+x[1] == 2.0)
@NLconstraint(m, e4, -(0.01* (x[1])^2+ (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.