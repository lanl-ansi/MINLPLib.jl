using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[2], -1.0)
setupperbound(x[2], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - ((-1)+x[2]-x[3])^2+x[1] == 0.0)
@NLconstraint(m, e2,  (x[2])^2 <= 2.0)
@NLconstraint(m, e3,  ((-1)+x[2])^2+ ((-1)+x[3])^2 <= 3.0)
@NLconstraint(m, e4, - (x[2])^2+x[3] == -1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
