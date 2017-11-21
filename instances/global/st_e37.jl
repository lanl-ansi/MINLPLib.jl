using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 100.0)
setupperbound(x[2], 100.0)
setlowerbound(x[4], 1.0)
setupperbound(x[4], 1.0)
setlowerbound(x[5], 1.0)
setupperbound(x[5], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2] <= 0.0)
@NLconstraint(m, e2, -( (x[4]+x[5]-1.9837)^2+ (x[4]*exp(-x[1])+x[5]*exp(-x[2])-0.8393)^2+ (x[4]*exp(-2*x[1])+x[5]*exp(-2*x[2])-0.4305)^2+ (x[4]*exp(-3*x[1])+x[5]*exp(-3*x[2])-0.2441)^2+ (x[4]*exp(-4*x[1])+x[5]*exp(-4*x[2])-0.1248)^2+ (x[4]*exp(-5*x[1])+x[5]*exp(-5*x[2])-0.0981)^2+ (x[4]*exp(-6*x[1])+x[5]*exp(-6*x[2])-0.0549)^2+ (x[4]*exp(-7*x[1])+x[5]*exp(-7*x[2])-0.0174)^2+ (x[4]*exp(-8*x[1])+x[5]*exp(-8*x[2])-0.0249)^2+ (x[4]*exp(-9*x[1])+x[5]*exp(-9*x[2])-0.0154)^2+ (x[4]*exp(-10*x[1])+x[5]*exp(-10*x[2])-0.0127)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
