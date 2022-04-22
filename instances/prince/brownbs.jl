using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-1000000)+x[1])^2+ ((-2e-6)+x[2])^2+ ((-2)+x[1]*x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
