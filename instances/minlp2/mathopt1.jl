using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx] <= 20)
setlowerbound(x[1], -10.0)
setlowerbound(x[2], -15.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(10* ( (x[1])^2-x[2])^2+ ((-1)+x[1])^2)+objvar == 0.0)
@NLconstraint(m, e2, x[1]-x[1]*x[2] == 0.0)
@constraint(m, e3, 3*x[1]+4*x[2] <= 25.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
