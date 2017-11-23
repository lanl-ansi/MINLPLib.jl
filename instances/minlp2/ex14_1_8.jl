using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[3]+objvar == 0.0)
@NLconstraint(m, e2, exp(10*x[1]/(1+0.01*x[1]))*(0.0476666666666666-0.0649999999999999*x[1])-x[1]-x[3] <= 0.0)
@NLconstraint(m, e3, x[1]-exp(10*x[1]/(1+0.01*x[1]))*(0.0476666666666666-0.0649999999999999*x[1])-x[3] <= 0.0)
@NLconstraint(m, e4, exp(10*x[2]/(1+0.01*x[2]))*(0.143-0.13*x[1]-0.195*x[2])+x[1]-3*x[2]-x[3] <= 0.0)
@NLconstraint(m, e5, (-exp(10*x[2]/(1+0.01*x[2]))*(0.143-0.13*x[1]-0.195*x[2]))-x[1]+3*x[2]-x[3] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
