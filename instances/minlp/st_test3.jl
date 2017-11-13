using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setcategory(i[12], :Int)
setcategory(i[5], :Int)
setcategory(i[3], :Int)
setcategory(i[2], :Int)
setcategory(i[13], :Int)
setcategory(i[6], :Int)
setcategory(i[4], :Int)
setcategory(i[9], :Int)
setcategory(i[10], :Int)
setcategory(i[7], :Int)
setcategory(i[11], :Int)
setcategory(i[1], :Int)
setupperbound(i[1], 1.0)
setupperbound(i[2], 1.0)
setupperbound(i[3], 1.0)
setupperbound(i[4], 1.0)
setupperbound(i[5], 1.0)
setupperbound(i[6], 1.0)
setupperbound(i[7], 1.0)
setupperbound(i[8], 1.0)
setupperbound(i[9], 1.0)
setupperbound(i[10], 1.0e15)
setupperbound(i[11], 1.0e15)
setupperbound(i[12], 1.0e15)
setupperbound(i[13], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, 2*i[1]+2*i[2]+i[10]+i[11] <= 10.0)
@constraint(m, e2, 2*i[1]+2*i[3]+i[10]+i[12] <= 10.0)
@constraint(m, e3, 2*i[2]+2*i[3]+i[11]+i[12] <= 10.0)
@constraint(m, e4, -8*i[1]+i[10] <= 0.0)
@constraint(m, e5, -8*i[2]+i[11] <= 0.0)
@constraint(m, e6, -8*i[3]+i[12] <= 0.0)
@constraint(m, e7, -2*i[4]-i[5]+i[10] <= 0.0)
@constraint(m, e8, -2*i[6]-i[7]+i[11] <= 0.0)
@constraint(m, e9, -2*i[8]-i[9]+i[12] <= 0.0)
@constraint(m, e10, i[13] <= 1.0)
@constraint(m, e11, -(5*i[1]*i[1]+5*i[1]+5*i[2]*i[2]-5*i[2]+5*i[3]*i[3]+5*i[3]+5*i[4]*i[4]+5*i[4]+9*i[10]*i[10]-i[10])+i[5]-i[6]+i[7]+i[8]+i[9]+i[11]+i[12]+i[13]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
