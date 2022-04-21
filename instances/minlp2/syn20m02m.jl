using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211]
@variable(m, x[x_Idx])
b_Idx = Any[92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_upper_bound(x[2], 40.0)
set_upper_bound(x[3], 40.0)
set_upper_bound(x[24], 30.0)
set_upper_bound(x[25], 30.0)
set_upper_bound(x[58], 20.0)
set_upper_bound(x[59], 20.0)
set_upper_bound(x[60], 20.0)
set_upper_bound(x[61], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+x[2]+x[3]-5*x[14]-10*x[15]+2*x[24]+x[25]+10*x[58]+5*x[59]+5*x[60]+5*x[61]-80*x[74]-130*x[75]-110*x[76]-120*x[77]-110*x[78]-130*x[79]-80*x[80]-90*x[81]-285*x[82]-390*x[83]-290*x[84]-405*x[85]-280*x[86]-400*x[87]-290*x[88]-300*x[89]-350*x[90]-250*x[91]+5*b[132]+4*b[133]+8*b[134]+7*b[135]+6*b[136]+9*b[137]+10*b[138]+9*b[139]+6*b[140]+10*b[141]+7*b[142]+7*b[143]+4*b[144]+3*b[145]+5*b[146]+6*b[147]+2*b[148]+5*b[149]+4*b[150]+7*b[151]+3*b[152]+9*b[153]+7*b[154]+2*b[155]+3*b[156]+b[157]+2*b[158]+6*b[159]+4*b[160]+8*b[161]+2*b[162]+5*b[163]+3*b[164]+4*b[165]+5*b[166]+7*b[167]+2*b[168]+8*b[169]+b[170]+4*b[171] == 0.0)
@constraint(m, e2, x[2]-x[4]-x[6] == 0.0)
@constraint(m, e3, x[3]-x[5]-x[7] == 0.0)
@constraint(m, e4, -x[8]-x[10]+x[12] == 0.0)
@constraint(m, e5, -x[9]-x[11]+x[13] == 0.0)
@constraint(m, e6, x[12]-x[14]-x[16] == 0.0)
@constraint(m, e7, x[13]-x[15]-x[17] == 0.0)
@constraint(m, e8, x[16]-x[18]-x[20]-x[22] == 0.0)
@constraint(m, e9, x[17]-x[19]-x[21]-x[23] == 0.0)
@constraint(m, e10, x[26]-x[32]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[33]-x[35] == 0.0)
@constraint(m, e12, x[30]-x[36]-x[38]-x[40] == 0.0)
@constraint(m, e13, x[31]-x[37]-x[39]-x[41] == 0.0)
@constraint(m, e14, x[46]-x[54]-x[56] == 0.0)
@constraint(m, e15, x[47]-x[55]-x[57] == 0.0)
@constraint(m, e16, -x[48]-x[60]+x[62] == 0.0)
@constraint(m, e17, -x[49]-x[61]+x[63] == 0.0)
@constraint(m, e18, x[50]-x[64]-x[66] == 0.0)
@constraint(m, e19, x[51]-x[65]-x[67] == 0.0)
@constraint(m, e20, x[52]-x[68]-x[70]-x[72] == 0.0)
@constraint(m, e21, x[53]-x[69]-x[71]-x[73] == 0.0)
@NLconstraint(m, e22, -log(1+x[4])+x[8]+b[92] <= 1.0)
@NLconstraint(m, e23, -log(1+x[5])+x[9]+b[93] <= 1.0)
@constraint(m, e24, x[4]-40*b[92] <= 0.0)
@constraint(m, e25, x[5]-40*b[93] <= 0.0)
@constraint(m, e26, x[8]-3.71357206670431*b[92] <= 0.0)
@constraint(m, e27, x[9]-3.71357206670431*b[93] <= 0.0)
@NLconstraint(m, e28, -1.2*log(1+x[6])+x[10]+b[94] <= 1.0)
@NLconstraint(m, e29, -1.2*log(1+x[7])+x[11]+b[95] <= 1.0)
@constraint(m, e30, x[6]-40*b[94] <= 0.0)
@constraint(m, e31, x[7]-40*b[95] <= 0.0)
@constraint(m, e32, x[10]-4.45628648004517*b[94] <= 0.0)
@constraint(m, e33, x[11]-4.45628648004517*b[95] <= 0.0)
@constraint(m, e34, -0.75*x[18]+x[26]+b[96] <= 1.0)
@constraint(m, e35, -0.75*x[19]+x[27]+b[97] <= 1.0)
@constraint(m, e36, -0.75*x[18]+x[26]-b[96] >= -1.0)
@constraint(m, e37, -0.75*x[19]+x[27]-b[97] >= -1.0)
@constraint(m, e38, x[18]-4.45628648004517*b[96] <= 0.0)
@constraint(m, e39, x[19]-4.45628648004517*b[97] <= 0.0)
@constraint(m, e40, x[26]-3.34221486003388*b[96] <= 0.0)
@constraint(m, e41, x[27]-3.34221486003388*b[97] <= 0.0)
@NLconstraint(m, e42, -1.5*log(1+x[20])+x[28]+b[98] <= 1.0)
@NLconstraint(m, e43, -1.5*log(1+x[21])+x[29]+b[99] <= 1.0)
@constraint(m, e44, x[20]-4.45628648004517*b[98] <= 0.0)
@constraint(m, e45, x[21]-4.45628648004517*b[99] <= 0.0)
@constraint(m, e46, x[28]-2.54515263975353*b[98] <= 0.0)
@constraint(m, e47, x[29]-2.54515263975353*b[99] <= 0.0)
@constraint(m, e48, -x[22]+x[30]+b[100] <= 1.0)
@constraint(m, e49, -x[23]+x[31]+b[101] <= 1.0)
@constraint(m, e50, -x[22]+x[30]-b[100] >= -1.0)
@constraint(m, e51, -x[23]+x[31]-b[101] >= -1.0)
@constraint(m, e52, -0.5*x[24]+x[30]+b[100] <= 1.0)
@constraint(m, e53, -0.5*x[25]+x[31]+b[101] <= 1.0)
@constraint(m, e54, -0.5*x[24]+x[30]-b[100] >= -1.0)
@constraint(m, e55, -0.5*x[25]+x[31]-b[101] >= -1.0)
@constraint(m, e56, x[22]-4.45628648004517*b[100] <= 0.0)
@constraint(m, e57, x[23]-4.45628648004517*b[101] <= 0.0)
@constraint(m, e58, x[24]-30*b[100] <= 0.0)
@constraint(m, e59, x[25]-30*b[101] <= 0.0)
@constraint(m, e60, x[30]-15*b[100] <= 0.0)
@constraint(m, e61, x[31]-15*b[101] <= 0.0)
@NLconstraint(m, e62, -1.25*log(1+x[32])+x[42]+b[102] <= 1.0)
@NLconstraint(m, e63, -1.25*log(1+x[33])+x[43]+b[103] <= 1.0)
@constraint(m, e64, x[32]-3.34221486003388*b[102] <= 0.0)
@constraint(m, e65, x[33]-3.34221486003388*b[103] <= 0.0)
@constraint(m, e66, x[42]-1.83548069293539*b[102] <= 0.0)
@constraint(m, e67, x[43]-1.83548069293539*b[103] <= 0.0)
@NLconstraint(m, e68, -0.9*log(1+x[34])+x[44]+b[104] <= 1.0)
@NLconstraint(m, e69, -0.9*log(1+x[35])+x[45]+b[105] <= 1.0)
@constraint(m, e70, x[34]-3.34221486003388*b[104] <= 0.0)
@constraint(m, e71, x[35]-3.34221486003388*b[105] <= 0.0)
@constraint(m, e72, x[44]-1.32154609891348*b[104] <= 0.0)
@constraint(m, e73, x[45]-1.32154609891348*b[105] <= 0.0)
@NLconstraint(m, e74, -log(1+x[28])+x[46]+b[106] <= 1.0)
@NLconstraint(m, e75, -log(1+x[29])+x[47]+b[107] <= 1.0)
@constraint(m, e76, x[28]-2.54515263975353*b[106] <= 0.0)
@constraint(m, e77, x[29]-2.54515263975353*b[107] <= 0.0)
@constraint(m, e78, x[46]-1.26558121681553*b[106] <= 0.0)
@constraint(m, e79, x[47]-1.26558121681553*b[107] <= 0.0)
@constraint(m, e80, -0.9*x[36]+x[48]+b[108] <= 1.0)
@constraint(m, e81, -0.9*x[37]+x[49]+b[109] <= 1.0)
@constraint(m, e82, -0.9*x[36]+x[48]-b[108] >= -1.0)
@constraint(m, e83, -0.9*x[37]+x[49]-b[109] >= -1.0)
@constraint(m, e84, x[36]-15*b[108] <= 0.0)
@constraint(m, e85, x[37]-15*b[109] <= 0.0)
@constraint(m, e86, x[48]-13.5*b[108] <= 0.0)
@constraint(m, e87, x[49]-13.5*b[109] <= 0.0)
@constraint(m, e88, -0.6*x[38]+x[50]+b[110] <= 1.0)
@constraint(m, e89, -0.6*x[39]+x[51]+b[111] <= 1.0)
@constraint(m, e90, -0.6*x[38]+x[50]-b[110] >= -1.0)
@constraint(m, e91, -0.6*x[39]+x[51]-b[111] >= -1.0)
@constraint(m, e92, x[38]-15*b[110] <= 0.0)
@constraint(m, e93, x[39]-15*b[111] <= 0.0)
@constraint(m, e94, x[50]-9*b[110] <= 0.0)
@constraint(m, e95, x[51]-9*b[111] <= 0.0)
@NLconstraint(m, e96, -1.1*log(1+x[40])+x[52]+b[112] <= 1.0)
@NLconstraint(m, e97, -1.1*log(1+x[41])+x[53]+b[113] <= 1.0)
@constraint(m, e98, x[40]-15*b[112] <= 0.0)
@constraint(m, e99, x[41]-15*b[113] <= 0.0)
@constraint(m, e100, x[52]-3.04984759446376*b[112] <= 0.0)
@constraint(m, e101, x[53]-3.04984759446376*b[113] <= 0.0)
@constraint(m, e102, -0.9*x[42]+x[74]+b[114] <= 1.0)
@constraint(m, e103, -0.9*x[43]+x[75]+b[115] <= 1.0)
@constraint(m, e104, -0.9*x[42]+x[74]-b[114] >= -1.0)
@constraint(m, e105, -0.9*x[43]+x[75]-b[115] >= -1.0)
@constraint(m, e106, -x[58]+x[74]+b[114] <= 1.0)
@constraint(m, e107, -x[59]+x[75]+b[115] <= 1.0)
@constraint(m, e108, -x[58]+x[74]-b[114] >= -1.0)
@constraint(m, e109, -x[59]+x[75]-b[115] >= -1.0)
@constraint(m, e110, x[42]-1.83548069293539*b[114] <= 0.0)
@constraint(m, e111, x[43]-1.83548069293539*b[115] <= 0.0)
@constraint(m, e112, x[58]-20*b[114] <= 0.0)
@constraint(m, e113, x[59]-20*b[115] <= 0.0)
@constraint(m, e114, x[74]-20*b[114] <= 0.0)
@constraint(m, e115, x[75]-20*b[115] <= 0.0)
@NLconstraint(m, e116, -log(1+x[44])+x[76]+b[116] <= 1.0)
@NLconstraint(m, e117, -log(1+x[45])+x[77]+b[117] <= 1.0)
@constraint(m, e118, x[44]-1.32154609891348*b[116] <= 0.0)
@constraint(m, e119, x[45]-1.32154609891348*b[117] <= 0.0)
@constraint(m, e120, x[76]-0.842233385663186*b[116] <= 0.0)
@constraint(m, e121, x[77]-0.842233385663186*b[117] <= 0.0)
@NLconstraint(m, e122, -0.7*log(1+x[54])+x[78]+b[118] <= 1.0)
@NLconstraint(m, e123, -0.7*log(1+x[55])+x[79]+b[119] <= 1.0)
@constraint(m, e124, x[54]-1.26558121681553*b[118] <= 0.0)
@constraint(m, e125, x[55]-1.26558121681553*b[119] <= 0.0)
@constraint(m, e126, x[78]-0.572481933717686*b[118] <= 0.0)
@constraint(m, e127, x[79]-0.572481933717686*b[119] <= 0.0)
@NLconstraint(m, e128, -0.65*log(1+x[56])+x[80]+b[120] <= 1.0)
@NLconstraint(m, e129, -0.65*log(1+x[57])+x[81]+b[121] <= 1.0)
@NLconstraint(m, e130, -0.65*log(1+x[62])+x[80]+b[120] <= 1.0)
@NLconstraint(m, e131, -0.65*log(1+x[63])+x[81]+b[121] <= 1.0)
@constraint(m, e132, x[56]-1.26558121681553*b[120] <= 0.0)
@constraint(m, e133, x[57]-1.26558121681553*b[121] <= 0.0)
@constraint(m, e134, x[62]-33.5*b[120] <= 0.0)
@constraint(m, e135, x[63]-33.5*b[121] <= 0.0)
@constraint(m, e136, x[80]-2.30162356062425*b[120] <= 0.0)
@constraint(m, e137, x[81]-2.30162356062425*b[121] <= 0.0)
@constraint(m, e138, -x[64]+x[82]+b[122] <= 1.0)
@constraint(m, e139, -x[65]+x[83]+b[123] <= 1.0)
@constraint(m, e140, -x[64]+x[82]-b[122] >= -1.0)
@constraint(m, e141, -x[65]+x[83]-b[123] >= -1.0)
@constraint(m, e142, x[64]-9*b[122] <= 0.0)
@constraint(m, e143, x[65]-9*b[123] <= 0.0)
@constraint(m, e144, x[82]-9*b[122] <= 0.0)
@constraint(m, e145, x[83]-9*b[123] <= 0.0)
@constraint(m, e146, -x[66]+x[84]+b[124] <= 1.0)
@constraint(m, e147, -x[67]+x[85]+b[125] <= 1.0)
@constraint(m, e148, -x[66]+x[84]-b[124] >= -1.0)
@constraint(m, e149, -x[67]+x[85]-b[125] >= -1.0)
@constraint(m, e150, x[66]-9*b[124] <= 0.0)
@constraint(m, e151, x[67]-9*b[125] <= 0.0)
@constraint(m, e152, x[84]-9*b[124] <= 0.0)
@constraint(m, e153, x[85]-9*b[125] <= 0.0)
@NLconstraint(m, e154, -0.75*log(1+x[68])+x[86]+b[126] <= 1.0)
@NLconstraint(m, e155, -0.75*log(1+x[69])+x[87]+b[127] <= 1.0)
@constraint(m, e156, x[68]-3.04984759446376*b[126] <= 0.0)
@constraint(m, e157, x[69]-3.04984759446376*b[127] <= 0.0)
@constraint(m, e158, x[86]-1.04900943706034*b[126] <= 0.0)
@constraint(m, e159, x[87]-1.04900943706034*b[127] <= 0.0)
@NLconstraint(m, e160, -0.8*log(1+x[70])+x[88]+b[128] <= 1.0)
@NLconstraint(m, e161, -0.8*log(1+x[71])+x[89]+b[129] <= 1.0)
@constraint(m, e162, x[70]-3.04984759446376*b[128] <= 0.0)
@constraint(m, e163, x[71]-3.04984759446376*b[129] <= 0.0)
@constraint(m, e164, x[88]-1.11894339953103*b[128] <= 0.0)
@constraint(m, e165, x[89]-1.11894339953103*b[129] <= 0.0)
@NLconstraint(m, e166, -0.85*log(1+x[72])+x[90]+b[130] <= 1.0)
@NLconstraint(m, e167, -0.85*log(1+x[73])+x[91]+b[131] <= 1.0)
@constraint(m, e168, x[72]-3.04984759446376*b[130] <= 0.0)
@constraint(m, e169, x[73]-3.04984759446376*b[131] <= 0.0)
@constraint(m, e170, x[90]-1.18887736200171*b[130] <= 0.0)
@constraint(m, e171, x[91]-1.18887736200171*b[131] <= 0.0)
@constraint(m, e172, 5*b[132]+x[172] <= 0.0)
@constraint(m, e173, 4*b[133]+x[173] <= 0.0)
@constraint(m, e174, 8*b[134]+x[174] <= 0.0)
@constraint(m, e175, 7*b[135]+x[175] <= 0.0)
@constraint(m, e176, 6*b[136]+x[176] <= 0.0)
@constraint(m, e177, 9*b[137]+x[177] <= 0.0)
@constraint(m, e178, 10*b[138]+x[178] <= 0.0)
@constraint(m, e179, 9*b[139]+x[179] <= 0.0)
@constraint(m, e180, 6*b[140]+x[180] <= 0.0)
@constraint(m, e181, 10*b[141]+x[181] <= 0.0)
@constraint(m, e182, 7*b[142]+x[182] <= 0.0)
@constraint(m, e183, 7*b[143]+x[183] <= 0.0)
@constraint(m, e184, 4*b[144]+x[184] <= 0.0)
@constraint(m, e185, 3*b[145]+x[185] <= 0.0)
@constraint(m, e186, 5*b[146]+x[186] <= 0.0)
@constraint(m, e187, 6*b[147]+x[187] <= 0.0)
@constraint(m, e188, 2*b[148]+x[188] <= 0.0)
@constraint(m, e189, 5*b[149]+x[189] <= 0.0)
@constraint(m, e190, 4*b[150]+x[190] <= 0.0)
@constraint(m, e191, 7*b[151]+x[191] <= 0.0)
@constraint(m, e192, 3*b[152]+x[192] <= 0.0)
@constraint(m, e193, 9*b[153]+x[193] <= 0.0)
@constraint(m, e194, 7*b[154]+x[194] <= 0.0)
@constraint(m, e195, 2*b[155]+x[195] <= 0.0)
@constraint(m, e196, 3*b[156]+x[196] <= 0.0)
@constraint(m, e197, b[157]+x[197] <= 0.0)
@constraint(m, e198, 2*b[158]+x[198] <= 0.0)
@constraint(m, e199, 6*b[159]+x[199] <= 0.0)
@constraint(m, e200, 4*b[160]+x[200] <= 0.0)
@constraint(m, e201, 8*b[161]+x[201] <= 0.0)
@constraint(m, e202, 2*b[162]+x[202] <= 0.0)
@constraint(m, e203, 5*b[163]+x[203] <= 0.0)
@constraint(m, e204, 3*b[164]+x[204] <= 0.0)
@constraint(m, e205, 4*b[165]+x[205] <= 0.0)
@constraint(m, e206, 5*b[166]+x[206] <= 0.0)
@constraint(m, e207, 7*b[167]+x[207] <= 0.0)
@constraint(m, e208, 2*b[168]+x[208] <= 0.0)
@constraint(m, e209, 8*b[169]+x[209] <= 0.0)
@constraint(m, e210, b[170]+x[210] <= 0.0)
@constraint(m, e211, 4*b[171]+x[211] <= 0.0)
@constraint(m, e212, 5*b[132]+x[172] >= 0.0)
@constraint(m, e213, 4*b[133]+x[173] >= 0.0)
@constraint(m, e214, 8*b[134]+x[174] >= 0.0)
@constraint(m, e215, 7*b[135]+x[175] >= 0.0)
@constraint(m, e216, 6*b[136]+x[176] >= 0.0)
@constraint(m, e217, 9*b[137]+x[177] >= 0.0)
@constraint(m, e218, 10*b[138]+x[178] >= 0.0)
@constraint(m, e219, 9*b[139]+x[179] >= 0.0)
@constraint(m, e220, 6*b[140]+x[180] >= 0.0)
@constraint(m, e221, 10*b[141]+x[181] >= 0.0)
@constraint(m, e222, 7*b[142]+x[182] >= 0.0)
@constraint(m, e223, 7*b[143]+x[183] >= 0.0)
@constraint(m, e224, 4*b[144]+x[184] >= 0.0)
@constraint(m, e225, 3*b[145]+x[185] >= 0.0)
@constraint(m, e226, 5*b[146]+x[186] >= 0.0)
@constraint(m, e227, 6*b[147]+x[187] >= 0.0)
@constraint(m, e228, 2*b[148]+x[188] >= 0.0)
@constraint(m, e229, 5*b[149]+x[189] >= 0.0)
@constraint(m, e230, 4*b[150]+x[190] >= 0.0)
@constraint(m, e231, 7*b[151]+x[191] >= 0.0)
@constraint(m, e232, 3*b[152]+x[192] >= 0.0)
@constraint(m, e233, 9*b[153]+x[193] >= 0.0)
@constraint(m, e234, 7*b[154]+x[194] >= 0.0)
@constraint(m, e235, 2*b[155]+x[195] >= 0.0)
@constraint(m, e236, 3*b[156]+x[196] >= 0.0)
@constraint(m, e237, b[157]+x[197] >= 0.0)
@constraint(m, e238, 2*b[158]+x[198] >= 0.0)
@constraint(m, e239, 6*b[159]+x[199] >= 0.0)
@constraint(m, e240, 4*b[160]+x[200] >= 0.0)
@constraint(m, e241, 8*b[161]+x[201] >= 0.0)
@constraint(m, e242, 2*b[162]+x[202] >= 0.0)
@constraint(m, e243, 5*b[163]+x[203] >= 0.0)
@constraint(m, e244, 3*b[164]+x[204] >= 0.0)
@constraint(m, e245, 4*b[165]+x[205] >= 0.0)
@constraint(m, e246, 5*b[166]+x[206] >= 0.0)
@constraint(m, e247, 7*b[167]+x[207] >= 0.0)
@constraint(m, e248, 2*b[168]+x[208] >= 0.0)
@constraint(m, e249, 8*b[169]+x[209] >= 0.0)
@constraint(m, e250, b[170]+x[210] >= 0.0)
@constraint(m, e251, 4*b[171]+x[211] >= 0.0)
@constraint(m, e252, b[92]-b[93] <= 0.0)
@constraint(m, e253, b[94]-b[95] <= 0.0)
@constraint(m, e254, b[96]-b[97] <= 0.0)
@constraint(m, e255, b[98]-b[99] <= 0.0)
@constraint(m, e256, b[100]-b[101] <= 0.0)
@constraint(m, e257, b[102]-b[103] <= 0.0)
@constraint(m, e258, b[104]-b[105] <= 0.0)
@constraint(m, e259, b[106]-b[107] <= 0.0)
@constraint(m, e260, b[108]-b[109] <= 0.0)
@constraint(m, e261, b[110]-b[111] <= 0.0)
@constraint(m, e262, b[112]-b[113] <= 0.0)
@constraint(m, e263, b[114]-b[115] <= 0.0)
@constraint(m, e264, b[116]-b[117] <= 0.0)
@constraint(m, e265, b[118]-b[119] <= 0.0)
@constraint(m, e266, b[120]-b[121] <= 0.0)
@constraint(m, e267, b[122]-b[123] <= 0.0)
@constraint(m, e268, b[124]-b[125] <= 0.0)
@constraint(m, e269, b[126]-b[127] <= 0.0)
@constraint(m, e270, b[128]-b[129] <= 0.0)
@constraint(m, e271, b[130]-b[131] <= 0.0)
@constraint(m, e272, b[132]+b[133] <= 1.0)
@constraint(m, e273, b[132]+b[133] <= 1.0)
@constraint(m, e274, b[134]+b[135] <= 1.0)
@constraint(m, e275, b[134]+b[135] <= 1.0)
@constraint(m, e276, b[136]+b[137] <= 1.0)
@constraint(m, e277, b[136]+b[137] <= 1.0)
@constraint(m, e278, b[138]+b[139] <= 1.0)
@constraint(m, e279, b[138]+b[139] <= 1.0)
@constraint(m, e280, b[140]+b[141] <= 1.0)
@constraint(m, e281, b[140]+b[141] <= 1.0)
@constraint(m, e282, b[142]+b[143] <= 1.0)
@constraint(m, e283, b[142]+b[143] <= 1.0)
@constraint(m, e284, b[144]+b[145] <= 1.0)
@constraint(m, e285, b[144]+b[145] <= 1.0)
@constraint(m, e286, b[146]+b[147] <= 1.0)
@constraint(m, e287, b[146]+b[147] <= 1.0)
@constraint(m, e288, b[148]+b[149] <= 1.0)
@constraint(m, e289, b[148]+b[149] <= 1.0)
@constraint(m, e290, b[150]+b[151] <= 1.0)
@constraint(m, e291, b[150]+b[151] <= 1.0)
@constraint(m, e292, b[152]+b[153] <= 1.0)
@constraint(m, e293, b[152]+b[153] <= 1.0)
@constraint(m, e294, b[154]+b[155] <= 1.0)
@constraint(m, e295, b[154]+b[155] <= 1.0)
@constraint(m, e296, b[156]+b[157] <= 1.0)
@constraint(m, e297, b[156]+b[157] <= 1.0)
@constraint(m, e298, b[158]+b[159] <= 1.0)
@constraint(m, e299, b[158]+b[159] <= 1.0)
@constraint(m, e300, b[160]+b[161] <= 1.0)
@constraint(m, e301, b[160]+b[161] <= 1.0)
@constraint(m, e302, b[162]+b[163] <= 1.0)
@constraint(m, e303, b[162]+b[163] <= 1.0)
@constraint(m, e304, b[164]+b[165] <= 1.0)
@constraint(m, e305, b[164]+b[165] <= 1.0)
@constraint(m, e306, b[166]+b[167] <= 1.0)
@constraint(m, e307, b[166]+b[167] <= 1.0)
@constraint(m, e308, b[168]+b[169] <= 1.0)
@constraint(m, e309, b[168]+b[169] <= 1.0)
@constraint(m, e310, b[170]+b[171] <= 1.0)
@constraint(m, e311, b[170]+b[171] <= 1.0)
@constraint(m, e312, b[92]-b[132] <= 0.0)
@constraint(m, e313, -b[92]+b[93]-b[133] <= 0.0)
@constraint(m, e314, b[94]-b[134] <= 0.0)
@constraint(m, e315, -b[94]+b[95]-b[135] <= 0.0)
@constraint(m, e316, b[96]-b[136] <= 0.0)
@constraint(m, e317, -b[96]+b[97]-b[137] <= 0.0)
@constraint(m, e318, b[98]-b[138] <= 0.0)
@constraint(m, e319, -b[98]+b[99]-b[139] <= 0.0)
@constraint(m, e320, b[100]-b[140] <= 0.0)
@constraint(m, e321, -b[100]+b[101]-b[141] <= 0.0)
@constraint(m, e322, b[102]-b[142] <= 0.0)
@constraint(m, e323, -b[102]+b[103]-b[143] <= 0.0)
@constraint(m, e324, b[104]-b[144] <= 0.0)
@constraint(m, e325, -b[104]+b[105]-b[145] <= 0.0)
@constraint(m, e326, b[106]-b[146] <= 0.0)
@constraint(m, e327, -b[106]+b[107]-b[147] <= 0.0)
@constraint(m, e328, b[108]-b[148] <= 0.0)
@constraint(m, e329, -b[108]+b[109]-b[149] <= 0.0)
@constraint(m, e330, b[110]-b[150] <= 0.0)
@constraint(m, e331, -b[110]+b[111]-b[151] <= 0.0)
@constraint(m, e332, b[112]-b[152] <= 0.0)
@constraint(m, e333, -b[112]+b[113]-b[153] <= 0.0)
@constraint(m, e334, b[114]-b[154] <= 0.0)
@constraint(m, e335, -b[114]+b[115]-b[155] <= 0.0)
@constraint(m, e336, b[116]-b[156] <= 0.0)
@constraint(m, e337, -b[116]+b[117]-b[157] <= 0.0)
@constraint(m, e338, b[118]-b[158] <= 0.0)
@constraint(m, e339, -b[118]+b[119]-b[159] <= 0.0)
@constraint(m, e340, b[120]-b[160] <= 0.0)
@constraint(m, e341, -b[120]+b[121]-b[161] <= 0.0)
@constraint(m, e342, b[122]-b[162] <= 0.0)
@constraint(m, e343, -b[122]+b[123]-b[163] <= 0.0)
@constraint(m, e344, b[124]-b[164] <= 0.0)
@constraint(m, e345, -b[124]+b[125]-b[165] <= 0.0)
@constraint(m, e346, b[126]-b[166] <= 0.0)
@constraint(m, e347, -b[126]+b[127]-b[167] <= 0.0)
@constraint(m, e348, b[128]-b[168] <= 0.0)
@constraint(m, e349, -b[128]+b[129]-b[169] <= 0.0)
@constraint(m, e350, b[130]-b[170] <= 0.0)
@constraint(m, e351, -b[130]+b[131]-b[171] <= 0.0)
@constraint(m, e352, b[92]+b[94] == 1.0)
@constraint(m, e353, b[93]+b[95] == 1.0)
@constraint(m, e354, -b[96]+b[102]+b[104] >= 0.0)
@constraint(m, e355, -b[97]+b[103]+b[105] >= 0.0)
@constraint(m, e356, -b[102]+b[114] >= 0.0)
@constraint(m, e357, -b[103]+b[115] >= 0.0)
@constraint(m, e358, -b[104]+b[116] >= 0.0)
@constraint(m, e359, -b[105]+b[117] >= 0.0)
@constraint(m, e360, -b[98]+b[106] >= 0.0)
@constraint(m, e361, -b[99]+b[107] >= 0.0)
@constraint(m, e362, -b[106]+b[118]+b[120] >= 0.0)
@constraint(m, e363, -b[107]+b[119]+b[121] >= 0.0)
@constraint(m, e364, -b[100]+b[108]+b[110]+b[112] >= 0.0)
@constraint(m, e365, -b[101]+b[109]+b[111]+b[113] >= 0.0)
@constraint(m, e366, -b[108]+b[120] >= 0.0)
@constraint(m, e367, -b[109]+b[121] >= 0.0)
@constraint(m, e368, -b[110]+b[122]+b[124] >= 0.0)
@constraint(m, e369, -b[111]+b[123]+b[125] >= 0.0)
@constraint(m, e370, -b[112]+b[126]+b[128]+b[130] >= 0.0)
@constraint(m, e371, -b[113]+b[127]+b[129]+b[131] >= 0.0)
@constraint(m, e372, b[92]+b[94]-b[96] >= 0.0)
@constraint(m, e373, b[93]+b[95]-b[97] >= 0.0)
@constraint(m, e374, b[92]+b[94]-b[98] >= 0.0)
@constraint(m, e375, b[93]+b[95]-b[99] >= 0.0)
@constraint(m, e376, b[92]+b[94]-b[100] >= 0.0)
@constraint(m, e377, b[93]+b[95]-b[101] >= 0.0)
@constraint(m, e378, b[96]-b[102] >= 0.0)
@constraint(m, e379, b[97]-b[103] >= 0.0)
@constraint(m, e380, b[96]-b[104] >= 0.0)
@constraint(m, e381, b[97]-b[105] >= 0.0)
@constraint(m, e382, b[98]-b[106] >= 0.0)
@constraint(m, e383, b[99]-b[107] >= 0.0)
@constraint(m, e384, b[100]-b[108] >= 0.0)
@constraint(m, e385, b[101]-b[109] >= 0.0)
@constraint(m, e386, b[100]-b[110] >= 0.0)
@constraint(m, e387, b[101]-b[111] >= 0.0)
@constraint(m, e388, b[100]-b[112] >= 0.0)
@constraint(m, e389, b[101]-b[113] >= 0.0)
@constraint(m, e390, b[102]-b[114] >= 0.0)
@constraint(m, e391, b[103]-b[115] >= 0.0)
@constraint(m, e392, b[104]-b[116] >= 0.0)
@constraint(m, e393, b[105]-b[117] >= 0.0)
@constraint(m, e394, b[106]-b[118] >= 0.0)
@constraint(m, e395, b[107]-b[119] >= 0.0)
@constraint(m, e396, b[106]-b[120] >= 0.0)
@constraint(m, e397, b[107]-b[121] >= 0.0)
@constraint(m, e398, b[110]-b[122] >= 0.0)
@constraint(m, e399, b[111]-b[123] >= 0.0)
@constraint(m, e400, b[110]-b[124] >= 0.0)
@constraint(m, e401, b[111]-b[125] >= 0.0)
@constraint(m, e402, b[112]-b[126] >= 0.0)
@constraint(m, e403, b[113]-b[127] >= 0.0)
@constraint(m, e404, b[112]-b[128] >= 0.0)
@constraint(m, e405, b[113]-b[129] >= 0.0)
@constraint(m, e406, b[112]-b[130] >= 0.0)
@constraint(m, e407, b[113]-b[131] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 