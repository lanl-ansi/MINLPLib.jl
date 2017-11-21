using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(1e-8+ ((-0.171747132)+x[1])^2)-x[2] <= 0.0)
@NLconstraint(m, e2, sqrt(1e-8+ ((-0.843266708)+x[1])^2)-x[3] <= 0.0)
@NLconstraint(m, e3, sqrt(1e-8+ ((-0.550375356)+x[1])^2)-x[4] <= 0.0)
@constraint(m, e4, -x[2]-x[3]-x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
