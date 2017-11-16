using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 5.0)
setupperbound(x[2], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, 2*x[1]+x[2] <= 14.0)
@constraint(m, e2, x[1]+x[2] <= 10.0)
@constraint(m, e3, 1.44*x[1]+x[2] >= 4.89)
@constraint(m, e4, -1.58*x[1]+x[2] <= 5.65)
@constraint(m, e5, -1.03*x[1]+x[2] <= 5.93)
@constraint(m, e6, x[1]+2*x[2] >= 6.0)
@constraint(m, e7, x[1]-x[2] <= 3.0)
@NLconstraint(m, e8, -x[3]*x[4]+objvar == 0.0)
@constraint(m, e9, x[1]+x[2]-x[3] == 0.0)
@constraint(m, e10, x[1]-x[2]-x[4] == -7.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
