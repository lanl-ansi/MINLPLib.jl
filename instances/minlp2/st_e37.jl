using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 100.0)
set_upper_bound(x[2], 100.0)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 1.0)
set_lower_bound(x[5], 1.0)
set_upper_bound(x[5], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2] <= 0.0)
@NLconstraint(m, e2, -( ((-1.9837)+x[4]+x[5])^2+ ((-0.8393)+exp(-x[1])*x[4]+exp(-x[2])*x[5])^2+ ((-0.4305)+exp(-2*x[1])*x[4]+exp(-2*x[2])*x[5])^2+ ((-0.2441)+exp(-3*x[1])*x[4]+exp(-3*x[2])*x[5])^2+ ((-0.1248)+exp(-4*x[1])*x[4]+exp(-4*x[2])*x[5])^2+ ((-0.0981)+exp(-5*x[1])*x[4]+exp(-5*x[2])*x[5])^2+ ((-0.0549)+exp(-6*x[1])*x[4]+exp(-6*x[2])*x[5])^2+ ((-0.0174)+exp(-7*x[1])*x[4]+exp(-7*x[2])*x[5])^2+ ((-0.0249)+exp(-8*x[1])*x[4]+exp(-8*x[2])*x[5])^2+ ((-0.0154)+exp(-9*x[1])*x[4]+exp(-9*x[2])*x[5])^2+ ((-0.0127)+exp(-10*x[1])*x[4]+exp(-10*x[2])*x[5])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
