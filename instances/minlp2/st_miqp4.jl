using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[4, 5, 6]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3]
@variable(m, i[i_Idx])
setlowerbound(x[5], 0.0)
setcategory(i[3], :Int)
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 1.0)
setupperbound(i[2], 1.0)
setupperbound(i[3], 1.0)
setupperbound(x[4], 1.0e15)
setupperbound(x[5], 1.0e15)
setupperbound(x[6], 1.0e15)


# ----- Constraints ----- #
@constraint(m, e1, x[4]+x[5]-x[6] >= 0.0)
@constraint(m, e2, -5*i[1]+x[4] <= 0.0)
@constraint(m, e3, -10*i[2]+x[5] <= 0.0)
@constraint(m, e4, -30*i[3]+x[6] <= 0.0)
@NLconstraint(m, e5, -(5*x[4]*x[4]+2*x[4]+5*x[5]*x[5]+3*x[5]+10*x[6]*x[6]-500*x[6])-10*i[1]+4*i[2]-5*i[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
