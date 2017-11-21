using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
setlowerbound(x[5], 1.0e-8)
setlowerbound(x[6], 1.0e-8)
setlowerbound(x[7], 1.0e-8)
setlowerbound(x[8], 1.0e-7)


# ----- Constraints ----- #
@constraint(m, e1, 2*x[2] == 2.0)
@constraint(m, e2, -x[1]+x[5] == 0.0)
@constraint(m, e3, -x[3]+x[6] == 0.0)
@NLconstraint(m, e4, x[6]*x[8]-x[4]+x[7] == 0.0)
@NLconstraint(m, e5, x[5]*x[8]-x[2] == 0.0)
@constraint(m, e6, -x[1]-x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
