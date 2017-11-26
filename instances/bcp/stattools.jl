using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 1000.0)
setupperbound(x[2], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.1913-(1-exp(-0.1*x[2]))*x[1])^2+ (0.0737-(1-exp(-0.2*x[2]))*x[1])^2+ (0.2702-(1-exp(-0.3*x[2]))*x[1])^2+ (0.427-(1-exp(-0.4*x[2]))*x[1])^2+ (0.2968-(1-exp(-0.5*x[2]))*x[1])^2+ (0.4474-(1-exp(-0.6*x[2]))*x[1])^2+ (0.4941-(1-exp(-0.7*x[2]))*x[1])^2+ (0.5682-(1-exp(-0.8*x[2]))*x[1])^2+ (0.563-(1-exp(-0.9*x[2]))*x[1])^2+ (0.6636-(1-exp(-x[2]))*x[1])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])

m = m 		 # model get returned when including this script. 
