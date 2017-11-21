using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(2e-8+ (x[1])^2+ (x[2])^2)-x[3] <= 0.0)
@NLconstraint(m, e2, sqrt(2e-8+ ((-4)+x[1])^2+ (x[2])^2)-x[4] <= 0.0)
@NLconstraint(m, e3, sqrt(2e-8+ ((-2)+x[1])^2+ ((-4)+x[2])^2)-x[5] <= 0.0)
@constraint(m, e4, -x[3]-x[4]-x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
