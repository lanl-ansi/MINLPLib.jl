using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5]
@variable(m, 0 <= x[x_Idx] <= 100)


# ----- Constraints ----- #
@constraint(m, x[4] == 1)
@constraint(m, x[5] == 1)
@constraint(m, e1, x[1]-x[2] <= 0.0)
@NLconstraint(m, e2, -( (x[4]+x[5]-1.9837)^2+ (x[4]*exp(-x[1])+x[5]*exp(-x[2])-0.8393)^2+ (x[4]*exp(-2*x[1])+x[5]*exp(-2*x[2])-0.4305)^2+ (x[4]*exp(-3*x[1])+x[5]*exp(-3*x[2])-0.2441)^2+ (x[4]*exp(-4*x[1])+x[5]*exp(-4*x[2])-0.1248)^2+ (x[4]*exp(-5*x[1])+x[5]*exp(-5*x[2])-0.0981)^2+ (x[4]*exp(-6*x[1])+x[5]*exp(-6*x[2])-0.0549)^2+ (x[4]*exp(-7*x[1])+x[5]*exp(-7*x[2])-0.0174)^2+ (x[4]*exp(-8*x[1])+x[5]*exp(-8*x[2])-0.0249)^2+ (x[4]*exp(-9*x[1])+x[5]*exp(-9*x[2])-0.0154)^2+ (x[4]*exp(-10*x[1])+x[5]*exp(-10*x[2])-0.0127)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
