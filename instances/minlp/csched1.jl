using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
b_Idx = Any[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[4], 0.01)
setupperbound(x[4], 20.0)
setlowerbound(x[5], 0.01)
setupperbound(x[5], 20.0)
setlowerbound(x[6], 0.01)
setupperbound(x[6], 20.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-x[13]*objvar)-(416000*x[4]*(1-exp(-0.1*x[1]/x[4]))+37440*x[1]-100*x[4]+124615.384615385*x[5]*(1-exp(-0.13*x[2]/x[5]))+9000*x[2]-90*x[5]+278666.666666667*x[6]*(1-exp(-0.09*x[3]/x[6]))+15840*x[3]-80*x[6]) == 0.0)
@constraint(m, e2, -1300*x[1]+x[7]+350*x[13] == 0.0)
@constraint(m, e3, -1000*x[2]+x[8]+300*x[13] == 0.0)
@constraint(m, e4, -1100*x[3]+x[9]+300*x[13] == 0.0)
@constraint(m, e5, x[7]-300*x[13] <= 0.0)
@constraint(m, e6, x[8]-300*x[13] <= 0.0)
@constraint(m, e7, x[9]-300*x[13] <= 0.0)
@constraint(m, e8, x[4]-0.01*b[14]-b[15]-2*b[16]-3*b[17]-4*b[18]-5*b[19]-6*b[20]-7*b[21]-8*b[22]-9*b[23]-10*b[24]-11*b[25]-12*b[26]-13*b[27]-14*b[28]-15*b[29]-16*b[30]-17*b[31]-18*b[32]-19*b[33]-20*b[34] == 0.0)
@constraint(m, e9, x[5]-0.01*b[35]-b[36]-2*b[37]-3*b[38]-4*b[39]-5*b[40]-6*b[41]-7*b[42]-8*b[43]-9*b[44]-10*b[45]-11*b[46]-12*b[47]-13*b[48]-14*b[49]-15*b[50]-16*b[51]-17*b[52]-18*b[53]-19*b[54]-20*b[55] == 0.0)
@constraint(m, e10, x[6]-0.01*b[56]-b[57]-2*b[58]-3*b[59]-4*b[60]-5*b[61]-6*b[62]-7*b[63]-8*b[64]-9*b[65]-10*b[66]-11*b[67]-12*b[68]-13*b[69]-14*b[70]-15*b[71]-16*b[72]-17*b[73]-18*b[74]-19*b[75]-20*b[76] == 0.0)
@constraint(m, e11, -b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]-b[34] == -1.0)
@constraint(m, e12, -b[35]-b[36]-b[37]-b[38]-b[39]-b[40]-b[41]-b[42]-b[43]-b[44]-b[45]-b[46]-b[47]-b[48]-b[49]-b[50]-b[51]-b[52]-b[53]-b[54]-b[55] == -1.0)
@constraint(m, e13, -b[56]-b[57]-b[58]-b[59]-b[60]-b[61]-b[62]-b[63]-b[64]-b[65]-b[66]-b[67]-b[68]-b[69]-b[70]-b[71]-b[72]-b[73]-b[74]-b[75]-b[76] == -1.0)
@constraint(m, e14, -x[1]-2*x[4]+x[10] == 0.0)
@constraint(m, e15, -x[2]-3*x[5]+x[11] == 0.0)
@constraint(m, e16, -x[3]-3*x[6]+x[12] == 0.0)
@constraint(m, e17, x[10]+x[11]+x[12]-x[13] <= 0.0)
@constraint(m, e18, x[1]+150*b[14] <= 150.0)
@constraint(m, e19, x[2]+150*b[35] <= 150.0)
@constraint(m, e20, x[3]+150*b[56] <= 150.0)
@constraint(m, e21, x[4] >= 1.0)
@constraint(m, e22, x[5] >= 1.0)
@constraint(m, e23, x[6] >= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
