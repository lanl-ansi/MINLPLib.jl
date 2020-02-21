using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx] >= 0)
setupperbound(x[1], 10000.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2] >= 1.0)
@constraint(m, e2, 2*x[3]+2*x[4] >= 4.0)
@constraint(m, e3, x[1]+x[3] >= 3.0)
@constraint(m, e4, x[2]+x[4] >= 4.0)
@constraint(m, e5, -x[2]-2*x[3]-3*x[4] >= -8.0)
@constraint(m, e6, -3*x[2]-x[3]-2*x[4] >= -10.0)
@NLconstraint(m, e7, -(0.25*x[1]*x[1]-x[1]+0.25*x[2]*x[2]-x[2]+0.25*x[3]*x[3]-x[3]+0.25*x[4]*x[4]-x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
