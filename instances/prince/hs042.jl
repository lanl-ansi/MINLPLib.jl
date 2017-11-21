using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 2.0)
setupperbound(x[1], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[3])^2+ (x[4])^2 == 2.0)
@NLconstraint(m, e2, -( ((-1)+x[1])^2+ ((-2)+x[2])^2+ ((-3)+x[3])^2+ ((-4)+x[4])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
