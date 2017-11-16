using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
b_Idx = Any[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
@variable(m, b[b_Idx])
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setlowerbound(x[3], 0.0)
setcategory(b[14], :Bin)
setcategory(b[20], :Bin)
setcategory(b[15], :Bin)
setlowerbound(x[11], 0.0)
setcategory(b[19], :Bin)
setlowerbound(x[12], 0.0)
setcategory(b[25], :Bin)
setlowerbound(x[2], 0.0)
setcategory(b[24], :Bin)
setcategory(b[23], :Bin)
setcategory(b[16], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[17], :Bin)
setcategory(b[26], :Bin)
setcategory(b[21], :Bin)
setcategory(b[28], :Bin)
setlowerbound(x[10], 0.0)
setcategory(b[22], :Bin)
setlowerbound(x[4], 0.01)
setupperbound(x[4], 4.0)
setlowerbound(x[5], 0.01)
setupperbound(x[5], 4.0)
setlowerbound(x[6], 0.01)
setupperbound(x[6], 4.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (416000*(1-exp(-0.1*x[1]/x[4]))*x[4]+37440*x[1]-100*x[4]+124615.384615385*(1-exp(-0.13*x[2]/x[5]))*x[5]+9000*x[2]-90*x[5]+278666.666666667*(1-exp(-0.09*x[3]/x[6]))*x[6]+15840*x[3]-80*x[6])/x[13]+objvar == 0.0)
@constraint(m, e2, -1300*x[1]+x[7]+350*x[13] == 0.0)
@constraint(m, e3, -1000*x[2]+x[8]+300*x[13] == 0.0)
@constraint(m, e4, -1100*x[3]+x[9]+300*x[13] == 0.0)
@constraint(m, e5, x[7]-300*x[13] <= 0.0)
@constraint(m, e6, x[8]-300*x[13] <= 0.0)
@constraint(m, e7, x[9]-300*x[13] <= 0.0)
@constraint(m, e8, x[4]-0.01*b[14]-b[15]-2*b[16]-3*b[17]-4*b[18] == 0.0)
@constraint(m, e9, x[5]-0.01*b[19]-b[20]-2*b[21]-3*b[22]-4*b[23] == 0.0)
@constraint(m, e10, x[6]-0.01*b[24]-b[25]-2*b[26]-3*b[27]-4*b[28] == 0.0)
@constraint(m, e11, -b[14]-b[15]-b[16]-b[17]-b[18] == -1.0)
@constraint(m, e12, -b[19]-b[20]-b[21]-b[22]-b[23] == -1.0)
@constraint(m, e13, -b[24]-b[25]-b[26]-b[27]-b[28] == -1.0)
@constraint(m, e14, -x[1]-2*x[4]+x[10] == 0.0)
@constraint(m, e15, -x[2]-3*x[5]+x[11] == 0.0)
@constraint(m, e16, -x[3]-3*x[6]+x[12] == 0.0)
@constraint(m, e17, x[10]+x[11]+x[12]-x[13] <= 0.0)
@constraint(m, e18, x[1]+150*b[14] <= 150.0)
@constraint(m, e19, x[2]+150*b[19] <= 150.0)
@constraint(m, e20, x[3]+150*b[24] <= 150.0)
@constraint(m, e21, x[4] >= 1.0)
@constraint(m, e22, x[5] >= 1.0)
@constraint(m, e23, x[6] >= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
