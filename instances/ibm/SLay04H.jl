using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141]
@variable(m, x[x_Idx])
b_Idx = Any[105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 2.5)
set_upper_bound(x[1], 27.5)
set_lower_bound(x[2], 3.5)
set_upper_bound(x[2], 26.5)
set_lower_bound(x[3], 1.5)
set_upper_bound(x[3], 28.5)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 29.0)
set_lower_bound(x[5], 3.0)
set_upper_bound(x[5], 27.0)
set_lower_bound(x[6], 2.5)
set_upper_bound(x[6], 27.5)
set_lower_bound(x[7], 1.5)
set_upper_bound(x[7], 28.5)
set_lower_bound(x[8], 1.5)
set_upper_bound(x[8], 28.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(150*( ((-4)+x[1])^2+ ((-10)+x[5])^2)+390*( ((-10)+x[2])^2+ ((-15)+x[6])^2)+240*( ((-7)+x[3])^2+ ((-9)+x[7])^2)+70*( ((-3)+x[4])^2+ ((-3)+x[8])^2))-300*x[129]-240*x[130]-210*x[131]-100*x[132]-150*x[133]-120*x[134]-300*x[135]-240*x[136]-210*x[137]-100*x[138]-150*x[139]-120*x[140]+x[141] == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[129] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[130] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[131] >= 0.0)
@constraint(m, e5, -x[2]+x[3]+x[132] >= 0.0)
@constraint(m, e6, -x[2]+x[4]+x[133] >= 0.0)
@constraint(m, e7, -x[3]+x[4]+x[134] >= 0.0)
@constraint(m, e8, x[1]-x[2]+x[129] >= 0.0)
@constraint(m, e9, x[1]-x[3]+x[130] >= 0.0)
@constraint(m, e10, x[1]-x[4]+x[131] >= 0.0)
@constraint(m, e11, x[2]-x[3]+x[132] >= 0.0)
@constraint(m, e12, x[2]-x[4]+x[133] >= 0.0)
@constraint(m, e13, x[3]-x[4]+x[134] >= 0.0)
@constraint(m, e14, -x[5]+x[6]+x[135] >= 0.0)
@constraint(m, e15, -x[5]+x[7]+x[136] >= 0.0)
@constraint(m, e16, -x[5]+x[8]+x[137] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[138] >= 0.0)
@constraint(m, e18, -x[6]+x[8]+x[139] >= 0.0)
@constraint(m, e19, -x[7]+x[8]+x[140] >= 0.0)
@constraint(m, e20, x[5]-x[6]+x[135] >= 0.0)
@constraint(m, e21, x[5]-x[7]+x[136] >= 0.0)
@constraint(m, e22, x[5]-x[8]+x[137] >= 0.0)
@constraint(m, e23, x[6]-x[7]+x[138] >= 0.0)
@constraint(m, e24, x[6]-x[8]+x[139] >= 0.0)
@constraint(m, e25, x[7]-x[8]+x[140] >= 0.0)
@constraint(m, e26, x[1]-x[9]-x[12]-x[15]-x[18] == 0.0)
@constraint(m, e27, x[1]-x[10]-x[13]-x[16]-x[19] == 0.0)
@constraint(m, e28, x[1]-x[11]-x[14]-x[17]-x[20] == 0.0)
@constraint(m, e29, x[2]-x[21]-x[24]-x[27]-x[30] == 0.0)
@constraint(m, e30, x[2]-x[22]-x[25]-x[28]-x[31] == 0.0)
@constraint(m, e31, x[2]-x[23]-x[26]-x[29]-x[32] == 0.0)
@constraint(m, e32, x[3]-x[33]-x[36]-x[39]-x[42] == 0.0)
@constraint(m, e33, x[3]-x[34]-x[37]-x[40]-x[43] == 0.0)
@constraint(m, e34, x[3]-x[35]-x[38]-x[41]-x[44] == 0.0)
@constraint(m, e35, x[4]-x[45]-x[48]-x[51]-x[54] == 0.0)
@constraint(m, e36, x[4]-x[46]-x[49]-x[52]-x[55] == 0.0)
@constraint(m, e37, x[4]-x[47]-x[50]-x[53]-x[56] == 0.0)
@constraint(m, e38, x[5]-x[57]-x[60]-x[63]-x[66] == 0.0)
@constraint(m, e39, x[5]-x[58]-x[61]-x[64]-x[67] == 0.0)
@constraint(m, e40, x[5]-x[59]-x[62]-x[65]-x[68] == 0.0)
@constraint(m, e41, x[6]-x[69]-x[72]-x[75]-x[78] == 0.0)
@constraint(m, e42, x[6]-x[70]-x[73]-x[76]-x[79] == 0.0)
@constraint(m, e43, x[6]-x[71]-x[74]-x[77]-x[80] == 0.0)
@constraint(m, e44, x[7]-x[81]-x[84]-x[87]-x[90] == 0.0)
@constraint(m, e45, x[7]-x[82]-x[85]-x[88]-x[91] == 0.0)
@constraint(m, e46, x[7]-x[83]-x[86]-x[89]-x[92] == 0.0)
@constraint(m, e47, x[8]-x[93]-x[96]-x[99]-x[102] == 0.0)
@constraint(m, e48, x[8]-x[94]-x[97]-x[100]-x[103] == 0.0)
@constraint(m, e49, x[8]-x[95]-x[98]-x[101]-x[104] == 0.0)
@constraint(m, e50, x[9]-27.5*b[105] <= 0.0)
@constraint(m, e51, x[10]-27.5*b[106] <= 0.0)
@constraint(m, e52, x[11]-27.5*b[107] <= 0.0)
@constraint(m, e53, x[12]-27.5*b[111] <= 0.0)
@constraint(m, e54, x[13]-27.5*b[112] <= 0.0)
@constraint(m, e55, x[14]-27.5*b[113] <= 0.0)
@constraint(m, e56, x[15]-27.5*b[117] <= 0.0)
@constraint(m, e57, x[16]-27.5*b[118] <= 0.0)
@constraint(m, e58, x[17]-27.5*b[119] <= 0.0)
@constraint(m, e59, x[18]-27.5*b[123] <= 0.0)
@constraint(m, e60, x[19]-27.5*b[124] <= 0.0)
@constraint(m, e61, x[20]-27.5*b[125] <= 0.0)
@constraint(m, e62, x[21]-27.5*b[105] <= 0.0)
@constraint(m, e63, x[22]-26.5*b[108] <= 0.0)
@constraint(m, e64, x[23]-26.5*b[109] <= 0.0)
@constraint(m, e65, x[24]-27.5*b[111] <= 0.0)
@constraint(m, e66, x[25]-26.5*b[114] <= 0.0)
@constraint(m, e67, x[26]-26.5*b[115] <= 0.0)
@constraint(m, e68, x[27]-27.5*b[117] <= 0.0)
@constraint(m, e69, x[28]-26.5*b[120] <= 0.0)
@constraint(m, e70, x[29]-26.5*b[121] <= 0.0)
@constraint(m, e71, x[30]-27.5*b[123] <= 0.0)
@constraint(m, e72, x[31]-26.5*b[126] <= 0.0)
@constraint(m, e73, x[32]-26.5*b[127] <= 0.0)
@constraint(m, e74, x[33]-27.5*b[106] <= 0.0)
@constraint(m, e75, x[34]-26.5*b[108] <= 0.0)
@constraint(m, e76, x[35]-28.5*b[110] <= 0.0)
@constraint(m, e77, x[36]-27.5*b[112] <= 0.0)
@constraint(m, e78, x[37]-26.5*b[114] <= 0.0)
@constraint(m, e79, x[38]-28.5*b[116] <= 0.0)
@constraint(m, e80, x[39]-27.5*b[118] <= 0.0)
@constraint(m, e81, x[40]-26.5*b[120] <= 0.0)
@constraint(m, e82, x[41]-28.5*b[122] <= 0.0)
@constraint(m, e83, x[42]-27.5*b[124] <= 0.0)
@constraint(m, e84, x[43]-26.5*b[126] <= 0.0)
@constraint(m, e85, x[44]-28.5*b[128] <= 0.0)
@constraint(m, e86, x[45]-27.5*b[107] <= 0.0)
@constraint(m, e87, x[46]-26.5*b[109] <= 0.0)
@constraint(m, e88, x[47]-28.5*b[110] <= 0.0)
@constraint(m, e89, x[48]-27.5*b[113] <= 0.0)
@constraint(m, e90, x[49]-26.5*b[115] <= 0.0)
@constraint(m, e91, x[50]-28.5*b[116] <= 0.0)
@constraint(m, e92, x[51]-27.5*b[119] <= 0.0)
@constraint(m, e93, x[52]-26.5*b[121] <= 0.0)
@constraint(m, e94, x[53]-28.5*b[122] <= 0.0)
@constraint(m, e95, x[54]-27.5*b[125] <= 0.0)
@constraint(m, e96, x[55]-26.5*b[127] <= 0.0)
@constraint(m, e97, x[56]-28.5*b[128] <= 0.0)
@constraint(m, e98, x[57]-27*b[105] <= 0.0)
@constraint(m, e99, x[58]-27*b[106] <= 0.0)
@constraint(m, e100, x[59]-27*b[107] <= 0.0)
@constraint(m, e101, x[60]-27*b[111] <= 0.0)
@constraint(m, e102, x[61]-27*b[112] <= 0.0)
@constraint(m, e103, x[62]-27*b[113] <= 0.0)
@constraint(m, e104, x[63]-27*b[117] <= 0.0)
@constraint(m, e105, x[64]-27*b[118] <= 0.0)
@constraint(m, e106, x[65]-27*b[119] <= 0.0)
@constraint(m, e107, x[66]-27*b[123] <= 0.0)
@constraint(m, e108, x[67]-27*b[124] <= 0.0)
@constraint(m, e109, x[68]-27*b[125] <= 0.0)
@constraint(m, e110, x[69]-27*b[105] <= 0.0)
@constraint(m, e111, x[70]-27.5*b[108] <= 0.0)
@constraint(m, e112, x[71]-27.5*b[109] <= 0.0)
@constraint(m, e113, x[72]-27*b[111] <= 0.0)
@constraint(m, e114, x[73]-27.5*b[114] <= 0.0)
@constraint(m, e115, x[74]-27.5*b[115] <= 0.0)
@constraint(m, e116, x[75]-27*b[117] <= 0.0)
@constraint(m, e117, x[76]-27.5*b[120] <= 0.0)
@constraint(m, e118, x[77]-27.5*b[121] <= 0.0)
@constraint(m, e119, x[78]-27*b[123] <= 0.0)
@constraint(m, e120, x[79]-27.5*b[126] <= 0.0)
@constraint(m, e121, x[80]-27.5*b[127] <= 0.0)
@constraint(m, e122, x[81]-27*b[106] <= 0.0)
@constraint(m, e123, x[82]-27.5*b[108] <= 0.0)
@constraint(m, e124, x[83]-28.5*b[110] <= 0.0)
@constraint(m, e125, x[84]-27*b[112] <= 0.0)
@constraint(m, e126, x[85]-27.5*b[114] <= 0.0)
@constraint(m, e127, x[86]-28.5*b[116] <= 0.0)
@constraint(m, e128, x[87]-27*b[118] <= 0.0)
@constraint(m, e129, x[88]-27.5*b[120] <= 0.0)
@constraint(m, e130, x[89]-28.5*b[122] <= 0.0)
@constraint(m, e131, x[90]-27*b[124] <= 0.0)
@constraint(m, e132, x[91]-27.5*b[126] <= 0.0)
@constraint(m, e133, x[92]-28.5*b[128] <= 0.0)
@constraint(m, e134, x[93]-27*b[107] <= 0.0)
@constraint(m, e135, x[94]-27.5*b[109] <= 0.0)
@constraint(m, e136, x[95]-28.5*b[110] <= 0.0)
@constraint(m, e137, x[96]-27*b[113] <= 0.0)
@constraint(m, e138, x[97]-27.5*b[115] <= 0.0)
@constraint(m, e139, x[98]-28.5*b[116] <= 0.0)
@constraint(m, e140, x[99]-27*b[119] <= 0.0)
@constraint(m, e141, x[100]-27.5*b[121] <= 0.0)
@constraint(m, e142, x[101]-28.5*b[122] <= 0.0)
@constraint(m, e143, x[102]-27*b[125] <= 0.0)
@constraint(m, e144, x[103]-27.5*b[127] <= 0.0)
@constraint(m, e145, x[104]-28.5*b[128] <= 0.0)
@constraint(m, e146, x[9]-x[21]+6*b[105] <= 0.0)
@constraint(m, e147, x[10]-x[33]+4*b[106] <= 0.0)
@constraint(m, e148, x[11]-x[45]+3.5*b[107] <= 0.0)
@constraint(m, e149, x[22]-x[34]+5*b[108] <= 0.0)
@constraint(m, e150, x[23]-x[46]+4.5*b[109] <= 0.0)
@constraint(m, e151, x[35]-x[47]+2.5*b[110] <= 0.0)
@constraint(m, e152, -x[12]+x[24]+6*b[111] <= 0.0)
@constraint(m, e153, -x[13]+x[36]+4*b[112] <= 0.0)
@constraint(m, e154, -x[14]+x[48]+3.5*b[113] <= 0.0)
@constraint(m, e155, -x[25]+x[37]+5*b[114] <= 0.0)
@constraint(m, e156, -x[26]+x[49]+4.5*b[115] <= 0.0)
@constraint(m, e157, -x[38]+x[50]+2.5*b[116] <= 0.0)
@constraint(m, e158, x[63]-x[75]+5.5*b[117] <= 0.0)
@constraint(m, e159, x[64]-x[87]+4.5*b[118] <= 0.0)
@constraint(m, e160, x[65]-x[99]+4.5*b[119] <= 0.0)
@constraint(m, e161, x[76]-x[88]+4*b[120] <= 0.0)
@constraint(m, e162, x[77]-x[100]+4*b[121] <= 0.0)
@constraint(m, e163, x[89]-x[101]+3*b[122] <= 0.0)
@constraint(m, e164, -x[66]+x[78]+5.5*b[123] <= 0.0)
@constraint(m, e165, -x[67]+x[90]+4.5*b[124] <= 0.0)
@constraint(m, e166, -x[68]+x[102]+4.5*b[125] <= 0.0)
@constraint(m, e167, -x[79]+x[91]+4*b[126] <= 0.0)
@constraint(m, e168, -x[80]+x[103]+4*b[127] <= 0.0)
@constraint(m, e169, -x[92]+x[104]+3*b[128] <= 0.0)
@constraint(m, e170, b[105]+b[111]+b[117]+b[123] == 1.0)
@constraint(m, e171, b[106]+b[112]+b[118]+b[124] == 1.0)
@constraint(m, e172, b[107]+b[113]+b[119]+b[125] == 1.0)
@constraint(m, e173, b[108]+b[114]+b[120]+b[126] == 1.0)
@constraint(m, e174, b[109]+b[115]+b[121]+b[127] == 1.0)
@constraint(m, e175, b[110]+b[116]+b[122]+b[128] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[141])

 
