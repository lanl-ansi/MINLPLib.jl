using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.25* (x[1])^2+ (x[2])^2 <= 1.0)
@constraint(m, e2, x[1]-2*x[2] == -1.0)
@NLconstraint(m, e3, -( ((-2)+x[1])^2+ ((-1)+x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
