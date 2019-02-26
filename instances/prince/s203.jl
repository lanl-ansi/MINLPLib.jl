using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, (1-x[5])*x[4]+x[1] == 1.5)
@NLconstraint(m, e2, (1- (x[5])^2)*x[4]+x[2] == 2.25)
@NLconstraint(m, e3, (1- (x[5])^3)*x[4]+x[3] == 2.625)
@NLconstraint(m, e4, -( (x[1])^2+ (x[2])^2+ (x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.