using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145]
@variable(m, x[x_Idx])
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[108], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setupperbound(x[47], 29.2)
setupperbound(x[48], 1.2)
setlowerbound(x[58], 353.66)
setlowerbound(x[76], 32.8)
setlowerbound(x[93], 24.1)
setupperbound(x[95], 21.0)
setlowerbound(x[97], 1.2)
setupperbound(x[97], 2.2)
setupperbound(x[105], 98.72)
setlowerbound(x[110], 8.7)
setlowerbound(objvar, 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[53]*x[49]+x[52]*x[51]-0.5439*x[44]-0.5439*x[46]-1.22963*x[47]-2.74289*x[48]-6.94492*x[50] == 0.0)
@NLconstraint(m, e2, x[53]*x[54]-3.22692*x[55]-9.05971*x[56]+x[57]-x[58] == 0.0)
@NLconstraint(m, e3, x[53]*x[59]+7.32917*x[60]+7.70075*x[61]-7.31039*x[62]-7.31039*x[63]-7.31039*x[64]-7.31039*x[65]-7.31039*x[66]-7.31039*x[67]-7.31039*x[68]-7.31039*x[69]-7.31039*x[70]-7.31039*x[71]-7.31039*x[72]-7.31039*x[73]-7.31039*x[74]-7.31039*x[75]-7.31039*x[76] == 0.0)
@NLconstraint(m, e4, x[53]*x[77]-6.94492*x[50]+7.31039*x[62]+7.03739*x[78]+7.03739*x[79]+6.91604*x[80]+6.91604*x[81]+6.91604*x[82]+6.91604*x[83]+6.91604*x[84]+6.91604*x[85]+6.91604*x[86]+6.91604*x[87]+6.91604*x[88]+6.91604*x[89]+6.91604*x[90]+6.91604*x[91]-6.94492*x[92]-6.94492*x[93] == 0.0)
@constraint(m, e5, -x[44]-x[46]-x[47]-x[48]+x[49]-x[50]+x[51] == 0.0)
@constraint(m, e6, x[44]-x[94]-x[95] == 0.0)
@constraint(m, e7, -0.08*x[50]+x[51] == 0.0)
@constraint(m, e8, 0.05391*x[96]-x[97] == 4.45329)
@constraint(m, e9, x[52]-0.34851*x[53] == 6.04388)
@constraint(m, e10, x[53]-0.18673*x[97] == 0.82639)
@constraint(m, e11, x[49]-x[54]-x[59]-x[77]-x[98] == 0.0)
@constraint(m, e12, x[98] >= 104.21999)
@constraint(m, e13, -0.5*x[49]+x[99] == 0.0)
@constraint(m, e14, -1.89474*x[99]+x[100] == 230.0)
@constraint(m, e15, x[100]-x[101] == 0.0)
@constraint(m, e16, x[54]-x[55]-x[56] == 0.0)
@constraint(m, e17, -0.05*x[54]+x[55] == 0.0)
@constraint(m, e18, -116.41403*x[29]+x[57] == 0.0)
@constraint(m, e19, x[29]-x[102] == 4.035)
@constraint(m, e20, -23.39292*x[102]+x[103] == 0.0)
@constraint(m, e21, -3.61341*x[103]+x[104] == 0.0)
@constraint(m, e22, x[56]-x[61]+x[105]-x[106]-x[107]-x[108]-x[109]-x[110] == 0.0)
@constraint(m, e23, x[59]+x[60]+x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71]-x[72]-x[73]-x[74]-x[75]-x[76] == 0.0)
@constraint(m, e24, -x[50]+x[62]+x[77]+x[78]+x[79]+x[80]+x[81]+x[82]+x[83]+x[84]+x[85]+x[86]+x[87]+x[88]+x[89]+x[90]+x[91]-x[92]-x[93] == 0.0)
@constraint(m, e25, -x[46]+x[111]+x[112] == 0.0)
@constraint(m, e26, x[106]-x[113] == 0.0)
@constraint(m, e27, -x[60]+x[107] == 0.0)
@constraint(m, e28, -x[78]+x[108] == 0.0)
@constraint(m, e29, -x[79]+x[109] == 0.0)
@constraint(m, e30, 7.70075*x[106]-6.08959*x[113]-0.00641*x[114] == 0.0)
@constraint(m, e31, -7.32917*x[60]+7.70075*x[107]-0.00641*x[115] == 0.0)
@constraint(m, e32, -7.03739*x[78]+7.70075*x[108]-0.00641*x[116] == 0.0)
@constraint(m, e33, -7.03739*x[79]+7.70075*x[109]-0.00641*x[117] == 0.0)
@constraint(m, e34, x[63]-x[80] == 0.0)
@constraint(m, e35, x[64]-x[81] == 0.0)
@constraint(m, e36, x[65]-x[82] == 0.0)
@constraint(m, e37, x[66]-x[118] == 0.0)
@constraint(m, e38, x[67]-x[83] == 0.0)
@constraint(m, e39, x[68]-x[84] == 0.0)
@constraint(m, e40, x[69]-x[85] == 0.0)
@constraint(m, e41, x[70]-x[86] == 0.0)
@constraint(m, e42, x[71]-x[87] == 0.0)
@constraint(m, e43, x[72]-x[88] == 0.0)
@constraint(m, e44, x[73]-x[89] == 0.0)
@constraint(m, e45, x[74]-x[90] == 0.0)
@constraint(m, e46, x[75]-x[91] == 0.0)
@constraint(m, e47, 7.31039*x[63]-6.91604*x[80]-0.00641*x[119] == 0.0)
@constraint(m, e48, 7.31039*x[64]-6.91604*x[81]-0.00641*x[120] == 0.0)
@constraint(m, e49, 7.31039*x[65]-6.91604*x[82]-0.00641*x[121] == 0.0)
@constraint(m, e50, 7.31039*x[66]-5.77083*x[118]-0.00641*x[122] == 0.0)
@constraint(m, e51, 7.31039*x[67]-6.91604*x[83]-0.00641*x[123] == 0.0)
@constraint(m, e52, 7.31039*x[68]-6.91604*x[84]-0.00641*x[124] == 0.0)
@constraint(m, e53, 7.31039*x[69]-6.91604*x[85]-0.00641*x[125] == 0.0)
@constraint(m, e54, 7.31039*x[70]-6.91604*x[86]-0.00641*x[126] == 0.0)
@constraint(m, e55, 7.31039*x[71]-6.91604*x[87]-0.00641*x[127] == 0.0)
@constraint(m, e56, 7.31039*x[72]-6.91604*x[88]-0.00641*x[128] == 0.0)
@constraint(m, e57, 7.31039*x[73]-6.91604*x[89]-0.00641*x[129] == 0.0)
@constraint(m, e58, 7.31039*x[74]-6.91604*x[90]-0.00641*x[130] == 0.0)
@constraint(m, e59, 7.31039*x[75]-6.91604*x[91]-0.00641*x[131] == 0.0)
@constraint(m, e60, x[111]-x[113] == 0.0)
@constraint(m, e61, x[112]-x[118] == 0.0)
@constraint(m, e62, 5.6972*x[111]-0.12983*x[132] == 0.0)
@constraint(m, e63, 5.6972*x[112]-0.12983*x[133] == 0.0)
@constraint(m, e64, x[45]-x[132]-x[133] == 4117.0)
@constraint(m, e65, -0.33333*x[45]+x[134] == 0.0)
@constraint(m, e66, -0.20286*x[134]+x[135] == 0.0)
@constraint(m, e67, x[135]-x[136] == 0.0)
@constraint(m, e68, x[135]-x[137] == 0.0)
@constraint(m, e69, x[138] == 1.0)
@constraint(m, e70, x[139] == 1.0)
@constraint(m, e71, x[140] == 1.0)
@constraint(m, e72, x[141] == 1.0)
@constraint(m, e73, x[138]-x[142] == 0.0)
@constraint(m, e74, x[138]-x[143] == 0.0)
@constraint(m, e75, x[139]-x[144] == 0.0)
@constraint(m, e76, 0.01*x[111]-100*x[144] <= 0.0)
@constraint(m, e77, x[141]-x[145] == 0.0)
@constraint(m, e78, 0.01*x[112]-100*x[145] <= 0.0)
@constraint(m, e79, 0.1*x[49]-100*x[142] <= 0.0)
@constraint(m, e80, 0.1*x[103]-100*x[143] <= 0.0)
@constraint(m, e81, 0.1*x[56]-100*x[138] <= 0.0)
@constraint(m, e82, 0.1*x[106]-100*x[139] <= 0.0)
@constraint(m, e83, 0.1*x[107]-100*x[140] <= 0.0)
@constraint(m, e84, -100*b[1]+0.1*x[108] <= 0.0)
@constraint(m, e85, -100*b[2]+0.1*x[109] <= 0.0)
@constraint(m, e86, 0.1*x[60]-100*x[140] <= 0.0)
@constraint(m, e87, -100*b[1]+0.1*x[78] <= 0.0)
@constraint(m, e88, -100*b[2]+0.1*x[79] <= 0.0)
@constraint(m, e89, 0.1*x[113]-100*x[139] <= 0.0)
@constraint(m, e90, -100*b[3]+0.1*x[63] <= 0.0)
@constraint(m, e91, -100*b[4]+0.1*x[64] <= 0.0)
@constraint(m, e92, -b[5]+0.1*x[65] <= 0.0)
@constraint(m, e93, 0.1*x[66]-100*x[141] <= 0.0)
@constraint(m, e94, -100*b[6]+0.1*x[67] <= 0.0)
@constraint(m, e95, -100*b[7]+0.1*x[68] <= 0.0)
@constraint(m, e96, -100*b[8]+0.1*x[69] <= 0.0)
@constraint(m, e97, -100*b[9]+0.1*x[70] <= 0.0)
@constraint(m, e98, -100*b[10]+0.1*x[71] <= 0.0)
@constraint(m, e99, -100*b[11]+0.1*x[72] <= 0.0)
@constraint(m, e100, -100*b[12]+0.1*x[73] <= 0.0)
@constraint(m, e101, -100*b[13]+0.1*x[74] <= 0.0)
@constraint(m, e102, -100*b[14]+0.1*x[75] <= 0.0)
@constraint(m, e103, -100*b[3]+0.1*x[80] <= 0.0)
@constraint(m, e104, -100*b[4]+0.1*x[81] <= 0.0)
@constraint(m, e105, -100*b[5]+0.1*x[82] <= 0.0)
@constraint(m, e106, -100*b[6]+0.1*x[83] <= 0.0)
@constraint(m, e107, -100*b[7]+0.1*x[84] <= 0.0)
@constraint(m, e108, -100*b[8]+0.1*x[85] <= 0.0)
@constraint(m, e109, -100*b[9]+0.1*x[86] <= 0.0)
@constraint(m, e110, -100*b[10]+0.1*x[87] <= 0.0)
@constraint(m, e111, -100*b[11]+0.1*x[88] <= 0.0)
@constraint(m, e112, -100*b[12]+0.1*x[89] <= 0.0)
@constraint(m, e113, -100*b[13]+0.1*x[90] <= 0.0)
@constraint(m, e114, -100*b[14]+0.1*x[91] <= 0.0)
@constraint(m, e115, 0.1*x[118]-100*x[141] <= 0.0)
@constraint(m, e116, 0.01*x[114]-163.03*x[139] == 0.0)
@constraint(m, e117, 0.01*x[115]-56*x[140] == 0.0)
@constraint(m, e118, -444*b[3]+x[119] == 0.0)
@constraint(m, e119, -100*b[4]+x[120] == 0.0)
@constraint(m, e120, -125*b[5]+x[121] == 0.0)
@constraint(m, e121, 0.01*x[122]-94.5*x[141] == 0.0)
@constraint(m, e122, -75*b[6]+x[123] == 0.0)
@constraint(m, e123, -60*b[7]+x[124] == 0.0)
@constraint(m, e124, -36*b[8]+x[125] == 0.0)
@constraint(m, e125, -26*b[9]+x[126] == 0.0)
@constraint(m, e126, -445*b[10]+x[127] == 0.0)
@constraint(m, e127, -444*b[15]+x[30] == 0.0)
@constraint(m, e128, -100*b[16]+x[31] == 0.0)
@constraint(m, e129, -125*b[17]+x[32] == 0.0)
@constraint(m, e130, -75*b[18]+x[33] == 0.0)
@constraint(m, e131, -60*b[19]+x[34] == 0.0)
@constraint(m, e132, -36*b[20]+x[35] == 0.0)
@constraint(m, e133, -26*b[21]+x[36] == 0.0)
@constraint(m, e134, -445*b[22]+x[37] == 0.0)
@constraint(m, e135, -300*b[1]+0.01*x[116] <= 0.0)
@constraint(m, e136, -300*b[2]+0.01*x[117] <= 0.0)
@constraint(m, e137, -300*b[11]+0.01*x[128] <= 0.0)
@constraint(m, e138, -300*b[12]+0.01*x[129] <= 0.0)
@constraint(m, e139, -300*b[13]+0.01*x[130] <= 0.0)
@constraint(m, e140, -300*b[14]+0.01*x[131] <= 0.0)
@constraint(m, e141, -300*b[23]+0.01*x[38] <= 0.0)
@constraint(m, e142, -300*b[24]+0.01*x[39] <= 0.0)
@constraint(m, e143, -300*b[25]+0.01*x[40] <= 0.0)
@constraint(m, e144, -300*b[26]+0.01*x[41] <= 0.0)
@constraint(m, e145, -300*b[27]+0.01*x[42] <= 0.0)
@constraint(m, e146, -300*b[28]+0.01*x[43] <= 0.0)
@constraint(m, e147, x[38]-x[100]+x[116] == 0.0)
@constraint(m, e148, x[39]-x[101]+x[117] == 0.0)
@constraint(m, e149, x[40]-x[104]+x[128] == 0.0)
@constraint(m, e150, x[41]+x[129]-x[135] == 0.0)
@constraint(m, e151, x[42]+x[130]-x[136] == 0.0)
@constraint(m, e152, x[43]+x[131]-x[137] == 0.0)
@constraint(m, e153, b[1]+b[23] == 1.0)
@constraint(m, e154, b[2]+b[24] == 1.0)
@constraint(m, e155, b[3]+b[15] == 1.0)
@constraint(m, e156, b[4]+b[16] == 1.0)
@constraint(m, e157, b[5]+b[17] == 1.0)
@constraint(m, e158, b[6]+b[18] == 1.0)
@constraint(m, e159, b[7]+b[19] == 1.0)
@constraint(m, e160, b[8]+b[20] == 1.0)
@constraint(m, e161, b[9]+b[21] == 1.0)
@constraint(m, e162, b[10]+b[22] == 1.0)
@constraint(m, e163, b[11]+b[25] == 1.0)
@constraint(m, e164, b[12]+b[26] == 1.0)
@constraint(m, e165, b[13]+b[27] == 1.0)
@constraint(m, e166, b[14]+b[28] == 1.0)
@constraint(m, e167, b[14]+b[24] == 0.0)
@constraint(m, e168, -87.3969*x[29]-0.03781*x[30]-0.03781*x[31]-0.03781*x[32]-0.03781*x[33]-0.03781*x[34]-0.03781*x[35]-0.03781*x[36]-0.03781*x[37]-0.03781*x[38]-0.03781*x[39]-0.03781*x[40]-0.03781*x[41]-0.03781*x[42]-0.03781*x[43]-0.3*x[44]-0.017*x[45]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
