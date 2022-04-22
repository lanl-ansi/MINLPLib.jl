using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[3], 1.0e-8)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt( (x[3])^2+ (x[1])^2+ (x[2])^2)+sqrt( (x[3])^2+ ((-4)+x[1])^2+ (x[2])^2)+sqrt( (x[3])^2+ ((-2)+x[1])^2+ ((-1)+x[2])^2)+x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
