using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 5*x[1]-x[2]+x[3] >= 0.0)
@NLconstraint(m, e2, (- (x[1])^2)- (x[2])^2-4*x[2]+x[3] >= 0.0)
@constraint(m, e3, -5*x[1]-x[2]+x[3] >= 0.0)
@constraint(m, e4, -x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.