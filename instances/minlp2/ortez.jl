using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87]
@variable(m, x[x_Idx])
b_Idx = Any[49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[1], 254.001)
set_upper_bound(x[2], 254.001)
set_upper_bound(x[3], 254.001)
set_lower_bound(x[85], 254.0)
set_upper_bound(x[85], 254.0)


# ----- Constraints ----- #
@constraint(m, e1, b[58]+b[61]+b[64] <= 1.0)
@constraint(m, e2, b[59]+b[62]+b[65] <= 1.0)
@constraint(m, e3, b[60]+b[63]+b[66] <= 1.0)
@constraint(m, e4, x[4]+x[5]+x[6]+x[13]+x[14]+x[15] == 1.0)
@constraint(m, e5, x[7]+x[8]+x[9]+x[16]+x[17]+x[18] == 1.0)
@constraint(m, e6, x[10]+x[11]+x[12]+x[19]+x[20]+x[21] == 1.0)
@constraint(m, e7, -3.16363636363636*x[4]-3.16363636363636*x[5]-3.16363636363636*x[6]+56.3636363636364*b[58]+43.2*b[61]+33.8181818181818*b[64]-x[85]+x[86] <= 0.0)
@constraint(m, e8, -3.16363636363636*x[7]-3.16363636363636*x[8]-3.16363636363636*x[9]+56.3636363636364*b[59]+43.2*b[62]+33.8181818181818*b[65]-x[86]+x[87] <= 0.0)
@NLconstraint(m, e9, -6.353*x[40]*x[1]^0.172+x[22]+x[23]+x[24] <= 0.0)
@NLconstraint(m, e10, -6.353*x[41]*x[2]^0.172+x[25]+x[26]+x[27] <= 0.0)
@NLconstraint(m, e11, -6.353*x[42]*x[3]^0.172+x[28]+x[29]+x[30] <= 0.0)
@NLconstraint(m, e12, -0.32*x[43]*x[1]^0.617+x[31]+x[32]+x[33] <= 0.0)
@NLconstraint(m, e13, -0.32*x[44]*x[2]^0.617+x[34]+x[35]+x[36] <= 0.0)
@NLconstraint(m, e14, -0.32*x[45]*x[3]^0.617+x[37]+x[38]+x[39] <= 0.0)
@constraint(m, e15, x[22]+x[31]-50*b[58] <= 0.0)
@constraint(m, e16, x[25]+x[34]-50*b[59] <= 0.0)
@constraint(m, e17, x[28]+x[37]-50*b[60] <= 0.0)
@constraint(m, e18, x[23]+x[32]-50*b[61] <= 0.0)
@constraint(m, e19, x[26]+x[35]-50*b[62] <= 0.0)
@constraint(m, e20, x[29]+x[38]-50*b[63] <= 0.0)
@constraint(m, e21, x[24]+x[33]-50*b[64] <= 0.0)
@constraint(m, e22, x[27]+x[36]-50*b[65] <= 0.0)
@constraint(m, e23, x[30]+x[39]-50*b[66] <= 0.0)
@constraint(m, e24, x[4]+x[13]-b[58] <= 0.0)
@constraint(m, e25, x[7]+x[16]-b[59] <= 0.0)
@constraint(m, e26, x[10]+x[19]-b[60] <= 0.0)
@constraint(m, e27, x[5]+x[14]-b[61] <= 0.0)
@constraint(m, e28, x[8]+x[17]-b[62] <= 0.0)
@constraint(m, e29, x[11]+x[20]-b[63] <= 0.0)
@constraint(m, e30, x[6]+x[15]-b[64] <= 0.0)
@constraint(m, e31, x[9]+x[18]-b[65] <= 0.0)
@constraint(m, e32, x[12]+x[21]-b[66] <= 0.0)
@constraint(m, e33, -200*b[52]+x[85] >= 0.0)
@constraint(m, e34, -200*b[53]+x[86] >= 0.0)
@constraint(m, e35, -200*b[54]+x[87] >= 0.0)
@constraint(m, e36, -200*b[55]+x[85] >= 0.0)
@constraint(m, e37, -200*b[56]+x[86] >= 0.0)
@constraint(m, e38, -200*b[57]+x[87] >= 0.0)
@constraint(m, e39, -x[40]+b[52] >= 0.0)
@constraint(m, e40, -x[41]+b[53] >= 0.0)
@constraint(m, e41, -x[42]+b[54] >= 0.0)
@constraint(m, e42, -x[43]+b[55] >= 0.0)
@constraint(m, e43, -x[44]+b[56] >= 0.0)
@constraint(m, e44, -x[45]+b[57] >= 0.0)
@constraint(m, e45, -x[46]+b[49] == 0.0)
@constraint(m, e46, -x[47]+b[50] == 0.0)
@constraint(m, e47, -x[48]+b[51] == 0.0)
@NLconstraint(m, e48, x[85]*(1-x[46])-x[1] >= -0.001)
@NLconstraint(m, e49, x[86]*(1-x[47])-x[2] >= -0.001)
@NLconstraint(m, e50, x[87]*(1-x[48])-x[3] >= -0.001)
@constraint(m, e51, 508*b[49]+x[85] >= 200.0)
@constraint(m, e52, 508*b[50]+x[86] >= 200.0)
@constraint(m, e53, 508*b[51]+x[87] >= 200.0)
@constraint(m, e54, 508*b[49]+x[85] <= 708.0)
@constraint(m, e55, 508*b[50]+x[86] <= 708.0)
@constraint(m, e56, 508*b[51]+x[87] <= 708.0)
@NLconstraint(m, e57, -81.9*x[40]*x[4]+x[67] == 0.0)
@NLconstraint(m, e58, -81.9*x[41]*x[7]+x[70] == 0.0)
@NLconstraint(m, e59, -81.9*x[42]*x[10]+x[73] == 0.0)
@NLconstraint(m, e60, -81.9*x[40]*x[5]+x[68] == 0.0)
@NLconstraint(m, e61, -81.9*x[41]*x[8]+x[71] == 0.0)
@NLconstraint(m, e62, -81.9*x[42]*x[11]+x[74] == 0.0)
@NLconstraint(m, e63, -54.6*x[40]*x[6]+x[69] == 0.0)
@NLconstraint(m, e64, -54.6*x[41]*x[9]+x[72] == 0.0)
@NLconstraint(m, e65, -54.6*x[42]*x[12]+x[75] == 0.0)
@NLconstraint(m, e66, -136.62*x[40]*x[13]+x[76] == 0.0)
@NLconstraint(m, e67, -136.62*x[41]*x[16]+x[79] == 0.0)
@NLconstraint(m, e68, -136.62*x[42]*x[19]+x[82] == 0.0)
@NLconstraint(m, e69, -136.62*x[40]*x[14]+x[77] == 0.0)
@NLconstraint(m, e70, -136.62*x[41]*x[17]+x[80] == 0.0)
@NLconstraint(m, e71, -136.62*x[42]*x[20]+x[83] == 0.0)
@NLconstraint(m, e72, -91.08*x[40]*x[15]+x[78] == 0.0)
@NLconstraint(m, e73, -91.08*x[41]*x[18]+x[81] == 0.0)
@NLconstraint(m, e74, -91.08*x[42]*x[21]+x[84] == 0.0)
@constraint(m, e75, -300.544*x[22]-225.408*x[23]-150.272*x[24]-300.544*x[25]-225.408*x[26]-150.272*x[27]-300.544*x[28]-225.408*x[29]-150.272*x[30]-2.66666666666667*x[31]-4*x[32]-5.33333333333333*x[33]-2.66666666666667*x[34]-4*x[35]-5.33333333333333*x[36]-2.66666666666667*x[37]-4*x[38]-5.33333333333333*x[39]+1.33333333333333*x[67]+x[68]+x[69]+1.33333333333333*x[70]+x[71]+x[72]+1.33333333333333*x[73]+x[74]+x[75]+1.33333333333333*x[76]+x[77]+x[78]+1.33333333333333*x[79]+x[80]+x[81]+1.33333333333333*x[82]+x[83]+x[84]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 