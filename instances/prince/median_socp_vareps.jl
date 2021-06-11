using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-7)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt( (x[1])^2+ ((-0.171747132)+x[2])^2)-x[3] <= 0.0)
@NLconstraint(m, e2, sqrt( (x[1])^2+ ((-0.843266708)+x[2])^2)-x[4] <= 0.0)
@NLconstraint(m, e3, sqrt( (x[1])^2+ ((-0.550375356)+x[2])^2)-x[5] <= 0.0)
@constraint(m, e4, -x[1]-x[3]-x[4]-x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
