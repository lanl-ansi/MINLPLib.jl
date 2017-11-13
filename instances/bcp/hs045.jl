using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 3.0)
setupperbound(x[4], 4.0)
setupperbound(x[5], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.00833333333333333*x[1]*x[2]*x[3]*x[4]*x[5]+x[6] == 2.0)


# ----- Objective ----- #
@objective(m, Min, x[6])
m = m 		 # model get returned when including this script. 
