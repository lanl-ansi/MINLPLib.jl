using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[4], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-3.5)+x[2])^2+ (4+x[3])^2)+x[1] == 0.0)
@NLconstraint(m, e2, 2*x[3]*x[4]+2*x[3] == 6.0)
@NLconstraint(m, e3, -x[3]*x[3]+x[2]-x[5] == 0.0)
@NLconstraint(m, e4, x[5]*x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
