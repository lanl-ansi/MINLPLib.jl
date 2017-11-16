using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[3], 8.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (x[3]-3)*(x[3]-3)+(x[1]-2)*(x[1]-2)-objvar == 0.0)
@constraint(m, e2, x[1]-2*x[3]+x[4] == 1.0)
@constraint(m, e3, -2*x[1]+x[3]+x[5] == 2.0)
@constraint(m, e4, 2*x[1]+x[3]+x[6] == 14.0)
@NLconstraint(m, e5, x[4]*x[7] == 0.0)
@NLconstraint(m, e6, x[5]*x[8] == 0.0)
@NLconstraint(m, e7, x[6]*x[9] == 0.0)
@constraint(m, e8, 2*x[1]+x[7]-2*x[8]+2*x[9] == 10.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
