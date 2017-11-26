using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 3*x[1]+4*x[2]+x[3] <= 2.0)
@constraint(m, e2, x[1]+4*x[2]+x[3] <= 1.0)
@NLconstraint(m, e3, (-11+3*x[1]+6*x[2]+2*x[3])/(1+x[1]+4*x[2]+x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
