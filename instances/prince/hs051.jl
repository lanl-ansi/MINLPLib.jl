using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]+3*x[2] == 4.0)
@constraint(m, e2, x[3]+x[4]-2*x[5] == 0.0)
@constraint(m, e3, x[2]-x[5] == 0.0)
@NLconstraint(m, e4, -( (x[1]-x[2])^2+ ((-2)+x[2]+x[3])^2+ ((-1)+x[4])^2+ ((-1)+x[5])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
