using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx] >= 0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 100.0)
setupperbound(x[5], 200.0)
setupperbound(x[6], 100.0)
setupperbound(x[7], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((9-6*x[1]-16*x[2]-15*x[3])*x[4]+(15-6*x[1]-16*x[2]-15*x[3])*x[5])+x[6]-5*x[7]-objvar == 0.0)
@NLconstraint(m, e2, x[3]*x[4]+x[3]*x[5] <= 50.0)
@constraint(m, e3, x[4]+x[6] <= 100.0)
@constraint(m, e4, x[5]+x[7] <= 200.0)
@NLconstraint(m, e5, (-2.5+3*x[1]+x[2]+x[3])*x[4]-0.5*x[6] <= 0.0)
@NLconstraint(m, e6, (-1.5+3*x[1]+x[2]+x[3])*x[5]+0.5*x[7] <= 0.0)
@constraint(m, e7, x[1]+x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
