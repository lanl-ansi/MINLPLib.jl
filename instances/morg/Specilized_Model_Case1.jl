using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[13], 370.0)
set_upper_bound(x[13], 650.0)
set_lower_bound(x[14], 370.0)
set_upper_bound(x[14], 650.0)
set_lower_bound(x[15], 370.0)
set_upper_bound(x[15], 650.0)
set_lower_bound(x[16], 370.0)
set_upper_bound(x[16], 590.0)
set_lower_bound(x[17], 370.0)
set_upper_bound(x[17], 590.0)
set_lower_bound(x[18], 370.0)
set_upper_bound(x[18], 590.0)
set_lower_bound(x[19], 410.0)
set_upper_bound(x[19], 650.0)
set_lower_bound(x[20], 410.0)
set_upper_bound(x[20], 650.0)
set_lower_bound(x[21], 410.0)
set_upper_bound(x[21], 650.0)
set_lower_bound(x[22], 350.0)
set_upper_bound(x[22], 500.0)
set_lower_bound(x[23], 350.0)
set_upper_bound(x[23], 500.0)
set_lower_bound(x[24], 350.0)
set_upper_bound(x[24], 500.0)
set_lower_bound(x[41], 10.0)
set_lower_bound(x[42], 10.0)
set_lower_bound(x[43], 10.0)
set_lower_bound(x[44], 10.0)
set_lower_bound(x[45], 10.0)
set_lower_bound(x[46], 10.0)
set_lower_bound(x[47], 10.0)
set_lower_bound(x[48], 10.0)
set_lower_bound(x[49], 10.0)
set_lower_bound(x[50], 10.0)
set_lower_bound(x[51], 10.0)
set_lower_bound(x[52], 10.0)
set_lower_bound(x[53], 10.0)
set_lower_bound(x[54], 10.0)
set_lower_bound(x[55], 10.0)
set_lower_bound(x[56], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, 10*x[13]-10*x[14]-x[25]-x[28] == 0.0)
@constraint(m, e2, 10*x[14]-10*x[15]-x[26]-x[29] == 0.0)
@constraint(m, e3, 20*x[16]-20*x[17]-x[31]-x[34] == 0.0)
@constraint(m, e4, 20*x[17]-20*x[18]-x[32]-x[35] == 0.0)
@constraint(m, e5, 15*x[19]-15*x[20]-x[25]-x[31] == 0.0)
@constraint(m, e6, 15*x[20]-15*x[21]-x[26]-x[32] == 0.0)
@constraint(m, e7, 13*x[22]-13*x[23]-x[28]-x[34] == 0.0)
@constraint(m, e8, 13*x[23]-13*x[24]-x[29]-x[35] == 0.0)
@constraint(m, e9, 10*x[15]-x[37] == 3700.0)
@constraint(m, e10, 20*x[18]-x[38] == 7400.0)
@constraint(m, e11, -x[25]-x[26]-x[28]-x[29]-x[37] == -2800.0)
@constraint(m, e12, -x[31]-x[32]-x[34]-x[35]-x[38] == -4400.0)
@constraint(m, e13, -15*x[19]-x[39] == -9750.0)
@constraint(m, e14, -13*x[22]-x[40] == -6500.0)
@constraint(m, e15, -x[25]-x[26]-x[31]-x[32]-x[39] == -3600.0)
@constraint(m, e16, -x[28]-x[29]-x[34]-x[35]-x[40] == -1950.0)
@constraint(m, e17, x[13]-x[14] >= 0.0)
@constraint(m, e18, x[14]-x[15] >= 0.0)
@constraint(m, e19, x[16]-x[17] >= 0.0)
@constraint(m, e20, x[17]-x[18] >= 0.0)
@constraint(m, e21, x[19]-x[20] >= 0.0)
@constraint(m, e22, x[20]-x[21] >= 0.0)
@constraint(m, e23, x[22]-x[23] >= 0.0)
@constraint(m, e24, x[23]-x[24] >= 0.0)
@constraint(m, e25, x[15] >= 370.0)
@constraint(m, e26, x[18] >= 370.0)
@constraint(m, e27, -x[19] >= -650.0)
@constraint(m, e28, -x[22] >= -500.0)
@constraint(m, e29, -x[13] == -650.0)
@constraint(m, e30, -x[16] == -590.0)
@constraint(m, e31, -x[21] == -410.0)
@constraint(m, e32, -x[24] == -350.0)
@constraint(m, e33, -2800*b[1]+x[25] <= 0.0)
@constraint(m, e34, -2800*b[2]+x[26] <= 0.0)
@constraint(m, e35, -1950*b[3]+x[28] <= 0.0)
@constraint(m, e36, -1950*b[4]+x[29] <= 0.0)
@constraint(m, e37, -3600*b[5]+x[31] <= 0.0)
@constraint(m, e38, -3600*b[6]+x[32] <= 0.0)
@constraint(m, e39, -1950*b[7]+x[34] <= 0.0)
@constraint(m, e40, -1950*b[8]+x[35] <= 0.0)
@constraint(m, e41, -3600*b[11]+x[39] <= 0.0)
@constraint(m, e42, -1950*b[12]+x[40] <= 0.0)
@constraint(m, e43, -2800*b[9]+x[37] <= 0.0)
@constraint(m, e44, -4400*b[10]+x[38] <= 0.0)
@constraint(m, e45, 280*b[1]-x[13]+x[19]+x[41] <= 280.0)
@constraint(m, e46, 280*b[2]-x[14]+x[20]+x[42] <= 280.0)
@constraint(m, e47, 130*b[3]-x[13]+x[22]+x[44] <= 130.0)
@constraint(m, e48, 130*b[4]-x[14]+x[23]+x[45] <= 130.0)
@constraint(m, e49, 280*b[5]-x[16]+x[19]+x[47] <= 280.0)
@constraint(m, e50, 280*b[6]-x[17]+x[20]+x[48] <= 280.0)
@constraint(m, e51, 130*b[7]-x[16]+x[22]+x[50] <= 130.0)
@constraint(m, e52, 130*b[8]-x[17]+x[23]+x[51] <= 130.0)
@constraint(m, e53, 280*b[1]-x[14]+x[20]+x[42] <= 280.0)
@constraint(m, e54, 280*b[2]-x[15]+x[21]+x[43] <= 280.0)
@constraint(m, e55, 130*b[3]-x[14]+x[23]+x[45] <= 130.0)
@constraint(m, e56, 130*b[4]-x[15]+x[24]+x[46] <= 130.0)
@constraint(m, e57, 280*b[5]-x[17]+x[20]+x[48] <= 280.0)
@constraint(m, e58, 280*b[6]-x[18]+x[21]+x[49] <= 280.0)
@constraint(m, e59, 130*b[7]-x[17]+x[23]+x[51] <= 130.0)
@constraint(m, e60, 130*b[8]-x[18]+x[24]+x[52] <= 130.0)
@constraint(m, e61, -x[15]+x[53] <= -320.0)
@constraint(m, e62, -x[18]+x[54] <= -320.0)
@constraint(m, e63, x[19]+x[55] <= 680.0)
@constraint(m, e64, x[22]+x[56] <= 680.0)
@NLconstraint(m, e65, -(150*((1e-6+2*x[25]/(1e-6+(1e-6+0.5*x[41]*x[42]*(x[41]+x[42]))^0.33333))^1+(1e-6+2*x[26]/(1e-6+(1e-6+0.5*x[42]*x[43]*(x[42]+x[43]))^0.33333))^1+(1e-6+199.970793713208*x[27])^1+(1e-6+2*x[28]/(1e-6+(1e-6+0.5*x[44]*x[45]*(x[44]+x[45]))^0.33333))^1+(1e-6+2*x[29]/(1e-6+(1e-6+0.5*x[45]*x[46]*(x[45]+x[46]))^0.33333))^1+(1e-6+199.970793713208*x[30])^1+(1e-6+2*x[31]/(1e-6+(1e-6+0.5*x[47]*x[48]*(x[47]+x[48]))^0.33333))^1+(1e-6+2*x[32]/(1e-6+(1e-6+0.5*x[48]*x[49]*(x[48]+x[49]))^0.33333))^1+(1e-6+199.970793713208*x[33])^1+(1e-6+2*x[34]/(1e-6+(1e-6+0.5*x[50]*x[51]*(x[50]+x[51]))^0.33333))^1+(1e-6+2*x[35]/(1e-6+(1e-6+0.5*x[51]*x[52]*(x[51]+x[52]))^0.33333))^1+(1e-6+199.970793713208*x[36])^1)+150*(2e-6+1.2*x[39]/(1e-6+30*x[55]*(15+0.5*x[55]))^0.33333+1.2*x[40]/(1e-6+180*x[56]*(90+0.5*x[56]))^0.33333)^1+80*x[39]+80*x[40]+150*((1e-6+2*x[37]/(1e-6+35*x[53]*(70+x[53]))^0.33333)^1+(1e-6+2*x[38]/(1e-6+35*x[54]*(70+x[54]))^0.33333)^1)+15*x[37]+15*x[38])-5500*b[1]-5500*b[2]-5500*b[3]-5500*b[4]-5500*b[5]-5500*b[6]-5500*b[7]-5500*b[8]-5500*b[9]-5500*b[10]-5500*b[11]-5500*b[12]+x[57] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[57])

 
