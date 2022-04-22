using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt(1e-8+ (x[1])^2+ (x[2])^2)+sqrt(1e-8+ ((-4)+x[1])^2+ (x[2])^2)+sqrt(1e-8+ ((-2)+x[1])^2+ ((-1)+x[2])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
