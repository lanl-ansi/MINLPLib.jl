using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133]
@variable(m, x[x_Idx])
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
set_lower_bound(x[132], 0.0)
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
set_lower_bound(x[2], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
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
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[116], 0.0)
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
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[119], 0.0)
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
set_lower_bound(x[102], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[1], 1.0e6)
set_upper_bound(x[2], 1.0e6)
set_upper_bound(x[3], 1.0e6)
set_upper_bound(x[4], 1.0e6)
set_upper_bound(x[5], 1.0e6)
set_upper_bound(x[6], 1.0e6)
set_upper_bound(x[7], 1.0e6)
set_upper_bound(x[8], 1.0e6)
set_upper_bound(x[9], 1.0e6)
set_upper_bound(x[10], 1.0e6)
set_upper_bound(x[11], 1.0e6)
set_upper_bound(x[12], 1.0e6)
set_upper_bound(x[13], 1.0e6)
set_upper_bound(x[14], 1.0e6)
set_upper_bound(x[15], 1.0e6)
set_upper_bound(x[16], 1.0e6)
set_upper_bound(x[17], 1.0e6)
set_upper_bound(x[18], 1.0e6)
set_upper_bound(x[19], 1.0e6)
set_upper_bound(x[20], 1.0e6)
set_upper_bound(x[21], 1.0e6)
set_upper_bound(x[22], 1.0e6)
set_upper_bound(x[23], 1.0e6)
set_upper_bound(x[24], 1.0e6)
set_upper_bound(x[25], 1.0e6)
set_upper_bound(x[26], 1.0e6)
set_upper_bound(x[27], 1.0e6)
set_upper_bound(x[28], 1.0e6)
set_upper_bound(x[29], 1.0e6)
set_upper_bound(x[30], 1.0e6)
set_upper_bound(x[31], 1.0e6)
set_upper_bound(x[32], 1.0e6)
set_upper_bound(x[33], 1.0e6)
set_upper_bound(x[34], 1.0e6)
set_upper_bound(x[35], 1.0e6)
set_upper_bound(x[36], 1.0e6)
set_upper_bound(x[37], 1.0e6)
set_upper_bound(x[38], 1.0e6)
set_upper_bound(x[39], 1.0e6)
set_upper_bound(x[40], 1.0e6)
set_upper_bound(x[41], 1.0e6)
set_upper_bound(x[42], 1.0e6)
set_upper_bound(x[43], 1.0e6)
set_upper_bound(x[44], 1.0e6)
set_upper_bound(x[45], 1.0e6)
set_upper_bound(x[46], 1.0e6)
set_upper_bound(x[47], 1.0e6)
set_upper_bound(x[48], 1.0e6)
set_upper_bound(x[49], 1.0e6)
set_upper_bound(x[50], 1.0e6)
set_upper_bound(x[51], 1.0e6)
set_upper_bound(x[52], 1.0e6)
set_upper_bound(x[53], 1.0e6)
set_upper_bound(x[54], 1.0e6)
set_upper_bound(x[55], 1.0e6)
set_upper_bound(x[56], 1.0e6)
set_upper_bound(x[57], 1.0e6)
set_upper_bound(x[58], 1.0e6)
set_upper_bound(x[59], 1.0e6)
set_upper_bound(x[60], 1.0e6)
set_upper_bound(x[61], 1.0e6)
set_upper_bound(x[62], 1.0e6)
set_upper_bound(x[63], 1.0e6)
set_upper_bound(x[64], 1.0e6)
set_upper_bound(x[65], 1.0e6)
set_upper_bound(x[66], 1.0e6)
set_upper_bound(x[67], 1.0e6)
set_upper_bound(x[68], 1.0e6)
set_upper_bound(x[69], 1.0e6)
set_upper_bound(x[70], 1.0e6)
set_upper_bound(x[71], 1.0e6)
set_upper_bound(x[72], 1.0e6)
set_upper_bound(x[73], 1.0e6)
set_upper_bound(x[74], 1.0e6)
set_upper_bound(x[75], 1.0e6)
set_upper_bound(x[76], 1.0e6)
set_upper_bound(x[77], 1.0e6)
set_upper_bound(x[78], 1.0e6)
set_upper_bound(x[79], 1.0e6)
set_upper_bound(x[80], 1.0e6)
set_upper_bound(x[81], 1.0e6)
set_upper_bound(x[82], 1.0e6)
set_upper_bound(x[83], 1.0e6)
set_upper_bound(x[84], 1.0e6)
set_upper_bound(x[85], 1.0e6)
set_upper_bound(x[86], 1.0e6)
set_upper_bound(x[87], 1.0e6)
set_upper_bound(x[88], 1.0e6)
set_upper_bound(x[89], 1.0e6)
set_upper_bound(x[90], 1.0e6)
set_upper_bound(x[91], 1.0e6)
set_upper_bound(x[92], 1.0e6)
set_upper_bound(x[93], 1.0e6)
set_upper_bound(x[94], 1.0e6)
set_upper_bound(x[95], 1.0e6)
set_upper_bound(x[96], 1.0e6)
set_upper_bound(x[97], 1.0e6)
set_upper_bound(x[98], 1.0e6)
set_upper_bound(x[99], 1.0e6)
set_upper_bound(x[100], 1.0e6)
set_upper_bound(x[101], 1.0e6)
set_upper_bound(x[102], 1.0e6)
set_upper_bound(x[103], 1.0e6)
set_upper_bound(x[104], 1.0e6)
set_upper_bound(x[105], 1.0e6)
set_upper_bound(x[106], 1.0e6)
set_upper_bound(x[107], 1.0e6)
set_upper_bound(x[108], 1.0e6)
set_upper_bound(x[109], 1.0e6)
set_upper_bound(x[110], 1.0e6)
set_upper_bound(x[111], 1.0e6)
set_upper_bound(x[112], 1.0e6)
set_upper_bound(x[113], 1.0e6)
set_upper_bound(x[114], 1.0e6)
set_upper_bound(x[115], 1.0e6)
set_upper_bound(x[116], 1.0e6)
set_upper_bound(x[117], 1.0e6)
set_upper_bound(x[118], 1.0e6)
set_upper_bound(x[119], 1.0e6)
set_upper_bound(x[120], 1.0e6)
set_upper_bound(x[121], 1.0e6)
set_upper_bound(x[122], 1.0e6)
set_upper_bound(x[123], 1.0e6)
set_upper_bound(x[124], 1.0e6)
set_upper_bound(x[125], 1.0e6)
set_upper_bound(x[126], 1.0e6)
set_upper_bound(x[127], 1.0e6)
set_upper_bound(x[128], 1.0e6)
set_upper_bound(x[129], 1.0e6)
set_upper_bound(x[130], 1.0e6)
set_upper_bound(x[131], 1.0e6)
set_upper_bound(x[132], 1.0e6)
set_upper_bound(x[133], 1.0e6)


