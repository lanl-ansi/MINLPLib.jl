using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[6], 1.0e-8)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt( (x[6])^2+ (x[1])^2+ (x[2])^2)+x[6]-x[3] <= 0.0)
@NLconstraint(m, e2, sqrt( (x[6])^2+ ((-4)+x[1])^2+ (x[2])^2)+x[6]-x[4] <= 0.0)
@NLconstraint(m, e3, sqrt( (x[6])^2+ ((-2)+x[1])^2+ ((-4)+x[2])^2)+x[6]-x[5] <= 0.0)
@constraint(m, e4, -x[3]-x[4]-x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
