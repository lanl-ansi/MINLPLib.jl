using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.2)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 0.2)
setupperbound(x[2], 2.0)
setlowerbound(x[3], 0.2)
setupperbound(x[3], 3.0)
setlowerbound(x[4], 0.2)
setupperbound(x[4], 4.0)
setlowerbound(x[5], 0.2)
setupperbound(x[5], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.00833333333333333*x[1]*x[2]*x[3]*x[4]*x[5]+objvar == 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
