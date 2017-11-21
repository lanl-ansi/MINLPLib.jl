using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 2.0)
setupperbound(x[3], 3.0)


# ----- Constraints ----- #
@constraint(m, e1, 2*x[1]-x[2]+x[3]+objvar == 0.0)
@NLconstraint(m, e2, x[1]*(4*x[1]-2*x[2]+2*x[3])+x[2]*(2*x[2]-2*x[1]-x[3])+x[3]*(2*x[1]-x[2]+2*x[3])-20*x[1]+9*x[2]-13*x[3] >= -24.0)
@constraint(m, e3, x[1]+x[2]+x[3] <= 4.0)
@constraint(m, e4, 3*x[2]+x[3] <= 6.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
