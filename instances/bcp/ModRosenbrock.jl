using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], -5.0)
setupperbound(x[1], 5.0)
setlowerbound(x[2], -5.0)
setupperbound(x[2], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[2]-x[1]*x[1])^2+ ((-0.6)+6.4* ((-0.5)+x[2])^2-x[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
