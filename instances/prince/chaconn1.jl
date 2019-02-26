using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[2])^2+ (x[3])^4-x[1] <= 0.0)
@NLconstraint(m, e2,  (2-x[2])^2+ (2-x[3])^2-x[1] <= 0.0)
@NLconstraint(m, e3, 2*exp(x[3]-x[2])-x[1] <= 0.0)
@constraint(m, e4, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.