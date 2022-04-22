using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, -10 <= x[x_Idx] <= 10)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (2* (x[1])^3*x[2]- (x[2])^3)^2+ (x[2]- (x[2])^2+6*x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
