using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176]
@variable(m, x[x_Idx])
b_Idx = Any[129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164]
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
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[171], 0.0)
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
set_lower_bound(x[165], 0.0)
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
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[173], 0.0)
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
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[1], 11.5)
set_upper_bound(x[1], 52.5)
set_lower_bound(x[2], 12.5)
set_upper_bound(x[2], 51.5)
set_lower_bound(x[3], 10.5)
set_upper_bound(x[3], 53.5)
set_lower_bound(x[4], 10.0)
set_upper_bound(x[4], 54.0)
set_lower_bound(x[5], 7.0)
set_upper_bound(x[5], 82.0)
set_lower_bound(x[6], 6.5)
set_upper_bound(x[6], 82.5)
set_lower_bound(x[7], 5.5)
set_upper_bound(x[7], 83.5)
set_lower_bound(x[8], 5.5)
set_upper_bound(x[8], 83.5)


# ----- Constraints ----- #
@constraint(m, e1, -300*x[165]-240*x[166]-210*x[167]-100*x[168]-150*x[169]-120*x[170]-300*x[171]-240*x[172]-210*x[173]-100*x[174]-150*x[175]-120*x[176]+objvar == 0.0)
@constraint(m, e2, -x[1]+x[2]+x[165] >= 0.0)
@constraint(m, e3, -x[1]+x[3]+x[166] >= 0.0)
@constraint(m, e4, -x[1]+x[4]+x[167] >= 0.0)
@constraint(m, e5, -x[2]+x[3]+x[168] >= 0.0)
@constraint(m, e6, -x[2]+x[4]+x[169] >= 0.0)
@constraint(m, e7, -x[3]+x[4]+x[170] >= 0.0)
@constraint(m, e8, x[1]-x[2]+x[165] >= 0.0)
@constraint(m, e9, x[1]-x[3]+x[166] >= 0.0)
@constraint(m, e10, x[1]-x[4]+x[167] >= 0.0)
@constraint(m, e11, x[2]-x[3]+x[168] >= 0.0)
@constraint(m, e12, x[2]-x[4]+x[169] >= 0.0)
@constraint(m, e13, x[3]-x[4]+x[170] >= 0.0)
@constraint(m, e14, -x[5]+x[6]+x[171] >= 0.0)
@constraint(m, e15, -x[5]+x[7]+x[172] >= 0.0)
@constraint(m, e16, -x[5]+x[8]+x[173] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[174] >= 0.0)
@constraint(m, e18, -x[6]+x[8]+x[175] >= 0.0)
@constraint(m, e19, -x[7]+x[8]+x[176] >= 0.0)
@constraint(m, e20, x[5]-x[6]+x[171] >= 0.0)
@constraint(m, e21, x[5]-x[7]+x[172] >= 0.0)
@constraint(m, e22, x[5]-x[8]+x[173] >= 0.0)
@constraint(m, e23, x[6]-x[7]+x[174] >= 0.0)
@constraint(m, e24, x[6]-x[8]+x[175] >= 0.0)
@constraint(m, e25, x[7]-x[8]+x[176] >= 0.0)
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
@constraint(m, e50, x[9]-52.5*b[129] <= 0.0)
@constraint(m, e51, x[10]-52.5*b[130] <= 0.0)
@constraint(m, e52, x[11]-52.5*b[131] <= 0.0)
@constraint(m, e53, x[12]-52.5*b[135] <= 0.0)
@constraint(m, e54, x[13]-52.5*b[136] <= 0.0)
@constraint(m, e55, x[14]-52.5*b[137] <= 0.0)
@constraint(m, e56, x[15]-52.5*b[141] <= 0.0)
@constraint(m, e57, x[16]-52.5*b[142] <= 0.0)
@constraint(m, e58, x[17]-52.5*b[143] <= 0.0)
@constraint(m, e59, x[18]-52.5*b[147] <= 0.0)
@constraint(m, e60, x[19]-52.5*b[148] <= 0.0)
@constraint(m, e61, x[20]-52.5*b[149] <= 0.0)
@constraint(m, e62, x[21]-52.5*b[129] <= 0.0)
@constraint(m, e63, x[22]-51.5*b[132] <= 0.0)
@constraint(m, e64, x[23]-51.5*b[133] <= 0.0)
@constraint(m, e65, x[24]-52.5*b[135] <= 0.0)
@constraint(m, e66, x[25]-51.5*b[138] <= 0.0)
@constraint(m, e67, x[26]-51.5*b[139] <= 0.0)
@constraint(m, e68, x[27]-52.5*b[141] <= 0.0)
@constraint(m, e69, x[28]-51.5*b[144] <= 0.0)
@constraint(m, e70, x[29]-51.5*b[145] <= 0.0)
@constraint(m, e71, x[30]-52.5*b[147] <= 0.0)
@constraint(m, e72, x[31]-51.5*b[150] <= 0.0)
@constraint(m, e73, x[32]-51.5*b[151] <= 0.0)
@constraint(m, e74, x[33]-52.5*b[130] <= 0.0)
@constraint(m, e75, x[34]-51.5*b[132] <= 0.0)
@constraint(m, e76, x[35]-53.5*b[134] <= 0.0)
@constraint(m, e77, x[36]-52.5*b[136] <= 0.0)
@constraint(m, e78, x[37]-51.5*b[138] <= 0.0)
@constraint(m, e79, x[38]-53.5*b[140] <= 0.0)
@constraint(m, e80, x[39]-52.5*b[142] <= 0.0)
@constraint(m, e81, x[40]-51.5*b[144] <= 0.0)
@constraint(m, e82, x[41]-53.5*b[146] <= 0.0)
@constraint(m, e83, x[42]-52.5*b[148] <= 0.0)
@constraint(m, e84, x[43]-51.5*b[150] <= 0.0)
@constraint(m, e85, x[44]-53.5*b[152] <= 0.0)
@constraint(m, e86, x[45]-52.5*b[131] <= 0.0)
@constraint(m, e87, x[46]-51.5*b[133] <= 0.0)
@constraint(m, e88, x[47]-53.5*b[134] <= 0.0)
@constraint(m, e89, x[48]-52.5*b[137] <= 0.0)
@constraint(m, e90, x[49]-51.5*b[139] <= 0.0)
@constraint(m, e91, x[50]-53.5*b[140] <= 0.0)
@constraint(m, e92, x[51]-52.5*b[143] <= 0.0)
@constraint(m, e93, x[52]-51.5*b[145] <= 0.0)
@constraint(m, e94, x[53]-53.5*b[146] <= 0.0)
@constraint(m, e95, x[54]-52.5*b[149] <= 0.0)
@constraint(m, e96, x[55]-51.5*b[151] <= 0.0)
@constraint(m, e97, x[56]-53.5*b[152] <= 0.0)
@constraint(m, e98, x[57]-82*b[129] <= 0.0)
@constraint(m, e99, x[58]-82*b[130] <= 0.0)
@constraint(m, e100, x[59]-82*b[131] <= 0.0)
@constraint(m, e101, x[60]-82*b[135] <= 0.0)
@constraint(m, e102, x[61]-82*b[136] <= 0.0)
@constraint(m, e103, x[62]-82*b[137] <= 0.0)
@constraint(m, e104, x[63]-82*b[141] <= 0.0)
@constraint(m, e105, x[64]-82*b[142] <= 0.0)
@constraint(m, e106, x[65]-82*b[143] <= 0.0)
@constraint(m, e107, x[66]-82*b[147] <= 0.0)
@constraint(m, e108, x[67]-82*b[148] <= 0.0)
@constraint(m, e109, x[68]-82*b[149] <= 0.0)
@constraint(m, e110, x[69]-82*b[129] <= 0.0)
@constraint(m, e111, x[70]-82.5*b[132] <= 0.0)
@constraint(m, e112, x[71]-82.5*b[133] <= 0.0)
@constraint(m, e113, x[72]-82*b[135] <= 0.0)
@constraint(m, e114, x[73]-82.5*b[138] <= 0.0)
@constraint(m, e115, x[74]-82.5*b[139] <= 0.0)
@constraint(m, e116, x[75]-82*b[141] <= 0.0)
@constraint(m, e117, x[76]-82.5*b[144] <= 0.0)
@constraint(m, e118, x[77]-82.5*b[145] <= 0.0)
@constraint(m, e119, x[78]-82*b[147] <= 0.0)
@constraint(m, e120, x[79]-82.5*b[150] <= 0.0)
@constraint(m, e121, x[80]-82.5*b[151] <= 0.0)
@constraint(m, e122, x[81]-82*b[130] <= 0.0)
@constraint(m, e123, x[82]-82.5*b[132] <= 0.0)
@constraint(m, e124, x[83]-83.5*b[134] <= 0.0)
@constraint(m, e125, x[84]-82*b[136] <= 0.0)
@constraint(m, e126, x[85]-82.5*b[138] <= 0.0)
@constraint(m, e127, x[86]-83.5*b[140] <= 0.0)
@constraint(m, e128, x[87]-82*b[142] <= 0.0)
@constraint(m, e129, x[88]-82.5*b[144] <= 0.0)
@constraint(m, e130, x[89]-83.5*b[146] <= 0.0)
@constraint(m, e131, x[90]-82*b[148] <= 0.0)
@constraint(m, e132, x[91]-82.5*b[150] <= 0.0)
@constraint(m, e133, x[92]-83.5*b[152] <= 0.0)
@constraint(m, e134, x[93]-82*b[131] <= 0.0)
@constraint(m, e135, x[94]-82.5*b[133] <= 0.0)
@constraint(m, e136, x[95]-83.5*b[134] <= 0.0)
@constraint(m, e137, x[96]-82*b[137] <= 0.0)
@constraint(m, e138, x[97]-82.5*b[139] <= 0.0)
@constraint(m, e139, x[98]-83.5*b[140] <= 0.0)
@constraint(m, e140, x[99]-82*b[143] <= 0.0)
@constraint(m, e141, x[100]-82.5*b[145] <= 0.0)
@constraint(m, e142, x[101]-83.5*b[146] <= 0.0)
@constraint(m, e143, x[102]-82*b[149] <= 0.0)
@constraint(m, e144, x[103]-82.5*b[151] <= 0.0)
@constraint(m, e145, x[104]-83.5*b[152] <= 0.0)
@constraint(m, e146, x[9]-x[21]+6*b[129] <= 0.0)
@constraint(m, e147, x[10]-x[33]+4*b[130] <= 0.0)
@constraint(m, e148, x[11]-x[45]+3.5*b[131] <= 0.0)
@constraint(m, e149, x[22]-x[34]+5*b[132] <= 0.0)
@constraint(m, e150, x[23]-x[46]+4.5*b[133] <= 0.0)
@constraint(m, e151, x[35]-x[47]+2.5*b[134] <= 0.0)
@constraint(m, e152, -x[12]+x[24]+6*b[135] <= 0.0)
@constraint(m, e153, -x[13]+x[36]+4*b[136] <= 0.0)
@constraint(m, e154, -x[14]+x[48]+3.5*b[137] <= 0.0)
@constraint(m, e155, -x[25]+x[37]+5*b[138] <= 0.0)
@constraint(m, e156, -x[26]+x[49]+4.5*b[139] <= 0.0)
@constraint(m, e157, -x[38]+x[50]+2.5*b[140] <= 0.0)
@constraint(m, e158, x[63]-x[75]+5.5*b[141] <= 0.0)
@constraint(m, e159, x[64]-x[87]+4.5*b[142] <= 0.0)
@constraint(m, e160, x[65]-x[99]+4.5*b[143] <= 0.0)
@constraint(m, e161, x[76]-x[88]+4*b[144] <= 0.0)
@constraint(m, e162, x[77]-x[100]+4*b[145] <= 0.0)
@constraint(m, e163, x[89]-x[101]+3*b[146] <= 0.0)
@constraint(m, e164, -x[66]+x[78]+5.5*b[147] <= 0.0)
@constraint(m, e165, -x[67]+x[90]+4.5*b[148] <= 0.0)
@constraint(m, e166, -x[68]+x[102]+4.5*b[149] <= 0.0)
@constraint(m, e167, -x[79]+x[91]+4*b[150] <= 0.0)
@constraint(m, e168, -x[80]+x[103]+4*b[151] <= 0.0)
@constraint(m, e169, -x[92]+x[104]+3*b[152] <= 0.0)
@constraint(m, e170, b[129]+b[135]+b[141]+b[147] == 1.0)
@constraint(m, e171, b[130]+b[136]+b[142]+b[148] == 1.0)
@constraint(m, e172, b[131]+b[137]+b[143]+b[149] == 1.0)
@constraint(m, e173, b[132]+b[138]+b[144]+b[150] == 1.0)
@constraint(m, e174, b[133]+b[139]+b[145]+b[151] == 1.0)
@constraint(m, e175, b[134]+b[140]+b[146]+b[152] == 1.0)
@constraint(m, e176, x[1]-x[105]-x[109]-x[113] == 0.0)
@constraint(m, e177, x[2]-x[106]-x[110]-x[114] == 0.0)
@constraint(m, e178, x[3]-x[107]-x[111]-x[115] == 0.0)
@constraint(m, e179, x[4]-x[108]-x[112]-x[116] == 0.0)
@constraint(m, e180, x[5]-x[117]-x[121]-x[125] == 0.0)
@constraint(m, e181, x[6]-x[118]-x[122]-x[126] == 0.0)
@constraint(m, e182, x[7]-x[119]-x[123]-x[127] == 0.0)
@constraint(m, e183, x[8]-x[120]-x[124]-x[128] == 0.0)
@constraint(m, e184, x[105]-18.5*b[153] <= 0.0)
@constraint(m, e185, x[106]-17.5*b[154] <= 0.0)
@constraint(m, e186, x[107]-19.5*b[155] <= 0.0)
@constraint(m, e187, x[108]-20*b[156] <= 0.0)
@constraint(m, e188, x[109]-52.5*b[157] <= 0.0)
@constraint(m, e189, x[110]-51.5*b[158] <= 0.0)
@constraint(m, e190, x[111]-53.5*b[159] <= 0.0)
@constraint(m, e191, x[112]-54*b[160] <= 0.0)
@constraint(m, e192, x[113]-31.5*b[161] <= 0.0)
@constraint(m, e193, x[114]-30.5*b[162] <= 0.0)
@constraint(m, e194, x[115]-32.5*b[163] <= 0.0)
@constraint(m, e195, x[116]-33*b[164] <= 0.0)
@constraint(m, e196, x[117]-13*b[153] <= 0.0)
@constraint(m, e197, x[118]-13.5*b[154] <= 0.0)
@constraint(m, e198, x[119]-14.5*b[155] <= 0.0)
@constraint(m, e199, x[120]-14.5*b[156] <= 0.0)
@constraint(m, e200, x[121]-82*b[157] <= 0.0)
@constraint(m, e201, x[122]-82.5*b[158] <= 0.0)
@constraint(m, e202, x[123]-83.5*b[159] <= 0.0)
@constraint(m, e203, x[124]-83.5*b[160] <= 0.0)
@constraint(m, e204, x[125]-51*b[161] <= 0.0)
@constraint(m, e205, x[126]-51.5*b[162] <= 0.0)
@constraint(m, e206, x[127]-52.5*b[163] <= 0.0)
@constraint(m, e207, x[128]-52.5*b[164] <= 0.0)
@NLconstraint(m, e208, ( (x[105]/(1e-6+b[153]))^2-35*x[105]/(1e-6+b[153])+306.25*b[153]+ (x[117]/(1e-6+b[153]))^2-14*x[117]/(1e-6+b[153])+49*b[153]-36*b[153])*(1e-6+b[153]) <= 0.0)
@NLconstraint(m, e209, ( (x[106]/(1e-6+b[154]))^2-37*x[106]/(1e-6+b[154])+342.25*b[154]+ (x[118]/(1e-6+b[154]))^2-15*x[118]/(1e-6+b[154])+56.25*b[154]-36*b[154])*(1e-6+b[154]) <= 0.0)
@NLconstraint(m, e210, ( (x[107]/(1e-6+b[155]))^2-33*x[107]/(1e-6+b[155])+272.25*b[155]+ (x[119]/(1e-6+b[155]))^2-17*x[119]/(1e-6+b[155])+72.25*b[155]-36*b[155])*(1e-6+b[155]) <= 0.0)
@NLconstraint(m, e211, ( (x[108]/(1e-6+b[156]))^2-32*x[108]/(1e-6+b[156])+256*b[156]+ (x[120]/(1e-6+b[156]))^2-17*x[120]/(1e-6+b[156])+72.25*b[156]-36*b[156])*(1e-6+b[156]) <= 0.0)
@NLconstraint(m, e212, ( (x[109]/(1e-6+b[157]))^2-105*x[109]/(1e-6+b[157])+2756.25*b[157]+ (x[121]/(1e-6+b[157]))^2-154*x[121]/(1e-6+b[157])+5929*b[157]-25*b[157])*(1e-6+b[157]) <= 0.0)
@NLconstraint(m, e213, ( (x[110]/(1e-6+b[158]))^2-107*x[110]/(1e-6+b[158])+2862.25*b[158]+ (x[122]/(1e-6+b[158]))^2-155*x[122]/(1e-6+b[158])+6006.25*b[158]-25*b[158])*(1e-6+b[158]) <= 0.0)
@NLconstraint(m, e214, ( (x[111]/(1e-6+b[159]))^2-103*x[111]/(1e-6+b[159])+2652.25*b[159]+ (x[123]/(1e-6+b[159]))^2-157*x[123]/(1e-6+b[159])+6162.25*b[159]-25*b[159])*(1e-6+b[159]) <= 0.0)
@NLconstraint(m, e215, ( (x[112]/(1e-6+b[160]))^2-102*x[112]/(1e-6+b[160])+2601*b[160]+ (x[124]/(1e-6+b[160]))^2-157*x[124]/(1e-6+b[160])+6162.25*b[160]-25*b[160])*(1e-6+b[160]) <= 0.0)
@NLconstraint(m, e216, ( (x[113]/(1e-6+b[161]))^2-65*x[113]/(1e-6+b[161])+1056.25*b[161]+ (x[125]/(1e-6+b[161]))^2-94*x[125]/(1e-6+b[161])+2209*b[161]-16*b[161])*(1e-6+b[161]) <= 0.0)
@NLconstraint(m, e217, ( (x[114]/(1e-6+b[162]))^2-67*x[114]/(1e-6+b[162])+1122.25*b[162]+ (x[126]/(1e-6+b[162]))^2-95*x[126]/(1e-6+b[162])+2256.25*b[162]-16*b[162])*(1e-6+b[162]) <= 0.0)
@NLconstraint(m, e218, ( (x[115]/(1e-6+b[163]))^2-63*x[115]/(1e-6+b[163])+992.25*b[163]+ (x[127]/(1e-6+b[163]))^2-97*x[127]/(1e-6+b[163])+2352.25*b[163]-16*b[163])*(1e-6+b[163]) <= 0.0)
@NLconstraint(m, e219, ( (x[116]/(1e-6+b[164]))^2-62*x[116]/(1e-6+b[164])+961*b[164]+ (x[128]/(1e-6+b[164]))^2-97*x[128]/(1e-6+b[164])+2352.25*b[164]-16*b[164])*(1e-6+b[164]) <= 0.0)
@NLconstraint(m, e220, ( (x[105]/(1e-6+b[153]))^2-35*x[105]/(1e-6+b[153])+306.25*b[153]+ (x[117]/(1e-6+b[153]))^2-26*x[117]/(1e-6+b[153])+169*b[153]-36*b[153])*(1e-6+b[153]) <= 0.0)
@NLconstraint(m, e221, ( (x[106]/(1e-6+b[154]))^2-37*x[106]/(1e-6+b[154])+342.25*b[154]+ (x[118]/(1e-6+b[154]))^2-25*x[118]/(1e-6+b[154])+156.25*b[154]-36*b[154])*(1e-6+b[154]) <= 0.0)
@NLconstraint(m, e222, ( (x[107]/(1e-6+b[155]))^2-33*x[107]/(1e-6+b[155])+272.25*b[155]+ (x[119]/(1e-6+b[155]))^2-23*x[119]/(1e-6+b[155])+132.25*b[155]-36*b[155])*(1e-6+b[155]) <= 0.0)
@NLconstraint(m, e223, ( (x[108]/(1e-6+b[156]))^2-32*x[108]/(1e-6+b[156])+256*b[156]+ (x[120]/(1e-6+b[156]))^2-23*x[120]/(1e-6+b[156])+132.25*b[156]-36*b[156])*(1e-6+b[156]) <= 0.0)
@NLconstraint(m, e224, ( (x[109]/(1e-6+b[157]))^2-105*x[109]/(1e-6+b[157])+2756.25*b[157]+ (x[121]/(1e-6+b[157]))^2-166*x[121]/(1e-6+b[157])+6889*b[157]-25*b[157])*(1e-6+b[157]) <= 0.0)
@NLconstraint(m, e225, ( (x[110]/(1e-6+b[158]))^2-107*x[110]/(1e-6+b[158])+2862.25*b[158]+ (x[122]/(1e-6+b[158]))^2-165*x[122]/(1e-6+b[158])+6806.25*b[158]-25*b[158])*(1e-6+b[158]) <= 0.0)
@NLconstraint(m, e226, ( (x[111]/(1e-6+b[159]))^2-103*x[111]/(1e-6+b[159])+2652.25*b[159]+ (x[123]/(1e-6+b[159]))^2-163*x[123]/(1e-6+b[159])+6642.25*b[159]-25*b[159])*(1e-6+b[159]) <= 0.0)
@NLconstraint(m, e227, ( (x[112]/(1e-6+b[160]))^2-102*x[112]/(1e-6+b[160])+2601*b[160]+ (x[124]/(1e-6+b[160]))^2-163*x[124]/(1e-6+b[160])+6642.25*b[160]-25*b[160])*(1e-6+b[160]) <= 0.0)
@NLconstraint(m, e228, ( (x[113]/(1e-6+b[161]))^2-65*x[113]/(1e-6+b[161])+1056.25*b[161]+ (x[125]/(1e-6+b[161]))^2-106*x[125]/(1e-6+b[161])+2809*b[161]-16*b[161])*(1e-6+b[161]) <= 0.0)
@NLconstraint(m, e229, ( (x[114]/(1e-6+b[162]))^2-67*x[114]/(1e-6+b[162])+1122.25*b[162]+ (x[126]/(1e-6+b[162]))^2-105*x[126]/(1e-6+b[162])+2756.25*b[162]-16*b[162])*(1e-6+b[162]) <= 0.0)
@NLconstraint(m, e230, ( (x[115]/(1e-6+b[163]))^2-63*x[115]/(1e-6+b[163])+992.25*b[163]+ (x[127]/(1e-6+b[163]))^2-103*x[127]/(1e-6+b[163])+2652.25*b[163]-16*b[163])*(1e-6+b[163]) <= 0.0)
@NLconstraint(m, e231, ( (x[116]/(1e-6+b[164]))^2-62*x[116]/(1e-6+b[164])+961*b[164]+ (x[128]/(1e-6+b[164]))^2-103*x[128]/(1e-6+b[164])+2652.25*b[164]-16*b[164])*(1e-6+b[164]) <= 0.0)
@NLconstraint(m, e232, ( (x[105]/(1e-6+b[153]))^2-25*x[105]/(1e-6+b[153])+156.25*b[153]+ (x[117]/(1e-6+b[153]))^2-14*x[117]/(1e-6+b[153])+49*b[153]-36*b[153])*(1e-6+b[153]) <= 0.0)
@NLconstraint(m, e233, ( (x[106]/(1e-6+b[154]))^2-23*x[106]/(1e-6+b[154])+132.25*b[154]+ (x[118]/(1e-6+b[154]))^2-15*x[118]/(1e-6+b[154])+56.25*b[154]-36*b[154])*(1e-6+b[154]) <= 0.0)
@NLconstraint(m, e234, ( (x[107]/(1e-6+b[155]))^2-27*x[107]/(1e-6+b[155])+182.25*b[155]+ (x[119]/(1e-6+b[155]))^2-17*x[119]/(1e-6+b[155])+72.25*b[155]-36*b[155])*(1e-6+b[155]) <= 0.0)
@NLconstraint(m, e235, ( (x[108]/(1e-6+b[156]))^2-28*x[108]/(1e-6+b[156])+196*b[156]+ (x[120]/(1e-6+b[156]))^2-17*x[120]/(1e-6+b[156])+72.25*b[156]-36*b[156])*(1e-6+b[156]) <= 0.0)
@NLconstraint(m, e236, ( (x[109]/(1e-6+b[157]))^2-95*x[109]/(1e-6+b[157])+2256.25*b[157]+ (x[121]/(1e-6+b[157]))^2-154*x[121]/(1e-6+b[157])+5929*b[157]-25*b[157])*(1e-6+b[157]) <= 0.0)
@NLconstraint(m, e237, ( (x[110]/(1e-6+b[158]))^2-93*x[110]/(1e-6+b[158])+2162.25*b[158]+ (x[122]/(1e-6+b[158]))^2-155*x[122]/(1e-6+b[158])+6006.25*b[158]-25*b[158])*(1e-6+b[158]) <= 0.0)
@NLconstraint(m, e238, ( (x[111]/(1e-6+b[159]))^2-97*x[111]/(1e-6+b[159])+2352.25*b[159]+ (x[123]/(1e-6+b[159]))^2-157*x[123]/(1e-6+b[159])+6162.25*b[159]-25*b[159])*(1e-6+b[159]) <= 0.0)
@NLconstraint(m, e239, ( (x[112]/(1e-6+b[160]))^2-98*x[112]/(1e-6+b[160])+2401*b[160]+ (x[124]/(1e-6+b[160]))^2-157*x[124]/(1e-6+b[160])+6162.25*b[160]-25*b[160])*(1e-6+b[160]) <= 0.0)
@NLconstraint(m, e240, ( (x[113]/(1e-6+b[161]))^2-55*x[113]/(1e-6+b[161])+756.25*b[161]+ (x[125]/(1e-6+b[161]))^2-94*x[125]/(1e-6+b[161])+2209*b[161]-16*b[161])*(1e-6+b[161]) <= 0.0)
@NLconstraint(m, e241, ( (x[114]/(1e-6+b[162]))^2-53*x[114]/(1e-6+b[162])+702.25*b[162]+ (x[126]/(1e-6+b[162]))^2-95*x[126]/(1e-6+b[162])+2256.25*b[162]-16*b[162])*(1e-6+b[162]) <= 0.0)
@NLconstraint(m, e242, ( (x[115]/(1e-6+b[163]))^2-57*x[115]/(1e-6+b[163])+812.25*b[163]+ (x[127]/(1e-6+b[163]))^2-97*x[127]/(1e-6+b[163])+2352.25*b[163]-16*b[163])*(1e-6+b[163]) <= 0.0)
@NLconstraint(m, e243, ( (x[116]/(1e-6+b[164]))^2-58*x[116]/(1e-6+b[164])+841*b[164]+ (x[128]/(1e-6+b[164]))^2-97*x[128]/(1e-6+b[164])+2352.25*b[164]-16*b[164])*(1e-6+b[164]) <= 0.0)
@NLconstraint(m, e244, ( (x[105]/(1e-6+b[153]))^2-25*x[105]/(1e-6+b[153])+156.25*b[153]+ (x[117]/(1e-6+b[153]))^2-26*x[117]/(1e-6+b[153])+169*b[153]-36*b[153])*(1e-6+b[153]) <= 0.0)
@NLconstraint(m, e245, ( (x[106]/(1e-6+b[154]))^2-23*x[106]/(1e-6+b[154])+132.25*b[154]+ (x[118]/(1e-6+b[154]))^2-25*x[118]/(1e-6+b[154])+156.25*b[154]-36*b[154])*(1e-6+b[154]) <= 0.0)
@NLconstraint(m, e246, ( (x[107]/(1e-6+b[155]))^2-27*x[107]/(1e-6+b[155])+182.25*b[155]+ (x[119]/(1e-6+b[155]))^2-23*x[119]/(1e-6+b[155])+132.25*b[155]-36*b[155])*(1e-6+b[155]) <= 0.0)
@NLconstraint(m, e247, ( (x[108]/(1e-6+b[156]))^2-28*x[108]/(1e-6+b[156])+196*b[156]+ (x[120]/(1e-6+b[156]))^2-23*x[120]/(1e-6+b[156])+132.25*b[156]-36*b[156])*(1e-6+b[156]) <= 0.0)
@NLconstraint(m, e248, ( (x[109]/(1e-6+b[157]))^2-95*x[109]/(1e-6+b[157])+2256.25*b[157]+ (x[121]/(1e-6+b[157]))^2-166*x[121]/(1e-6+b[157])+6889*b[157]-25*b[157])*(1e-6+b[157]) <= 0.0)
@NLconstraint(m, e249, ( (x[110]/(1e-6+b[158]))^2-93*x[110]/(1e-6+b[158])+2162.25*b[158]+ (x[122]/(1e-6+b[158]))^2-165*x[122]/(1e-6+b[158])+6806.25*b[158]-25*b[158])*(1e-6+b[158]) <= 0.0)
@NLconstraint(m, e250, ( (x[111]/(1e-6+b[159]))^2-97*x[111]/(1e-6+b[159])+2352.25*b[159]+ (x[123]/(1e-6+b[159]))^2-163*x[123]/(1e-6+b[159])+6642.25*b[159]-25*b[159])*(1e-6+b[159]) <= 0.0)
@NLconstraint(m, e251, ( (x[112]/(1e-6+b[160]))^2-98*x[112]/(1e-6+b[160])+2401*b[160]+ (x[124]/(1e-6+b[160]))^2-163*x[124]/(1e-6+b[160])+6642.25*b[160]-25*b[160])*(1e-6+b[160]) <= 0.0)
@NLconstraint(m, e252, ( (x[113]/(1e-6+b[161]))^2-55*x[113]/(1e-6+b[161])+756.25*b[161]+ (x[125]/(1e-6+b[161]))^2-106*x[125]/(1e-6+b[161])+2809*b[161]-16*b[161])*(1e-6+b[161]) <= 0.0)
@NLconstraint(m, e253, ( (x[114]/(1e-6+b[162]))^2-53*x[114]/(1e-6+b[162])+702.25*b[162]+ (x[126]/(1e-6+b[162]))^2-105*x[126]/(1e-6+b[162])+2756.25*b[162]-16*b[162])*(1e-6+b[162]) <= 0.0)
@NLconstraint(m, e254, ( (x[115]/(1e-6+b[163]))^2-57*x[115]/(1e-6+b[163])+812.25*b[163]+ (x[127]/(1e-6+b[163]))^2-103*x[127]/(1e-6+b[163])+2652.25*b[163]-16*b[163])*(1e-6+b[163]) <= 0.0)
@NLconstraint(m, e255, ( (x[116]/(1e-6+b[164]))^2-58*x[116]/(1e-6+b[164])+841*b[164]+ (x[128]/(1e-6+b[164]))^2-103*x[128]/(1e-6+b[164])+2652.25*b[164]-16*b[164])*(1e-6+b[164]) <= 0.0)
@constraint(m, e256, b[153]+b[157]+b[161] == 1.0)
@constraint(m, e257, b[154]+b[158]+b[162] == 1.0)
@constraint(m, e258, b[155]+b[159]+b[163] == 1.0)
@constraint(m, e259, b[156]+b[160]+b[164] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
