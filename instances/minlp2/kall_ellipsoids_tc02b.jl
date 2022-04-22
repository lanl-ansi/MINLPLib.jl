using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125]
@variable(m, x[x_Idx])
set_lower_bound(x[117], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[23], -1.69454444444444)
set_upper_bound(x[23], 1.69454444444444)
set_lower_bound(x[24], -1.69454444444444)
set_upper_bound(x[24], 1.69454444444444)
set_lower_bound(x[25], -1.69454444444444)
set_upper_bound(x[25], 1.69454444444444)
set_lower_bound(x[26], -1.69444444444444)
set_upper_bound(x[26], 1.69444444444444)
set_lower_bound(x[27], -1.69454444444444)
set_upper_bound(x[27], 1.69454444444444)
set_lower_bound(x[28], -1.69454444444444)
set_upper_bound(x[28], 1.69454444444444)
set_lower_bound(x[29], -1.69444444444444)
set_upper_bound(x[29], 1.69444444444444)
set_lower_bound(x[30], -1.69444444444444)
set_upper_bound(x[30], 1.69444444444444)
set_lower_bound(x[31], -1.69454444444444)
set_upper_bound(x[31], 1.69454444444444)
set_lower_bound(x[32], -3.48536077097506)
set_upper_bound(x[32], 3.48536077097506)
set_lower_bound(x[33], -3.48536077097506)
set_upper_bound(x[33], 3.48536077097506)
set_lower_bound(x[34], -3.48536077097506)
set_upper_bound(x[34], 3.48536077097506)
set_lower_bound(x[35], -3.48526077097506)
set_upper_bound(x[35], 3.48526077097506)
set_lower_bound(x[36], -3.48536077097506)
set_upper_bound(x[36], 3.48536077097506)
set_lower_bound(x[37], -3.48536077097506)
set_upper_bound(x[37], 3.48536077097506)
set_lower_bound(x[38], -3.48526077097506)
set_upper_bound(x[38], 3.48526077097506)
set_lower_bound(x[39], -3.48526077097506)
set_upper_bound(x[39], 3.48526077097506)
set_lower_bound(x[40], -3.48536077097506)
set_upper_bound(x[40], 3.48536077097506)
set_lower_bound(x[41], -1.0)
set_upper_bound(x[41], 1.0)
set_lower_bound(x[42], -1.0)
set_upper_bound(x[42], 1.0)
set_lower_bound(x[43], -1.0)
set_upper_bound(x[43], 1.0)
set_lower_bound(x[44], -1.0)
set_upper_bound(x[44], 1.0)
set_lower_bound(x[45], -1.0)
set_upper_bound(x[45], 1.0)
set_lower_bound(x[46], -1.0)
set_upper_bound(x[46], 1.0)
set_lower_bound(x[47], -1.0)
set_upper_bound(x[47], 1.0)
set_lower_bound(x[48], -1.0)
set_upper_bound(x[48], 1.0)
set_lower_bound(x[49], -1.0)
set_upper_bound(x[49], 1.0)
set_lower_bound(x[50], -1.0)
set_upper_bound(x[50], 1.0)
set_lower_bound(x[51], -1.0)
set_upper_bound(x[51], 1.0)
set_lower_bound(x[52], -1.0)
set_upper_bound(x[52], 1.0)
set_lower_bound(x[53], -1.0)
set_upper_bound(x[53], 1.0)
set_lower_bound(x[54], -1.0)
set_upper_bound(x[54], 1.0)
set_lower_bound(x[55], -1.0)
set_upper_bound(x[55], 1.0)
set_lower_bound(x[56], -1.0)
set_upper_bound(x[56], 1.0)
set_lower_bound(x[57], -1.0)
set_upper_bound(x[57], 1.0)
set_lower_bound(x[58], -1.0)
set_upper_bound(x[58], 1.0)
set_lower_bound(x[59], -1.0)
set_upper_bound(x[59], 1.0)
set_lower_bound(x[60], -1.0)
set_upper_bound(x[60], 1.0)
set_lower_bound(x[61], -1.0)
set_upper_bound(x[61], 1.0)
set_lower_bound(x[62], -1.0)
set_upper_bound(x[62], 1.0)
set_lower_bound(x[63], -1.0)
set_upper_bound(x[63], 1.0)
set_lower_bound(x[64], -1.0)
set_upper_bound(x[64], 1.0)
set_lower_bound(x[65], -1.0)
set_upper_bound(x[65], 1.0)
set_lower_bound(x[66], -1.0)
set_upper_bound(x[66], 1.0)
set_lower_bound(x[67], -1.0)
set_upper_bound(x[67], 1.0)
set_lower_bound(x[68], -1.0)
set_upper_bound(x[68], 1.0)
set_lower_bound(x[69], -1.0)
set_upper_bound(x[69], 1.0)
set_lower_bound(x[70], -1.0)
set_upper_bound(x[70], 1.0)
set_lower_bound(x[71], -1.0)
set_upper_bound(x[71], 1.0)
set_lower_bound(x[72], -1.0)
set_upper_bound(x[72], 1.0)
set_lower_bound(x[73], -1.0)
set_upper_bound(x[73], 1.0)
set_lower_bound(x[74], -1.0)
set_upper_bound(x[74], 1.0)
set_lower_bound(x[75], -1.0)
set_upper_bound(x[75], 1.0)
set_lower_bound(x[76], -1.0)
set_upper_bound(x[76], 1.0)
set_lower_bound(x[77], -1.0)
set_upper_bound(x[77], 1.0)
set_lower_bound(x[78], -1.0)
set_upper_bound(x[78], 1.0)
set_lower_bound(x[79], -1.0)
set_upper_bound(x[79], 1.0)
set_lower_bound(x[80], -1.0)
set_upper_bound(x[80], 1.0)
set_lower_bound(x[81], -1.0)
set_upper_bound(x[81], 1.0)
set_lower_bound(x[82], -1.0)
set_upper_bound(x[82], 1.0)
set_lower_bound(x[83], -1.0)
set_upper_bound(x[83], 1.0)
set_lower_bound(x[84], -1.0)
set_upper_bound(x[84], 1.0)
set_lower_bound(x[85], -1.0)
set_upper_bound(x[85], 1.0)
set_lower_bound(x[86], -1.0)
set_upper_bound(x[86], 1.0)
set_lower_bound(x[87], -1.0)
set_upper_bound(x[87], 1.0)
set_lower_bound(x[88], -1.0)
set_upper_bound(x[88], 1.0)
set_lower_bound(x[89], -1.0)
set_upper_bound(x[89], 1.0)
set_lower_bound(x[90], -1.0)
set_upper_bound(x[90], 1.0)
set_lower_bound(x[91], -1.0)
set_upper_bound(x[91], 1.0)
set_lower_bound(x[92], -1.0)
set_upper_bound(x[92], 1.0)
set_lower_bound(x[93], -1.0)
set_upper_bound(x[93], 1.0)
set_lower_bound(x[94], -1.0)
set_upper_bound(x[94], 1.0)
set_lower_bound(x[95], -1.0)
set_upper_bound(x[95], 1.0)
set_lower_bound(x[96], -1.0)
set_upper_bound(x[96], 1.0)
set_lower_bound(x[97], -1.0)
set_upper_bound(x[97], 1.0)
set_lower_bound(x[98], 16.9646003293849)
set_lower_bound(x[99], 0.333333333333333)
set_upper_bound(x[99], 0.666666666666667)
set_lower_bound(x[100], 0.333333333333333)
set_upper_bound(x[100], 0.666666666666667)
set_lower_bound(x[101], 0.333333333333333)
set_upper_bound(x[101], 0.666666666666667)
set_lower_bound(x[102], 0.666666666666667)
set_upper_bound(x[102], 1.42857142857143)
set_lower_bound(x[103], 0.666666666666667)
set_upper_bound(x[103], 1.42857142857143)
set_lower_bound(x[104], 0.666666666666667)
set_upper_bound(x[104], 1.42857142857143)
set_lower_bound(x[105], 4.5)
set_upper_bound(x[105], 7.0)
set_lower_bound(x[106], 2.5)
set_upper_bound(x[106], 4.0)
set_lower_bound(x[107], 2.0)
set_upper_bound(x[107], 4.0)
set_lower_bound(x[108], 1.0)
set_upper_bound(x[108], 6.0)
set_lower_bound(x[109], 1.0)
set_upper_bound(x[109], 3.0)
set_lower_bound(x[110], 1.0)
set_upper_bound(x[110], 3.0)
set_lower_bound(x[111], 0.7)
set_upper_bound(x[111], 6.3)
set_lower_bound(x[112], 0.7)
set_upper_bound(x[112], 3.3)
set_lower_bound(x[113], 0.7)
set_upper_bound(x[113], 3.3)
set_upper_bound(x[114], 10.0)
set_upper_bound(x[115], 4.0)
set_upper_bound(x[116], 4.0)
set_upper_bound(x[117], 10.0)
set_upper_bound(x[118], 4.0)
set_upper_bound(x[119], 4.0)
set_upper_bound(x[120], 10.0)
set_upper_bound(x[121], 4.0)
set_upper_bound(x[122], 4.0)
set_upper_bound(x[123], 10.0)
set_upper_bound(x[124], 4.0)
set_upper_bound(x[125], 4.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[98] == 0.0)
@NLconstraint(m, e2, -x[105]*x[106]*x[107]+x[98] == 0.0)
@NLconstraint(m, e3, x[41]*x[45]*x[49]-x[41]*x[46]*x[48]-x[42]*x[44]*x[49]+x[42]*x[47]*x[46]+x[44]*x[43]*x[48]-x[43]*x[45]*x[47] == 1.0)
@NLconstraint(m, e4, x[50]*x[54]*x[58]-x[50]*x[55]*x[57]-x[51]*x[53]*x[58]+x[51]*x[56]*x[55]+x[53]*x[52]*x[57]-x[52]*x[54]*x[56] == 1.0)
@constraint(m, e5, x[62]+x[63]+x[64] == 1.0)
@constraint(m, e6, x[65]+x[66]+x[67] == 0.0)
@constraint(m, e7, x[68]+x[69]+x[70] == 0.0)
@constraint(m, e8, x[71]+x[72]+x[73] == 1.0)
@constraint(m, e9, x[74]+x[75]+x[76] == 0.0)
@constraint(m, e10, x[77]+x[78]+x[79] == 1.0)
@constraint(m, e11, x[80]+x[81]+x[82] == 1.0)
@constraint(m, e12, x[83]+x[84]+x[85] == 0.0)
@constraint(m, e13, x[86]+x[87]+x[88] == 0.0)
@constraint(m, e14, x[89]+x[90]+x[91] == 1.0)
@constraint(m, e15, x[92]+x[93]+x[94] == 0.0)
@constraint(m, e16, x[95]+x[96]+x[97] == 1.0)
@constraint(m, e17, x[23]-0.25*x[62]-0.444444444444444*x[63]-x[64] == 0.0)
@constraint(m, e18, x[24]-0.25*x[65]-0.444444444444444*x[66]-x[67] == 0.0)
@constraint(m, e19, x[25]-0.25*x[68]-0.444444444444444*x[69]-x[70] == 0.0)
@constraint(m, e20, x[27]-0.25*x[71]-0.444444444444444*x[72]-x[73] == 0.0)
@constraint(m, e21, x[28]-0.25*x[74]-0.444444444444444*x[75]-x[76] == 0.0)
@constraint(m, e22, x[31]-0.25*x[77]-0.444444444444444*x[78]-x[79] == 0.0)
@constraint(m, e23, x[32]-0.444444444444444*x[80]-x[81]-2.04081632653061*x[82] == 0.0)
@constraint(m, e24, x[33]-0.444444444444444*x[83]-x[84]-2.04081632653061*x[85] == 0.0)
@constraint(m, e25, x[34]-0.444444444444444*x[86]-x[87]-2.04081632653061*x[88] == 0.0)
@constraint(m, e26, x[36]-0.444444444444444*x[89]-x[90]-2.04081632653061*x[91] == 0.0)
@constraint(m, e27, x[37]-0.444444444444444*x[92]-x[93]-2.04081632653061*x[94] == 0.0)
@constraint(m, e28, x[40]-0.444444444444444*x[95]-x[96]-2.04081632653061*x[97] == 0.0)
@constraint(m, e29, -x[24]+x[26] == 0.0)
@constraint(m, e30, -x[25]+x[29] == 0.0)
@constraint(m, e31, -x[28]+x[30] == 0.0)
@constraint(m, e32, -x[33]+x[35] == 0.0)
@constraint(m, e33, -x[34]+x[38] == 0.0)
@constraint(m, e34, -x[37]+x[39] == 0.0)
@constraint(m, e35, -x[105]+x[108] <= -1.0)
@constraint(m, e36, -x[106]+x[109] <= -1.0)
@constraint(m, e37, -x[107]+x[110] <= -1.0)
@constraint(m, e38, -x[105]+x[111] <= -0.7)
@constraint(m, e39, -x[106]+x[112] <= -0.7)
@constraint(m, e40, -x[107]+x[113] <= -0.7)
@NLconstraint(m, e41,  (x[99])^2-(x[27]*x[31]-x[28]*x[30]) == 0.0)
@NLconstraint(m, e42,  (x[102])^2-(x[36]*x[40]-x[37]*x[39]) == 0.0)
@NLconstraint(m, e43,  (x[100])^2-(x[23]*x[31]-x[25]*x[29]) == 0.0)
@NLconstraint(m, e44,  (x[103])^2-(x[32]*x[40]-x[34]*x[38]) == 0.0)
@NLconstraint(m, e45,  (x[101])^2-(x[23]*x[27]-x[24]*x[26]) == 0.0)
@NLconstraint(m, e46,  (x[104])^2-(x[32]*x[36]-x[33]*x[35]) == 0.0)
@constraint(m, e47, 3*x[99]-x[108]+x[114] == 0.0)
@constraint(m, e48, 3*x[100]-x[109]+x[115] == 0.0)
@constraint(m, e49, 3*x[101]-x[110]+x[116] == 0.0)
@constraint(m, e50, 1.05*x[102]-x[111]+x[117] == 0.0)
@constraint(m, e51, 1.05*x[103]-x[112]+x[118] == 0.0)
@constraint(m, e52, 1.05*x[104]-x[113]+x[119] == 0.0)
@constraint(m, e53, -3*x[99]-x[108]+x[120] == 0.0)
@constraint(m, e54, -3*x[100]-x[109]+x[121] == 0.0)
@constraint(m, e55, -3*x[101]-x[110]+x[122] == 0.0)
@constraint(m, e56, -1.05*x[102]-x[111]+x[123] == 0.0)
@constraint(m, e57, -1.05*x[103]-x[112]+x[124] == 0.0)
@constraint(m, e58, -1.05*x[104]-x[113]+x[125] == 0.0)
@constraint(m, e59, -x[105]+x[120] <= 0.0)
@constraint(m, e60, -x[106]+x[121] <= 0.0)
@constraint(m, e61, -x[107]+x[122] <= 0.0)
@constraint(m, e62, -x[105]+x[123] <= 0.0)
@constraint(m, e63, -x[106]+x[124] <= 0.0)
@constraint(m, e64, -x[107]+x[125] <= 0.0)
@constraint(m, e65, x[105]-x[106] >= 0.0)
@constraint(m, e66, x[106]-x[107] >= 0.0)
@constraint(m, e67, -0.5*x[105]+x[108] <= 0.0)
@constraint(m, e68, -0.5*x[106]+x[109] <= 0.0)
@constraint(m, e69, -0.5*x[107]+x[110] <= 0.0)
@NLconstraint(m, e70,  (x[59])^2+ (x[60])^2+ (x[61])^2 == 1.0)
@NLconstraint(m, e71, -x[41]*x[41]+x[62] == 0.0)
@NLconstraint(m, e72, -x[42]*x[42]+x[63] == 0.0)
@NLconstraint(m, e73, -x[43]*x[43]+x[64] == 0.0)
@NLconstraint(m, e74, -x[41]*x[44]+x[65] == 0.0)
@NLconstraint(m, e75, -x[42]*x[45]+x[66] == 0.0)
@NLconstraint(m, e76, -x[43]*x[46]+x[67] == 0.0)
@NLconstraint(m, e77, -x[41]*x[47]+x[68] == 0.0)
@NLconstraint(m, e78, -x[42]*x[48]+x[69] == 0.0)
@NLconstraint(m, e79, -x[43]*x[49]+x[70] == 0.0)
@NLconstraint(m, e80, -x[44]*x[44]+x[71] == 0.0)
@NLconstraint(m, e81, -x[45]*x[45]+x[72] == 0.0)
@NLconstraint(m, e82, -x[46]*x[46]+x[73] == 0.0)
@NLconstraint(m, e83, -x[44]*x[47]+x[74] == 0.0)
@NLconstraint(m, e84, -x[45]*x[48]+x[75] == 0.0)
@NLconstraint(m, e85, -x[46]*x[49]+x[76] == 0.0)
@NLconstraint(m, e86, -x[47]*x[47]+x[77] == 0.0)
@NLconstraint(m, e87, -x[48]*x[48]+x[78] == 0.0)
@NLconstraint(m, e88, -x[49]*x[49]+x[79] == 0.0)
@NLconstraint(m, e89, -x[50]*x[50]+x[80] == 0.0)
@NLconstraint(m, e90, -x[51]*x[51]+x[81] == 0.0)
@NLconstraint(m, e91, -x[52]*x[52]+x[82] == 0.0)
@NLconstraint(m, e92, -x[50]*x[53]+x[83] == 0.0)
@NLconstraint(m, e93, -x[51]*x[54]+x[84] == 0.0)
@NLconstraint(m, e94, -x[52]*x[55]+x[85] == 0.0)
@NLconstraint(m, e95, -x[50]*x[56]+x[86] == 0.0)
@NLconstraint(m, e96, -x[51]*x[57]+x[87] == 0.0)
@NLconstraint(m, e97, -x[52]*x[58]+x[88] == 0.0)
@NLconstraint(m, e98, -x[53]*x[53]+x[89] == 0.0)
@NLconstraint(m, e99, -x[54]*x[54]+x[90] == 0.0)
@NLconstraint(m, e100, -x[55]*x[55]+x[91] == 0.0)
@NLconstraint(m, e101, -x[53]*x[56]+x[92] == 0.0)
@NLconstraint(m, e102, -x[54]*x[57]+x[93] == 0.0)
@NLconstraint(m, e103, -x[55]*x[58]+x[94] == 0.0)
@NLconstraint(m, e104, -x[56]*x[56]+x[95] == 0.0)
@NLconstraint(m, e105, -x[57]*x[57]+x[96] == 0.0)
@NLconstraint(m, e106, -x[58]*x[58]+x[97] == 0.0)
@NLconstraint(m, e107,  (x[107])^3-x[98] <= 0.0)
@constraint(m, e108, x[20]-x[108]+x[111] == 0.0)
@constraint(m, e109, x[21]-x[109]+x[112] == 0.0)
@constraint(m, e110, x[22]-x[110]+x[113] == 0.0)
@NLconstraint(m, e111, x[59]*x[20]+x[60]*x[21]+x[61]*x[22]-(sqrt( (x[2]*x[59])^2+ (x[5]*x[60])^2+ (x[8]*x[61])^2+ (x[3]*x[59])^2+ (x[6]*x[60])^2+ (x[9]*x[61])^2+ (x[4]*x[59])^2+ (x[7]*x[60])^2+ (x[10]*x[61])^2)+sqrt( (x[11]*x[59])^2+ (x[14]*x[60])^2+ (x[17]*x[61])^2+ (x[12]*x[59])^2+ (x[15]*x[60])^2+ (x[18]*x[61])^2+ (x[13]*x[59])^2+ (x[16]*x[60])^2+ (x[19]*x[61])^2)) >= 0.0)
@constraint(m, e112, x[2]-2*x[41] == 0.0)
@constraint(m, e113, x[3]-1.5*x[42] == 0.0)
@constraint(m, e114, x[4]-x[43] == 0.0)
@constraint(m, e115, x[5]-2*x[44] == 0.0)
@constraint(m, e116, x[6]-1.5*x[45] == 0.0)
@constraint(m, e117, x[7]-x[46] == 0.0)
@constraint(m, e118, x[8]-2*x[47] == 0.0)
@constraint(m, e119, x[9]-1.5*x[48] == 0.0)
@constraint(m, e120, x[10]-x[49] == 0.0)
@constraint(m, e121, x[11]-1.5*x[50] == 0.0)
@constraint(m, e122, x[12]-x[51] == 0.0)
@constraint(m, e123, x[13]-0.7*x[52] == 0.0)
@constraint(m, e124, x[14]-1.5*x[53] == 0.0)
@constraint(m, e125, x[15]-x[54] == 0.0)
@constraint(m, e126, x[16]-0.7*x[55] == 0.0)
@constraint(m, e127, x[17]-1.5*x[56] == 0.0)
@constraint(m, e128, x[18]-x[57] == 0.0)
@constraint(m, e129, x[19]-0.7*x[58] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
