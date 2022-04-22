using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164]
@variable(m, x[x_Idx])
b_Idx = Any[121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
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
set_lower_bound(x[41], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[158], 0.0)
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
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 11.5)
set_upper_bound(x[1], 57.5)
set_lower_bound(x[2], 12.5)
set_upper_bound(x[2], 56.5)
set_lower_bound(x[3], 10.5)
set_upper_bound(x[3], 58.5)
set_lower_bound(x[4], 10.0)
set_upper_bound(x[4], 59.0)
set_lower_bound(x[5], 7.0)
set_upper_bound(x[5], 87.0)
set_lower_bound(x[6], 6.5)
set_upper_bound(x[6], 87.5)
set_lower_bound(x[7], 5.5)
set_upper_bound(x[7], 88.5)
set_lower_bound(x[8], 5.5)
set_upper_bound(x[8], 88.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[153]-240*x[154]-210*x[155]-100*x[156]-150*x[157]-120*x[158]-300*x[159]-240*x[160]-210*x[161]-100*x[162]-150*x[163]-120*x[164]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[153] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[154] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[155] >= 0.0)
@constraint(m, e5, -x[2]+x[3]+x[156] >= 0.0)
@constraint(m, e6, -x[2]+x[4]+x[157] >= 0.0)
@constraint(m, e7, -x[3]+x[4]+x[158] >= 0.0)
@constraint(m, e8, x[1]-x[2]+x[153] >= 0.0)
@constraint(m, e9, x[1]-x[3]+x[154] >= 0.0)
@constraint(m, e10, x[1]-x[4]+x[155] >= 0.0)
@constraint(m, e11, x[2]-x[3]+x[156] >= 0.0)
@constraint(m, e12, x[2]-x[4]+x[157] >= 0.0)
@constraint(m, e13, x[3]-x[4]+x[158] >= 0.0)
@constraint(m, e14, -x[5]+x[6]+x[159] >= 0.0)
@constraint(m, e15, -x[5]+x[7]+x[160] >= 0.0)
@constraint(m, e16, -x[5]+x[8]+x[161] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[162] >= 0.0)
@constraint(m, e18, -x[6]+x[8]+x[163] >= 0.0)
@constraint(m, e19, -x[7]+x[8]+x[164] >= 0.0)
@constraint(m, e20, x[5]-x[6]+x[159] >= 0.0)
@constraint(m, e21, x[5]-x[7]+x[160] >= 0.0)
@constraint(m, e22, x[5]-x[8]+x[161] >= 0.0)
@constraint(m, e23, x[6]-x[7]+x[162] >= 0.0)
@constraint(m, e24, x[6]-x[8]+x[163] >= 0.0)
@constraint(m, e25, x[7]-x[8]+x[164] >= 0.0)
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
@constraint(m, e50, x[9]-57.5*b[121] <= 0.0)
@constraint(m, e51, x[10]-57.5*b[122] <= 0.0)
@constraint(m, e52, x[11]-57.5*b[123] <= 0.0)
@constraint(m, e53, x[12]-57.5*b[127] <= 0.0)
@constraint(m, e54, x[13]-57.5*b[128] <= 0.0)
@constraint(m, e55, x[14]-57.5*b[129] <= 0.0)
@constraint(m, e56, x[15]-57.5*b[133] <= 0.0)
@constraint(m, e57, x[16]-57.5*b[134] <= 0.0)
@constraint(m, e58, x[17]-57.5*b[135] <= 0.0)
@constraint(m, e59, x[18]-57.5*b[139] <= 0.0)
@constraint(m, e60, x[19]-57.5*b[140] <= 0.0)
@constraint(m, e61, x[20]-57.5*b[141] <= 0.0)
@constraint(m, e62, x[21]-57.5*b[121] <= 0.0)
@constraint(m, e63, x[22]-56.5*b[124] <= 0.0)
@constraint(m, e64, x[23]-56.5*b[125] <= 0.0)
@constraint(m, e65, x[24]-57.5*b[127] <= 0.0)
@constraint(m, e66, x[25]-56.5*b[130] <= 0.0)
@constraint(m, e67, x[26]-56.5*b[131] <= 0.0)
@constraint(m, e68, x[27]-57.5*b[133] <= 0.0)
@constraint(m, e69, x[28]-56.5*b[136] <= 0.0)
@constraint(m, e70, x[29]-56.5*b[137] <= 0.0)
@constraint(m, e71, x[30]-57.5*b[139] <= 0.0)
@constraint(m, e72, x[31]-56.5*b[142] <= 0.0)
@constraint(m, e73, x[32]-56.5*b[143] <= 0.0)
@constraint(m, e74, x[33]-57.5*b[122] <= 0.0)
@constraint(m, e75, x[34]-56.5*b[124] <= 0.0)
@constraint(m, e76, x[35]-58.5*b[126] <= 0.0)
@constraint(m, e77, x[36]-57.5*b[128] <= 0.0)
@constraint(m, e78, x[37]-56.5*b[130] <= 0.0)
@constraint(m, e79, x[38]-58.5*b[132] <= 0.0)
@constraint(m, e80, x[39]-57.5*b[134] <= 0.0)
@constraint(m, e81, x[40]-56.5*b[136] <= 0.0)
@constraint(m, e82, x[41]-58.5*b[138] <= 0.0)
@constraint(m, e83, x[42]-57.5*b[140] <= 0.0)
@constraint(m, e84, x[43]-56.5*b[142] <= 0.0)
@constraint(m, e85, x[44]-58.5*b[144] <= 0.0)
@constraint(m, e86, x[45]-57.5*b[123] <= 0.0)
@constraint(m, e87, x[46]-56.5*b[125] <= 0.0)
@constraint(m, e88, x[47]-58.5*b[126] <= 0.0)
@constraint(m, e89, x[48]-57.5*b[129] <= 0.0)
@constraint(m, e90, x[49]-56.5*b[131] <= 0.0)
@constraint(m, e91, x[50]-58.5*b[132] <= 0.0)
@constraint(m, e92, x[51]-57.5*b[135] <= 0.0)
@constraint(m, e93, x[52]-56.5*b[137] <= 0.0)
@constraint(m, e94, x[53]-58.5*b[138] <= 0.0)
@constraint(m, e95, x[54]-57.5*b[141] <= 0.0)
@constraint(m, e96, x[55]-56.5*b[143] <= 0.0)
@constraint(m, e97, x[56]-58.5*b[144] <= 0.0)
@constraint(m, e98, x[57]-87*b[121] <= 0.0)
@constraint(m, e99, x[58]-87*b[122] <= 0.0)
@constraint(m, e100, x[59]-87*b[123] <= 0.0)
@constraint(m, e101, x[60]-87*b[127] <= 0.0)
@constraint(m, e102, x[61]-87*b[128] <= 0.0)
@constraint(m, e103, x[62]-87*b[129] <= 0.0)
@constraint(m, e104, x[63]-87*b[133] <= 0.0)
@constraint(m, e105, x[64]-87*b[134] <= 0.0)
@constraint(m, e106, x[65]-87*b[135] <= 0.0)
@constraint(m, e107, x[66]-87*b[139] <= 0.0)
@constraint(m, e108, x[67]-87*b[140] <= 0.0)
@constraint(m, e109, x[68]-87*b[141] <= 0.0)
@constraint(m, e110, x[69]-87*b[121] <= 0.0)
@constraint(m, e111, x[70]-87.5*b[124] <= 0.0)
@constraint(m, e112, x[71]-87.5*b[125] <= 0.0)
@constraint(m, e113, x[72]-87*b[127] <= 0.0)
@constraint(m, e114, x[73]-87.5*b[130] <= 0.0)
@constraint(m, e115, x[74]-87.5*b[131] <= 0.0)
@constraint(m, e116, x[75]-87*b[133] <= 0.0)
@constraint(m, e117, x[76]-87.5*b[136] <= 0.0)
@constraint(m, e118, x[77]-87.5*b[137] <= 0.0)
@constraint(m, e119, x[78]-87*b[139] <= 0.0)
@constraint(m, e120, x[79]-87.5*b[142] <= 0.0)
@constraint(m, e121, x[80]-87.5*b[143] <= 0.0)
@constraint(m, e122, x[81]-87*b[122] <= 0.0)
@constraint(m, e123, x[82]-87.5*b[124] <= 0.0)
@constraint(m, e124, x[83]-88.5*b[126] <= 0.0)
@constraint(m, e125, x[84]-87*b[128] <= 0.0)
@constraint(m, e126, x[85]-87.5*b[130] <= 0.0)
@constraint(m, e127, x[86]-88.5*b[132] <= 0.0)
@constraint(m, e128, x[87]-87*b[134] <= 0.0)
@constraint(m, e129, x[88]-87.5*b[136] <= 0.0)
@constraint(m, e130, x[89]-88.5*b[138] <= 0.0)
@constraint(m, e131, x[90]-87*b[140] <= 0.0)
@constraint(m, e132, x[91]-87.5*b[142] <= 0.0)
@constraint(m, e133, x[92]-88.5*b[144] <= 0.0)
@constraint(m, e134, x[93]-87*b[123] <= 0.0)
@constraint(m, e135, x[94]-87.5*b[125] <= 0.0)
@constraint(m, e136, x[95]-88.5*b[126] <= 0.0)
@constraint(m, e137, x[96]-87*b[129] <= 0.0)
@constraint(m, e138, x[97]-87.5*b[131] <= 0.0)
@constraint(m, e139, x[98]-88.5*b[132] <= 0.0)
@constraint(m, e140, x[99]-87*b[135] <= 0.0)
@constraint(m, e141, x[100]-87.5*b[137] <= 0.0)
@constraint(m, e142, x[101]-88.5*b[138] <= 0.0)
@constraint(m, e143, x[102]-87*b[141] <= 0.0)
@constraint(m, e144, x[103]-87.5*b[143] <= 0.0)
@constraint(m, e145, x[104]-88.5*b[144] <= 0.0)
@constraint(m, e146, x[9]-x[21]+6*b[121] <= 0.0)
@constraint(m, e147, x[10]-x[33]+4*b[122] <= 0.0)
@constraint(m, e148, x[11]-x[45]+3.5*b[123] <= 0.0)
@constraint(m, e149, x[22]-x[34]+5*b[124] <= 0.0)
@constraint(m, e150, x[23]-x[46]+4.5*b[125] <= 0.0)
@constraint(m, e151, x[35]-x[47]+2.5*b[126] <= 0.0)
@constraint(m, e152, -x[12]+x[24]+6*b[127] <= 0.0)
@constraint(m, e153, -x[13]+x[36]+4*b[128] <= 0.0)
@constraint(m, e154, -x[14]+x[48]+3.5*b[129] <= 0.0)
@constraint(m, e155, -x[25]+x[37]+5*b[130] <= 0.0)
@constraint(m, e156, -x[26]+x[49]+4.5*b[131] <= 0.0)
@constraint(m, e157, -x[38]+x[50]+2.5*b[132] <= 0.0)
@constraint(m, e158, x[63]-x[75]+5.5*b[133] <= 0.0)
@constraint(m, e159, x[64]-x[87]+4.5*b[134] <= 0.0)
@constraint(m, e160, x[65]-x[99]+4.5*b[135] <= 0.0)
@constraint(m, e161, x[76]-x[88]+4*b[136] <= 0.0)
@constraint(m, e162, x[77]-x[100]+4*b[137] <= 0.0)
@constraint(m, e163, x[89]-x[101]+3*b[138] <= 0.0)
@constraint(m, e164, -x[66]+x[78]+5.5*b[139] <= 0.0)
@constraint(m, e165, -x[67]+x[90]+4.5*b[140] <= 0.0)
@constraint(m, e166, -x[68]+x[102]+4.5*b[141] <= 0.0)
@constraint(m, e167, -x[79]+x[91]+4*b[142] <= 0.0)
@constraint(m, e168, -x[80]+x[103]+4*b[143] <= 0.0)
@constraint(m, e169, -x[92]+x[104]+3*b[144] <= 0.0)
@constraint(m, e170, b[121]+b[127]+b[133]+b[139] == 1.0)
@constraint(m, e171, b[122]+b[128]+b[134]+b[140] == 1.0)
@constraint(m, e172, b[123]+b[129]+b[135]+b[141] == 1.0)
@constraint(m, e173, b[124]+b[130]+b[136]+b[142] == 1.0)
@constraint(m, e174, b[125]+b[131]+b[137]+b[143] == 1.0)
@constraint(m, e175, b[126]+b[132]+b[138]+b[144] == 1.0)
@constraint(m, e176, x[1]-x[105]-x[109] == 0.0)
@constraint(m, e177, x[2]-x[106]-x[110] == 0.0)
@constraint(m, e178, x[3]-x[107]-x[111] == 0.0)
@constraint(m, e179, x[4]-x[108]-x[112] == 0.0)
@constraint(m, e180, x[5]-x[113]-x[117] == 0.0)
@constraint(m, e181, x[6]-x[114]-x[118] == 0.0)
@constraint(m, e182, x[7]-x[115]-x[119] == 0.0)
@constraint(m, e183, x[8]-x[116]-x[120] == 0.0)
@constraint(m, e184, x[105]-18.5*b[145] <= 0.0)
@constraint(m, e185, x[106]-17.5*b[146] <= 0.0)
@constraint(m, e186, x[107]-19.5*b[147] <= 0.0)
@constraint(m, e187, x[108]-20*b[148] <= 0.0)
@constraint(m, e188, x[109]-57.5*b[149] <= 0.0)
@constraint(m, e189, x[110]-56.5*b[150] <= 0.0)
@constraint(m, e190, x[111]-58.5*b[151] <= 0.0)
@constraint(m, e191, x[112]-59*b[152] <= 0.0)
@constraint(m, e192, x[113]-13*b[145] <= 0.0)
@constraint(m, e193, x[114]-13.5*b[146] <= 0.0)
@constraint(m, e194, x[115]-14.5*b[147] <= 0.0)
@constraint(m, e195, x[116]-14.5*b[148] <= 0.0)
@constraint(m, e196, x[117]-87*b[149] <= 0.0)
@constraint(m, e197, x[118]-87.5*b[150] <= 0.0)
@constraint(m, e198, x[119]-88.5*b[151] <= 0.0)
@constraint(m, e199, x[120]-88.5*b[152] <= 0.0)
@NLconstraint(m, e200, ( (x[105]/(1e-6+b[145]))^2-35*x[105]/(1e-6+b[145])+306.25*b[145]+ (x[113]/(1e-6+b[145]))^2-14*x[113]/(1e-6+b[145])+49*b[145]-36*b[145])*(1e-6+b[145]) <= 0.0)
@NLconstraint(m, e201, ( (x[106]/(1e-6+b[146]))^2-37*x[106]/(1e-6+b[146])+342.25*b[146]+ (x[114]/(1e-6+b[146]))^2-15*x[114]/(1e-6+b[146])+56.25*b[146]-36*b[146])*(1e-6+b[146]) <= 0.0)
@NLconstraint(m, e202, ( (x[107]/(1e-6+b[147]))^2-33*x[107]/(1e-6+b[147])+272.25*b[147]+ (x[115]/(1e-6+b[147]))^2-17*x[115]/(1e-6+b[147])+72.25*b[147]-36*b[147])*(1e-6+b[147]) <= 0.0)
@NLconstraint(m, e203, ( (x[108]/(1e-6+b[148]))^2-32*x[108]/(1e-6+b[148])+256*b[148]+ (x[116]/(1e-6+b[148]))^2-17*x[116]/(1e-6+b[148])+72.25*b[148]-36*b[148])*(1e-6+b[148]) <= 0.0)
@NLconstraint(m, e204, ( (x[109]/(1e-6+b[149]))^2-105*x[109]/(1e-6+b[149])+2756.25*b[149]+ (x[117]/(1e-6+b[149]))^2-154*x[117]/(1e-6+b[149])+5929*b[149]-100*b[149])*(1e-6+b[149]) <= 0.0)
@NLconstraint(m, e205, ( (x[110]/(1e-6+b[150]))^2-107*x[110]/(1e-6+b[150])+2862.25*b[150]+ (x[118]/(1e-6+b[150]))^2-155*x[118]/(1e-6+b[150])+6006.25*b[150]-100*b[150])*(1e-6+b[150]) <= 0.0)
@NLconstraint(m, e206, ( (x[111]/(1e-6+b[151]))^2-103*x[111]/(1e-6+b[151])+2652.25*b[151]+ (x[119]/(1e-6+b[151]))^2-157*x[119]/(1e-6+b[151])+6162.25*b[151]-100*b[151])*(1e-6+b[151]) <= 0.0)
@NLconstraint(m, e207, ( (x[112]/(1e-6+b[152]))^2-102*x[112]/(1e-6+b[152])+2601*b[152]+ (x[120]/(1e-6+b[152]))^2-157*x[120]/(1e-6+b[152])+6162.25*b[152]-100*b[152])*(1e-6+b[152]) <= 0.0)
@NLconstraint(m, e208, ( (x[105]/(1e-6+b[145]))^2-35*x[105]/(1e-6+b[145])+306.25*b[145]+ (x[113]/(1e-6+b[145]))^2-26*x[113]/(1e-6+b[145])+169*b[145]-36*b[145])*(1e-6+b[145]) <= 0.0)
@NLconstraint(m, e209, ( (x[106]/(1e-6+b[146]))^2-37*x[106]/(1e-6+b[146])+342.25*b[146]+ (x[114]/(1e-6+b[146]))^2-25*x[114]/(1e-6+b[146])+156.25*b[146]-36*b[146])*(1e-6+b[146]) <= 0.0)
@NLconstraint(m, e210, ( (x[107]/(1e-6+b[147]))^2-33*x[107]/(1e-6+b[147])+272.25*b[147]+ (x[115]/(1e-6+b[147]))^2-23*x[115]/(1e-6+b[147])+132.25*b[147]-36*b[147])*(1e-6+b[147]) <= 0.0)
@NLconstraint(m, e211, ( (x[108]/(1e-6+b[148]))^2-32*x[108]/(1e-6+b[148])+256*b[148]+ (x[116]/(1e-6+b[148]))^2-23*x[116]/(1e-6+b[148])+132.25*b[148]-36*b[148])*(1e-6+b[148]) <= 0.0)
@NLconstraint(m, e212, ( (x[109]/(1e-6+b[149]))^2-105*x[109]/(1e-6+b[149])+2756.25*b[149]+ (x[117]/(1e-6+b[149]))^2-166*x[117]/(1e-6+b[149])+6889*b[149]-100*b[149])*(1e-6+b[149]) <= 0.0)
@NLconstraint(m, e213, ( (x[110]/(1e-6+b[150]))^2-107*x[110]/(1e-6+b[150])+2862.25*b[150]+ (x[118]/(1e-6+b[150]))^2-165*x[118]/(1e-6+b[150])+6806.25*b[150]-100*b[150])*(1e-6+b[150]) <= 0.0)
@NLconstraint(m, e214, ( (x[111]/(1e-6+b[151]))^2-103*x[111]/(1e-6+b[151])+2652.25*b[151]+ (x[119]/(1e-6+b[151]))^2-163*x[119]/(1e-6+b[151])+6642.25*b[151]-100*b[151])*(1e-6+b[151]) <= 0.0)
@NLconstraint(m, e215, ( (x[112]/(1e-6+b[152]))^2-102*x[112]/(1e-6+b[152])+2601*b[152]+ (x[120]/(1e-6+b[152]))^2-163*x[120]/(1e-6+b[152])+6642.25*b[152]-100*b[152])*(1e-6+b[152]) <= 0.0)
@NLconstraint(m, e216, ( (x[105]/(1e-6+b[145]))^2-25*x[105]/(1e-6+b[145])+156.25*b[145]+ (x[113]/(1e-6+b[145]))^2-14*x[113]/(1e-6+b[145])+49*b[145]-36*b[145])*(1e-6+b[145]) <= 0.0)
@NLconstraint(m, e217, ( (x[106]/(1e-6+b[146]))^2-23*x[106]/(1e-6+b[146])+132.25*b[146]+ (x[114]/(1e-6+b[146]))^2-15*x[114]/(1e-6+b[146])+56.25*b[146]-36*b[146])*(1e-6+b[146]) <= 0.0)
@NLconstraint(m, e218, ( (x[107]/(1e-6+b[147]))^2-27*x[107]/(1e-6+b[147])+182.25*b[147]+ (x[115]/(1e-6+b[147]))^2-17*x[115]/(1e-6+b[147])+72.25*b[147]-36*b[147])*(1e-6+b[147]) <= 0.0)
@NLconstraint(m, e219, ( (x[108]/(1e-6+b[148]))^2-28*x[108]/(1e-6+b[148])+196*b[148]+ (x[116]/(1e-6+b[148]))^2-17*x[116]/(1e-6+b[148])+72.25*b[148]-36*b[148])*(1e-6+b[148]) <= 0.0)
@NLconstraint(m, e220, ( (x[109]/(1e-6+b[149]))^2-95*x[109]/(1e-6+b[149])+2256.25*b[149]+ (x[117]/(1e-6+b[149]))^2-154*x[117]/(1e-6+b[149])+5929*b[149]-100*b[149])*(1e-6+b[149]) <= 0.0)
@NLconstraint(m, e221, ( (x[110]/(1e-6+b[150]))^2-93*x[110]/(1e-6+b[150])+2162.25*b[150]+ (x[118]/(1e-6+b[150]))^2-155*x[118]/(1e-6+b[150])+6006.25*b[150]-100*b[150])*(1e-6+b[150]) <= 0.0)
@NLconstraint(m, e222, ( (x[111]/(1e-6+b[151]))^2-97*x[111]/(1e-6+b[151])+2352.25*b[151]+ (x[119]/(1e-6+b[151]))^2-157*x[119]/(1e-6+b[151])+6162.25*b[151]-100*b[151])*(1e-6+b[151]) <= 0.0)
@NLconstraint(m, e223, ( (x[112]/(1e-6+b[152]))^2-98*x[112]/(1e-6+b[152])+2401*b[152]+ (x[120]/(1e-6+b[152]))^2-157*x[120]/(1e-6+b[152])+6162.25*b[152]-100*b[152])*(1e-6+b[152]) <= 0.0)
@NLconstraint(m, e224, ( (x[105]/(1e-6+b[145]))^2-25*x[105]/(1e-6+b[145])+156.25*b[145]+ (x[113]/(1e-6+b[145]))^2-26*x[113]/(1e-6+b[145])+169*b[145]-36*b[145])*(1e-6+b[145]) <= 0.0)
@NLconstraint(m, e225, ( (x[106]/(1e-6+b[146]))^2-23*x[106]/(1e-6+b[146])+132.25*b[146]+ (x[114]/(1e-6+b[146]))^2-25*x[114]/(1e-6+b[146])+156.25*b[146]-36*b[146])*(1e-6+b[146]) <= 0.0)
@NLconstraint(m, e226, ( (x[107]/(1e-6+b[147]))^2-27*x[107]/(1e-6+b[147])+182.25*b[147]+ (x[115]/(1e-6+b[147]))^2-23*x[115]/(1e-6+b[147])+132.25*b[147]-36*b[147])*(1e-6+b[147]) <= 0.0)
@NLconstraint(m, e227, ( (x[108]/(1e-6+b[148]))^2-28*x[108]/(1e-6+b[148])+196*b[148]+ (x[116]/(1e-6+b[148]))^2-23*x[116]/(1e-6+b[148])+132.25*b[148]-36*b[148])*(1e-6+b[148]) <= 0.0)
@NLconstraint(m, e228, ( (x[109]/(1e-6+b[149]))^2-95*x[109]/(1e-6+b[149])+2256.25*b[149]+ (x[117]/(1e-6+b[149]))^2-166*x[117]/(1e-6+b[149])+6889*b[149]-100*b[149])*(1e-6+b[149]) <= 0.0)
@NLconstraint(m, e229, ( (x[110]/(1e-6+b[150]))^2-93*x[110]/(1e-6+b[150])+2162.25*b[150]+ (x[118]/(1e-6+b[150]))^2-165*x[118]/(1e-6+b[150])+6806.25*b[150]-100*b[150])*(1e-6+b[150]) <= 0.0)
@NLconstraint(m, e230, ( (x[111]/(1e-6+b[151]))^2-97*x[111]/(1e-6+b[151])+2352.25*b[151]+ (x[119]/(1e-6+b[151]))^2-163*x[119]/(1e-6+b[151])+6642.25*b[151]-100*b[151])*(1e-6+b[151]) <= 0.0)
@NLconstraint(m, e231, ( (x[112]/(1e-6+b[152]))^2-98*x[112]/(1e-6+b[152])+2401*b[152]+ (x[120]/(1e-6+b[152]))^2-163*x[120]/(1e-6+b[152])+6642.25*b[152]-100*b[152])*(1e-6+b[152]) <= 0.0)
@constraint(m, e232, b[145]+b[149] == 1.0)
@constraint(m, e233, b[146]+b[150] == 1.0)
@constraint(m, e234, b[147]+b[151] == 1.0)
@constraint(m, e235, b[148]+b[152] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
