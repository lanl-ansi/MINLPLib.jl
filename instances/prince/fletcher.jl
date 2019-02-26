using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1]*x[3]+x[2]*x[4])^2/( (x[1])^2+ (x[2])^2)- (x[3])^2- (x[4])^2 == -1.0)
@constraint(m, e2, x[1]-x[3] >= 1.0)
@constraint(m, e3, x[2]-x[4] >= 1.0)
@constraint(m, e4, x[3]-x[4] >= 0.0)
@NLconstraint(m, e5, -x[1]*x[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.