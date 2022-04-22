using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-13)+5* (x[2])^2-2*x[2]- (x[2])^3+x[1])^2+ ((-29)+ (x[2])^2-14*x[2]+ (x[2])^3+x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
