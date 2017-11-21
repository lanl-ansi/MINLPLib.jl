using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[4], -5.0)
setupperbound(x[4], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (127+(-x[3]*exp(-5*x[4]))-x[2])^2+ (151+(-x[3]*exp(-3*x[4]))-x[2])^2+ (379+(-x[3]*exp(-x[4]))-x[2])^2+ (421+(-x[3]*exp(5*x[4]))-x[2])^2+ (460+(-x[3]*exp(3*x[4]))-x[2])^2+ (426+(-x[3]*exp(x[4]))-x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
