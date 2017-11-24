using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setupperbound(x[1], 13.0)
setupperbound(x[2], 13.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-2*x[2] <= 100.0)
@constraint(m, e2, -3*x[1]-4*x[2] <= -12.0)
@constraint(m, e3, -x[1]-x[2] <= 100.0)
@constraint(m, e4, -x[1]+4*x[2] <= 100.0)
@constraint(m, e5, -x[1]+2*x[2] <= 18.0)
@constraint(m, e6, 3*x[1]+4*x[2] <= 100.0)
@constraint(m, e7, x[1]+x[2] <= 13.0)
@constraint(m, e8, x[1]-4*x[2] <= 8.0)
@constraint(m, e9, x[1]-x[4] == 0.0)
@constraint(m, e10, x[1]-x[2]-x[5] == -10.0)
@constraint(m, e11, x[1]+x[2]-x[6] == 6.0)
@NLconstraint(m, e12, -x[5]*x[6]+objvar-x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
