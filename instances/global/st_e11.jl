using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 34.0)
setupperbound(x[2], 17.0)
setupperbound(x[3], 300.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 600*x[1]-x[1]*x[3]-50*x[3] == -5000.0)
@constraint(m, e2, 600*x[2]+50*x[3] == 15000.0)
@NLconstraint(m, e3, -(35*x[1]^0.6+35*x[2]^0.6)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
