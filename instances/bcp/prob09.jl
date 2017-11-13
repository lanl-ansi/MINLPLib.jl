using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3]
@variable(m, x[x_Idx])
setlowerbound(objvar, -100.0)
setupperbound(objvar, 100.0)
setlowerbound(x[2], -2.0)
setupperbound(x[2], 2.0)
setlowerbound(x[3], -2.0)
setupperbound(x[3], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 100* (x[3]- (x[2])^2)^2+ (1-x[2])^2-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
