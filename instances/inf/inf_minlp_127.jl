using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[6]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5]
@variable(m, i[i_Idx])
setcategory(i[5], :Int)
setlowerbound(i[5], 0.0)
setupperbound(i[5], 100.0)
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setupperbound(i[1], 100.0)
setupperbound(i[2], 100.0)
setupperbound(i[3], 100.0)
setupperbound(i[4], 100.0)
setupperbound(i[5], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+x[6] == 0.0)
@NLconstraint(m, e2, i[1]*i[1]-i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5] == 4.010475e6)
@NLconstraint(m, e3, i[1]*i[1]+i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5] == 4.010525e6)
@NLconstraint(m, e4, i[2]*i[2]-i[1]*i[1]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5] == -3.989475e6)
@NLconstraint(m, e5, i[1]*i[1]+i[2]*i[2]-40000*i[3]*i[3]+i[4]*i[4]-5*i[5]*i[5] == 8025.0)
@NLconstraint(m, e6, i[1]*i[1]-100*i[2]*i[2]+i[3]*i[3]+i[4]*i[4]+i[5]*i[5] == 4.008e6)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script. 
