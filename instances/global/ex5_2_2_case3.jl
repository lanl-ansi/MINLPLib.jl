using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 100.0)
setupperbound(x[2], 200.0)
setupperbound(x[3], 500.0)
setupperbound(x[4], 500.0)
setupperbound(x[5], 500.0)
setupperbound(x[6], 500.0)
setupperbound(x[7], 500.0)
setupperbound(x[8], 500.0)
setupperbound(x[9], 500.0)


# ----- Constraints ----- #
@constraint(m, e1, -9*x[1]-15*x[2]+6*x[3]+13*x[4]+10*x[5]+10*x[6]-objvar == 0.0)
@constraint(m, e2, -x[3]-x[4]+x[8]+x[9] == 0.0)
@constraint(m, e3, x[1]-x[5]-x[8] == 0.0)
@constraint(m, e4, x[2]-x[6]-x[9] == 0.0)
@NLconstraint(m, e5, x[7]*x[8]-2.5*x[1]+2*x[5] <= 0.0)
@NLconstraint(m, e6, x[7]*x[9]-1.5*x[2]+2*x[6] <= 0.0)
@NLconstraint(m, e7, x[7]*x[8]+x[7]*x[9]-3*x[3]-x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
