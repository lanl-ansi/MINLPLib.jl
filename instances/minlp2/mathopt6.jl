using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -3.0)
setupperbound(x[1], 3.0)
setlowerbound(x[2], -3.0)
setupperbound(x[2], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(exp(sin(50*x[1]))+sin(60*exp(x[2]))+sin(70*sin(x[1]))+sin(sin(80*x[2]))-sin(10*x[1]+10*x[2])+0.25*( (x[1])^2+ (x[2])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
