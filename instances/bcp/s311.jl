using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-11)+ (x[1])^2+x[2])^2+ ((-7)+ (x[2])^2+x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

 
