using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.5*(x[1]*x[1]+x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5])-10.5*x[1]-7.5*x[2]-3.5*x[3]-2.5*x[4]-1.5*x[5])+10*x[6]+objvar == 0.0)
@constraint(m, e2, 6*x[1]+3*x[2]+3*x[3]+2*x[4]+x[5] <= 6.5)
@constraint(m, e3, 10*x[1]+10*x[3]+x[6] <= 20.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
