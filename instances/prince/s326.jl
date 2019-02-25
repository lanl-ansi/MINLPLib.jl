using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 6*x[1]- (x[1])^2-4*x[2] >= -11.0)
@NLconstraint(m, e2, x[1]*x[2]-3*x[2]-exp((-3)+x[1]) >= -1.0)
@NLconstraint(m, e3, -( (x[1])^2+ (x[2])^2-16*x[1]-10*x[2])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.