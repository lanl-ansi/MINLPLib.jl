using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[4], -5.0)
set_upper_bound(x[4], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (127-exp(-5*x[4])*x[3]-x[2])^2+ (151-exp(-3*x[4])*x[3]-x[2])^2+ (379-exp(-x[4])*x[3]-x[2])^2+ (421-exp(5*x[4])*x[3]-x[2])^2+ (460-exp(3*x[4])*x[3]-x[2])^2+ (426-exp(x[4])*x[3]-x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