# ----- Constraints ----- #
@constraint(m, e1, -x[26]-x[27]-x[28]+objvar == 0.0)
@constraint(m, e2, -x[10]-x[16]-x[17]-x[18] == -150.0)
@constraint(m, e3, -x[11]-x[19]-x[20]-x[21] == -70.0)
@constraint(m, e4, -x[12]-x[22]-x[23]-x[24] == -900.0)
@constraint(m, e5, -x[1]-x[4]-x[7]-x[16]-x[19]-x[22]+x[26] == 0.0)
@constraint(m, e6, -x[2]-x[5]-x[8]-x[17]-x[20]-x[23]+x[27] == 0.0)
@constraint(m, e7, -x[3]-x[6]-x[9]-x[18]-x[21]-x[24]+x[28] == 0.0)
@constraint(m, e8, -x[1]-x[2]-x[3]-x[13]+x[26] == 0.0)
@constraint(m, e9, -x[4]-x[5]-x[6]-x[14]+x[27] == 0.0)
@constraint(m, e10, -x[7]-x[8]-x[9]-x[15]+x[28] == 0.0)
@constraint(m, e11, -x[10]-x[11]-x[12]-x[13]-x[14]-x[15]+x[25] == 0.0)
@constraint(m, e12, -x[56]-x[74]-x[77]-x[80] == -1500.0)
@constraint(m, e13, -x[57]-x[75]-x[78]-x[81] == -30000.0)
@constraint(m, e14, -x[58]-x[76]-x[79]-x[82] == -52500.0)
@constraint(m, e15, -x[59]-x[83]-x[86]-x[89] == -7700.0)
@constraint(m, e16, -x[60]-x[84]-x[87]-x[90] == -9800.0)
@constraint(m, e17, -x[61]-x[85]-x[88]-x[91] == -7000.0)
@constraint(m, e18, -x[62]-x[92]-x[95]-x[98] == -90000.0)
@constraint(m, e19, -x[63]-x[93]-x[96]-x[99] == -22500.0)
@constraint(m, e20, -x[64]-x[94]-x[97]-x[100] == -81000.0)
@constraint(m, e21, -x[74]+1500*x[125] == 0.0)
@constraint(m, e22, -x[75]+30000*x[125] == 0.0)
@constraint(m, e23, -x[76]+52500*x[125] == 0.0)
@constraint(m, e24, -x[77]+1500*x[126] == 0.0)
@constraint(m, e25, -x[78]+30000*x[126] == 0.0)
@constraint(m, e26, -x[79]+52500*x[126] == 0.0)
@constraint(m, e27, -x[80]+1500*x[127] == 0.0)
@constraint(m, e28, -x[81]+30000*x[127] == 0.0)
@constraint(m, e29, -x[82]+52500*x[127] == 0.0)
@constraint(m, e30, -x[83]+7700*x[128] == 0.0)
@constraint(m, e31, -x[84]+9800*x[128] == 0.0)
@constraint(m, e32, -x[85]+7000*x[128] == 0.0)
@constraint(m, e33, -x[86]+7700*x[129] == 0.0)
@constraint(m, e34, -x[87]+9800*x[129] == 0.0)
@constraint(m, e35, -x[88]+7000*x[129] == 0.0)
@constraint(m, e36, -x[89]+7700*x[130] == 0.0)
@constraint(m, e37, -x[90]+9800*x[130] == 0.0)
@constraint(m, e38, -x[91]+7000*x[130] == 0.0)
@constraint(m, e39, -x[92]+90000*x[131] == 0.0)
@constraint(m, e40, -x[93]+22500*x[131] == 0.0)
@constraint(m, e41, -x[94]+81000*x[131] == 0.0)
@constraint(m, e42, -x[95]+90000*x[132] == 0.0)
@constraint(m, e43, -x[96]+22500*x[132] == 0.0)
@constraint(m, e44, -x[97]+81000*x[132] == 0.0)
@constraint(m, e45, -x[98]+90000*x[133] == 0.0)
@constraint(m, e46, -x[99]+22500*x[133] == 0.0)
@constraint(m, e47, -x[100]+81000*x[133] == 0.0)
@constraint(m, e48, -x[56]+1500*x[119] == 0.0)
@constraint(m, e49, -x[57]+30000*x[119] == 0.0)
@constraint(m, e50, -x[58]+52500*x[119] == 0.0)
@constraint(m, e51, -x[59]+7700*x[120] == 0.0)
@constraint(m, e52, -x[60]+9800*x[120] == 0.0)
@constraint(m, e53, -x[61]+7000*x[120] == 0.0)
@constraint(m, e54, -x[62]+90000*x[121] == 0.0)
@constraint(m, e55, -x[63]+22500*x[121] == 0.0)
@constraint(m, e56, -x[64]+81000*x[121] == 0.0)
@constraint(m, e57, -x[16]+150*x[125] == 0.0)
@constraint(m, e58, -x[17]+150*x[126] == 0.0)
@constraint(m, e59, -x[18]+150*x[127] == 0.0)
@constraint(m, e60, -x[19]+70*x[128] == 0.0)
@constraint(m, e61, -x[20]+70*x[129] == 0.0)
@constraint(m, e62, -x[21]+70*x[130] == 0.0)
@constraint(m, e63, -x[22]+900*x[131] == 0.0)
@constraint(m, e64, -x[23]+900*x[132] == 0.0)
@constraint(m, e65, -x[24]+900*x[133] == 0.0)
@constraint(m, e66, -x[10]+150*x[119] == 0.0)
@constraint(m, e67, -x[11]+70*x[120] == 0.0)
@constraint(m, e68, -x[12]+900*x[121] == 0.0)
@constraint(m, e69, x[119]+x[125]+x[126]+x[127] == 1.0)
@constraint(m, e70, x[120]+x[128]+x[129]+x[130] == 1.0)
@constraint(m, e71, x[121]+x[131]+x[132]+x[133] == 1.0)
@constraint(m, e72, -145*x[26]+x[29]+x[38]+x[47]+x[74]+x[83]+x[92] <= 0.0)
@constraint(m, e73, -400*x[26]+x[30]+x[39]+x[48]+x[75]+x[84]+x[93] <= 0.0)
@constraint(m, e74, -200*x[26]+x[31]+x[40]+x[49]+x[76]+x[85]+x[94] <= 0.0)
@constraint(m, e75, -110*x[27]+x[32]+x[41]+x[50]+x[77]+x[86]+x[95] <= 0.0)
@constraint(m, e76, -90*x[27]+x[33]+x[42]+x[51]+x[78]+x[87]+x[96] <= 0.0)
@constraint(m, e77, -120*x[27]+x[34]+x[43]+x[52]+x[79]+x[88]+x[97] <= 0.0)
@constraint(m, e78, -90*x[28]+x[35]+x[44]+x[53]+x[80]+x[89]+x[98] <= 0.0)
@constraint(m, e79, -100*x[28]+x[36]+x[45]+x[54]+x[81]+x[90]+x[99] <= 0.0)
@constraint(m, e80, -300*x[28]+x[37]+x[46]+x[55]+x[82]+x[91]+x[100] <= 0.0)
@constraint(m, e81, 0.1*x[29]+0.1*x[38]+0.1*x[47]+0.1*x[74]+0.1*x[83]+0.1*x[92]-x[101] == 0.0)
@constraint(m, e82, x[30]+x[39]+x[48]+x[75]+x[84]+x[93]-x[102] == 0.0)
@constraint(m, e83, 0.3*x[31]+0.3*x[40]+0.3*x[49]+0.3*x[76]+0.3*x[85]+0.3*x[94]-x[103] == 0.0)
@constraint(m, e84, 0.3*x[32]+0.3*x[41]+0.3*x[50]+0.3*x[77]+0.3*x[86]+0.3*x[95]-x[104] == 0.0)
@constraint(m, e85, 0.1*x[33]+0.1*x[42]+0.1*x[51]+0.1*x[78]+0.1*x[87]+0.1*x[96]-x[105] == 0.0)
@constraint(m, e86, 0.6*x[34]+0.6*x[43]+0.6*x[52]+0.6*x[79]+0.6*x[88]+0.6*x[97]-x[106] == 0.0)
@constraint(m, e87, x[35]+x[44]+x[53]+x[80]+x[89]+x[98]-x[107] == 0.0)
@constraint(m, e88, 0.2*x[36]+0.2*x[45]+0.2*x[54]+0.2*x[81]+0.2*x[90]+0.2*x[99]-x[108] == 0.0)
@constraint(m, e89, x[37]+x[46]+x[55]+x[82]+x[91]+x[100]-x[109] == 0.0)
@constraint(m, e90, -x[29]-x[32]-x[35]-x[65]+x[101] == 0.0)
@constraint(m, e91, -x[30]-x[33]-x[36]-x[66]+x[102] == 0.0)
@constraint(m, e92, -x[31]-x[34]-x[37]-x[67]+x[103] == 0.0)
@constraint(m, e93, -x[38]-x[41]-x[44]-x[68]+x[104] == 0.0)
@constraint(m, e94, -x[39]-x[42]-x[45]-x[69]+x[105] == 0.0)
@constraint(m, e95, -x[40]-x[43]-x[46]-x[70]+x[106] == 0.0)
@constraint(m, e96, -x[47]-x[50]-x[53]-x[71]+x[107] == 0.0)
@constraint(m, e97, -x[48]-x[51]-x[54]-x[72]+x[108] == 0.0)
@constraint(m, e98, -x[49]-x[52]-x[55]-x[73]+x[109] == 0.0)
@NLconstraint(m, e99, x[101]*x[110]-x[29] == 0.0)
@NLconstraint(m, e100, x[102]*x[110]-x[30] == 0.0)
@NLconstraint(m, e101, x[103]*x[110]-x[31] == 0.0)
@NLconstraint(m, e102, x[101]*x[111]-x[32] == 0.0)
@NLconstraint(m, e103, x[102]*x[111]-x[33] == 0.0)
@NLconstraint(m, e104, x[103]*x[111]-x[34] == 0.0)
@NLconstraint(m, e105, x[101]*x[112]-x[35] == 0.0)
@NLconstraint(m, e106, x[102]*x[112]-x[36] == 0.0)
@NLconstraint(m, e107, x[103]*x[112]-x[37] == 0.0)
@NLconstraint(m, e108, x[104]*x[113]-x[38] == 0.0)
@NLconstraint(m, e109, x[105]*x[113]-x[39] == 0.0)
@NLconstraint(m, e110, x[106]*x[113]-x[40] == 0.0)
@NLconstraint(m, e111, x[104]*x[114]-x[41] == 0.0)
@NLconstraint(m, e112, x[105]*x[114]-x[42] == 0.0)
@NLconstraint(m, e113, x[106]*x[114]-x[43] == 0.0)
@NLconstraint(m, e114, x[104]*x[115]-x[44] == 0.0)
@NLconstraint(m, e115, x[105]*x[115]-x[45] == 0.0)
@NLconstraint(m, e116, x[106]*x[115]-x[46] == 0.0)
@NLconstraint(m, e117, x[107]*x[116]-x[47] == 0.0)
@NLconstraint(m, e118, x[108]*x[116]-x[48] == 0.0)
@NLconstraint(m, e119, x[109]*x[116]-x[49] == 0.0)
@NLconstraint(m, e120, x[107]*x[117]-x[50] == 0.0)
@NLconstraint(m, e121, x[108]*x[117]-x[51] == 0.0)
@NLconstraint(m, e122, x[109]*x[117]-x[52] == 0.0)
@NLconstraint(m, e123, x[107]*x[118]-x[53] == 0.0)
@NLconstraint(m, e124, x[108]*x[118]-x[54] == 0.0)
@NLconstraint(m, e125, x[109]*x[118]-x[55] == 0.0)
@NLconstraint(m, e126, x[101]*x[122]-x[65] == 0.0)
@NLconstraint(m, e127, x[102]*x[122]-x[66] == 0.0)
@NLconstraint(m, e128, x[103]*x[122]-x[67] == 0.0)
@NLconstraint(m, e129, x[104]*x[123]-x[68] == 0.0)
@NLconstraint(m, e130, x[105]*x[123]-x[69] == 0.0)
@NLconstraint(m, e131, x[106]*x[123]-x[70] == 0.0)
@NLconstraint(m, e132, x[107]*x[124]-x[71] == 0.0)
@NLconstraint(m, e133, x[108]*x[124]-x[72] == 0.0)
@NLconstraint(m, e134, x[109]*x[124]-x[73] == 0.0)
@NLconstraint(m, e135, x[26]*x[110]-x[1] == 0.0)
@NLconstraint(m, e136, x[26]*x[111]-x[2] == 0.0)
@NLconstraint(m, e137, x[26]*x[112]-x[3] == 0.0)
@NLconstraint(m, e138, x[27]*x[113]-x[4] == 0.0)
@NLconstraint(m, e139, x[27]*x[114]-x[5] == 0.0)
@NLconstraint(m, e140, x[27]*x[115]-x[6] == 0.0)
@NLconstraint(m, e141, x[28]*x[116]-x[7] == 0.0)
@NLconstraint(m, e142, x[28]*x[117]-x[8] == 0.0)
@NLconstraint(m, e143, x[28]*x[118]-x[9] == 0.0)
@NLconstraint(m, e144, x[26]*x[122]-x[13] == 0.0)
@NLconstraint(m, e145, x[27]*x[123]-x[14] == 0.0)
@NLconstraint(m, e146, x[28]*x[124]-x[15] == 0.0)
@constraint(m, e147, x[110]+x[111]+x[112]+x[122] == 1.0)
@constraint(m, e148, x[113]+x[114]+x[115]+x[123] == 1.0)
@constraint(m, e149, x[116]+x[117]+x[118]+x[124] == 1.0)
@constraint(m, e150, -10*x[25]+x[56]+x[59]+x[62]+x[65]+x[68]+x[71] <= 0.0)
@constraint(m, e151, -15*x[25]+x[57]+x[60]+x[63]+x[66]+x[69]+x[72] <= 0.0)
@constraint(m, e152, -20*x[25]+x[58]+x[61]+x[64]+x[67]+x[70]+x[73] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
