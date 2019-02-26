using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1])^2+ (x[2])^2 == 1.0)
@NLconstraint(m, e2, -(1e-6*( (x[1])^2+ (x[2])^2)-x[1])+objvar == -1.0e-6)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.