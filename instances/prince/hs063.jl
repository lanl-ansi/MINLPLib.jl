using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 8*x[1]+14*x[2]+7*x[3] == 56.0)
@NLconstraint(m, e2,  (x[1])^2+ (x[2])^2+ (x[3])^2 == 25.0)
@NLconstraint(m, e3, -(- (x[1])^2-2* (x[2])^2- (x[3])^2-x[1]*x[2]-x[1]*x[3])+objvar == 1000.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.