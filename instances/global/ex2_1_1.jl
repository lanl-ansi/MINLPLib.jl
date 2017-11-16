using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(42*x[1]-0.5*(100*x[1]*x[1]+100*x[2]*x[2]+100*x[3]*x[3]+100*x[4]*x[4]+100*x[5]*x[5])+44*x[2]+45*x[3]+47*x[4]+47.5*x[5])+objvar == 0.0)
@constraint(m, e2, 20*x[1]+12*x[2]+11*x[3]+7*x[4]+4*x[5] <= 40.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
