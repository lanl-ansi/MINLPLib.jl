using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
b_Idx = Any[5, 6, 7, 8]
@variable(m, b[b_Idx])
i_Idx = Any[9, 10, 11, 12]
@variable(m, i[i_Idx])
setcategory(i[12], :Int)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setcategory(b[8], :Bin)
setcategory(b[7], :Bin)
setlowerbound(x[2], 0.0)
setcategory(i[9], :Int)
setcategory(i[10], :Int)
setcategory(b[5], :Bin)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[13], 0.0)
setcategory(i[11], :Int)
setcategory(b[6], :Bin)
setupperbound(i[9], 100.0)
setupperbound(i[10], 100.0)
setupperbound(i[11], 100.0)
setupperbound(i[12], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[14] == 0.0)
@constraint(m, e2, x[2]-5*x[15] == -200.0)
@constraint(m, e3, x[3]-1035*x[16] == -200.0)
@constraint(m, e4, x[4] == 150.0)
@constraint(m, e5, -x[1]+x[2]-2700*b[6] >= -2699.99)
@constraint(m, e6, -x[1]+x[3]-2700*b[7] >= -2699.99)
@constraint(m, e7, -x[1]+x[4]-2700*b[8] >= -2699.99)
@constraint(m, e8, x[1]-x[2]-2700*b[5] >= -2699.99)
@constraint(m, e9, -x[2]+x[3]-2700*b[7] >= -2699.99)
@constraint(m, e10, -x[2]+x[4]-2700*b[8] >= -2699.99)
@constraint(m, e11, x[1]-x[3]-2700*b[5] >= -2699.99)
@constraint(m, e12, x[2]-x[3]-2700*b[6] >= -2699.99)
@constraint(m, e13, -x[3]+x[4]-2700*b[8] >= -2699.99)
@constraint(m, e14, x[1]-x[4] >= 0.01)
@constraint(m, e15, x[2]-x[4] >= 0.01)
@constraint(m, e16, x[3]-x[4] >= 0.01)
@constraint(m, e17, -100000*b[5]+i[9] == 0.0)
@constraint(m, e18, -100000*b[6]+i[10] == 0.0)
@constraint(m, e19, -100000*b[7]+i[11] == 0.0)
@constraint(m, e20, -100000*b[8]+i[12] == 0.0)
@constraint(m, e21, b[5]+b[6]+b[7]+b[8] == 1.0)
@constraint(m, e22, -450*i[9]+x[13] >= 0.0)
@constraint(m, e23, -450*i[10]+x[13] >= 0.0)
@constraint(m, e24, -450*i[11]+x[13] >= 0.0)
@constraint(m, e25, -450*i[12]+x[13] >= 0.0)
@constraint(m, e26, x[13] <= 5.0e7)
@NLconstraint(m, e27, -(-(200+x[14])*i[9]-5*x[15]*i[10]-1035*x[16]*i[11])-0.85*x[13]+x[17] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[17])

m = m 		 # model get returned when including this script. 
