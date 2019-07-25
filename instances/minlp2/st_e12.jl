using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx] >= 0)
setupperbound(x[1], 3.0)
setupperbound(x[2], 4.0)
setupperbound(x[3], 2.0)
setupperbound(x[4], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -3*x[1]+x[2]-3*x[3] == 0.0)
@constraint(m, e2, x[1]+2*x[3] <= 4.0)
@constraint(m, e3, x[2]+2*x[4] <= 4.0)
@NLconstraint(m, e4, -(x[1]^0.6+x[2]^0.6-6*x[1])+4*x[3]-3*x[4]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
