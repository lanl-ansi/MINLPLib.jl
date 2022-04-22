using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1)+ (x[1])^2+ (x[2])^2+ (x[3])^2)^2+ ((-1)+ (x[1])^2+ (x[2])^2+ ((-2)+x[3])^2)^2+ ((-1)+x[1]+x[2]+x[3])^2+ (1+x[1]+x[2]-x[3])^2+ ((-36)+3* (x[2])^2+ (x[1])^3+ (1-x[1]+5*x[3])^2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
