using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
i_Idx = Any[6, 7, 8, 9]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setlowerbound(i[8], 0.0)
setupperbound(i[8], 100.0)
setcategory(i[7], :Int)
setlowerbound(i[7], 0.0)
setupperbound(i[7], 100.0)
setcategory(i[9], :Int)
setlowerbound(i[9], 0.0)
setupperbound(i[9], 100.0)
setcategory(i[6], :Int)
setlowerbound(i[6], 0.0)
setupperbound(i[6], 100.0)
setlowerbound(x[2], 12.0)
setupperbound(x[2], 60.0)
setlowerbound(x[3], 12.0)
setupperbound(x[3], 60.0)
setlowerbound(x[4], 12.0)
setupperbound(x[4], 60.0)
setlowerbound(x[5], 12.0)
setupperbound(x[5], 60.0)
setlowerbound(i[6], 12.0)
setupperbound(i[6], 60.0)
setlowerbound(i[7], 12.0)
setupperbound(i[7], 60.0)
setlowerbound(i[8], 12.0)
setupperbound(i[8], 60.0)
setlowerbound(i[9], 12.0)
setupperbound(i[9], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-x[2]*x[3]/(x[4]*x[5]))^2+objvar == 0.0)
@constraint(m, e2, x[2]-i[6] == 0.0)
@constraint(m, e3, x[3]-i[7] == 0.0)
@constraint(m, e4, x[4]-i[8] == 0.0)
@constraint(m, e5, x[5]-i[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
