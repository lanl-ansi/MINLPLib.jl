using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[6, 7]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
setcategory(i[4], :Int)
setlowerbound(x[7], 0.0)
setcategory(i[3], :Int)
setlowerbound(x[6], 0.0)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setlowerbound(i[1], 12.0)
setupperbound(i[1], 60.0)
setlowerbound(i[2], 12.0)
setupperbound(i[2], 60.0)
setlowerbound(i[3], 12.0)
setupperbound(i[3], 60.0)
setlowerbound(i[4], 12.0)
setupperbound(i[4], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -1000000*i[1]*i[2]/(i[3]*i[4])-x[6]+x[7] == -144279.32477276)
@constraint(m, e2, objvar-x[6]-x[7] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
