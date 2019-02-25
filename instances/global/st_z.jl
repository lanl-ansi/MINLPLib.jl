using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]-x[3] <= 0.0)
@constraint(m, e2, -x[1]+x[2]-x[3] <= 0.0)
@constraint(m, e3, 12*x[1]+5*x[2]+12*x[3] <= 22.8)
@constraint(m, e4, 12*x[1]+12*x[2]+7*x[3] <= 17.1)
@constraint(m, e5, -6*x[1]+x[2]+x[3] <= 1.9)
@NLconstraint(m, e6, -(- (x[1])^2- (x[2])^2- (x[3])^2+2*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.