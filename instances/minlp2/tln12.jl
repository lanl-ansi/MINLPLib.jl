using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, b[b_Idx],  Bin)
i_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168]
@variable(m, i[i_Idx], Int)
set_upper_bound(i[13], 48.0)
set_upper_bound(i[14], 48.0)
set_upper_bound(i[15], 48.0)
set_upper_bound(i[16], 48.0)
set_upper_bound(i[17], 48.0)
set_upper_bound(i[18], 48.0)
set_upper_bound(i[19], 48.0)
set_upper_bound(i[20], 48.0)
set_upper_bound(i[21], 48.0)
set_upper_bound(i[22], 48.0)
set_upper_bound(i[23], 48.0)
set_upper_bound(i[24], 48.0)
set_upper_bound(i[25], 5.0)
set_upper_bound(i[26], 5.0)
set_upper_bound(i[27], 5.0)
set_upper_bound(i[28], 5.0)
set_upper_bound(i[29], 5.0)
set_upper_bound(i[30], 5.0)
set_upper_bound(i[31], 5.0)
set_upper_bound(i[32], 5.0)
set_upper_bound(i[33], 5.0)
set_upper_bound(i[34], 5.0)
set_upper_bound(i[35], 5.0)
set_upper_bound(i[36], 5.0)
set_upper_bound(i[37], 5.0)
set_upper_bound(i[38], 5.0)
set_upper_bound(i[39], 5.0)
set_upper_bound(i[40], 5.0)
set_upper_bound(i[41], 5.0)
set_upper_bound(i[42], 5.0)
set_upper_bound(i[43], 5.0)
set_upper_bound(i[44], 5.0)
set_upper_bound(i[45], 5.0)
set_upper_bound(i[46], 5.0)
set_upper_bound(i[47], 5.0)
set_upper_bound(i[48], 5.0)
set_upper_bound(i[49], 5.0)
set_upper_bound(i[50], 5.0)
set_upper_bound(i[51], 5.0)
set_upper_bound(i[52], 5.0)
set_upper_bound(i[53], 5.0)
set_upper_bound(i[54], 5.0)
set_upper_bound(i[55], 5.0)
set_upper_bound(i[56], 5.0)
set_upper_bound(i[57], 5.0)
set_upper_bound(i[58], 5.0)
set_upper_bound(i[59], 5.0)
set_upper_bound(i[60], 5.0)
set_upper_bound(i[61], 5.0)
set_upper_bound(i[62], 5.0)
set_upper_bound(i[63], 5.0)
set_upper_bound(i[64], 5.0)
set_upper_bound(i[65], 5.0)
set_upper_bound(i[66], 5.0)
set_upper_bound(i[67], 5.0)
set_upper_bound(i[68], 5.0)
set_upper_bound(i[69], 5.0)
set_upper_bound(i[70], 5.0)
set_upper_bound(i[71], 5.0)
set_upper_bound(i[72], 5.0)
set_upper_bound(i[73], 5.0)
set_upper_bound(i[74], 5.0)
set_upper_bound(i[75], 5.0)
set_upper_bound(i[76], 5.0)
set_upper_bound(i[77], 5.0)
set_upper_bound(i[78], 5.0)
set_upper_bound(i[79], 5.0)
set_upper_bound(i[80], 5.0)
set_upper_bound(i[81], 5.0)
set_upper_bound(i[82], 5.0)
set_upper_bound(i[83], 5.0)
set_upper_bound(i[84], 5.0)
set_upper_bound(i[85], 5.0)
set_upper_bound(i[86], 5.0)
set_upper_bound(i[87], 5.0)
set_upper_bound(i[88], 5.0)
set_upper_bound(i[89], 5.0)
set_upper_bound(i[90], 5.0)
set_upper_bound(i[91], 5.0)
set_upper_bound(i[92], 5.0)
set_upper_bound(i[93], 5.0)
set_upper_bound(i[94], 5.0)
set_upper_bound(i[95], 5.0)
set_upper_bound(i[96], 5.0)
set_upper_bound(i[97], 5.0)
set_upper_bound(i[98], 5.0)
set_upper_bound(i[99], 5.0)
set_upper_bound(i[100], 5.0)
set_upper_bound(i[101], 5.0)
set_upper_bound(i[102], 5.0)
set_upper_bound(i[103], 5.0)
set_upper_bound(i[104], 5.0)
set_upper_bound(i[105], 5.0)
set_upper_bound(i[106], 5.0)
set_upper_bound(i[107], 5.0)
set_upper_bound(i[108], 5.0)
set_upper_bound(i[109], 5.0)
set_upper_bound(i[110], 5.0)
set_upper_bound(i[111], 5.0)
set_upper_bound(i[112], 5.0)
set_upper_bound(i[113], 5.0)
set_upper_bound(i[114], 5.0)
set_upper_bound(i[115], 5.0)
set_upper_bound(i[116], 5.0)
set_upper_bound(i[117], 5.0)
set_upper_bound(i[118], 5.0)
set_upper_bound(i[119], 5.0)
set_upper_bound(i[120], 5.0)
set_upper_bound(i[121], 5.0)
set_upper_bound(i[122], 5.0)
set_upper_bound(i[123], 5.0)
set_upper_bound(i[124], 5.0)
set_upper_bound(i[125], 5.0)
set_upper_bound(i[126], 5.0)
set_upper_bound(i[127], 5.0)
set_upper_bound(i[128], 5.0)
set_upper_bound(i[129], 5.0)
set_upper_bound(i[130], 5.0)
set_upper_bound(i[131], 5.0)
set_upper_bound(i[132], 5.0)
set_upper_bound(i[133], 5.0)
set_upper_bound(i[134], 5.0)
set_upper_bound(i[135], 5.0)
set_upper_bound(i[136], 5.0)
set_upper_bound(i[137], 5.0)
set_upper_bound(i[138], 5.0)
set_upper_bound(i[139], 5.0)
set_upper_bound(i[140], 5.0)
set_upper_bound(i[141], 5.0)
set_upper_bound(i[142], 5.0)
set_upper_bound(i[143], 5.0)
set_upper_bound(i[144], 5.0)
set_upper_bound(i[145], 5.0)
set_upper_bound(i[146], 5.0)
set_upper_bound(i[147], 5.0)
set_upper_bound(i[148], 5.0)
set_upper_bound(i[149], 5.0)
set_upper_bound(i[150], 5.0)
set_upper_bound(i[151], 5.0)
set_upper_bound(i[152], 5.0)
set_upper_bound(i[153], 5.0)
set_upper_bound(i[154], 5.0)
set_upper_bound(i[155], 5.0)
set_upper_bound(i[156], 5.0)
set_upper_bound(i[157], 5.0)
set_upper_bound(i[158], 5.0)
set_upper_bound(i[159], 5.0)
set_upper_bound(i[160], 5.0)
set_upper_bound(i[161], 5.0)
set_upper_bound(i[162], 5.0)
set_upper_bound(i[163], 5.0)
set_upper_bound(i[164], 5.0)
set_upper_bound(i[165], 5.0)
set_upper_bound(i[166], 5.0)
set_upper_bound(i[167], 5.0)
set_upper_bound(i[168], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-0.5*b[5]-0.6*b[6]-0.7*b[7]-0.8*b[8]-0.9*b[9]-b[10]-1.1*b[11]-1.2*b[12]-i[13]-i[14]-i[15]-i[16]-i[17]-i[18]-i[19]-i[20]-i[21]-i[22]-i[23]-i[24]+objvar == 0.0)
@constraint(m, e2, 350*i[25]+450*i[37]+550*i[49]+650*i[61]+700*i[73]+740*i[85]+800*i[97]+840*i[109]+910*i[121]+960*i[133]+1010*i[145]+1060*i[157] <= 2100.0)
@constraint(m, e3, 350*i[26]+450*i[38]+550*i[50]+650*i[62]+700*i[74]+740*i[86]+800*i[98]+840*i[110]+910*i[122]+960*i[134]+1010*i[146]+1060*i[158] <= 2100.0)
@constraint(m, e4, 350*i[27]+450*i[39]+550*i[51]+650*i[63]+700*i[75]+740*i[87]+800*i[99]+840*i[111]+910*i[123]+960*i[135]+1010*i[147]+1060*i[159] <= 2100.0)
@constraint(m, e5, 350*i[28]+450*i[40]+550*i[52]+650*i[64]+700*i[76]+740*i[88]+800*i[100]+840*i[112]+910*i[124]+960*i[136]+1010*i[148]+1060*i[160] <= 2100.0)
@constraint(m, e6, 350*i[29]+450*i[41]+550*i[53]+650*i[65]+700*i[77]+740*i[89]+800*i[101]+840*i[113]+910*i[125]+960*i[137]+1010*i[149]+1060*i[161] <= 2100.0)
@constraint(m, e7, 350*i[30]+450*i[42]+550*i[54]+650*i[66]+700*i[78]+740*i[90]+800*i[102]+840*i[114]+910*i[126]+960*i[138]+1010*i[150]+1060*i[162] <= 2100.0)
@constraint(m, e8, 350*i[31]+450*i[43]+550*i[55]+650*i[67]+700*i[79]+740*i[91]+800*i[103]+840*i[115]+910*i[127]+960*i[139]+1010*i[151]+1060*i[163] <= 2100.0)
@constraint(m, e9, 350*i[32]+450*i[44]+550*i[56]+650*i[68]+700*i[80]+740*i[92]+800*i[104]+840*i[116]+910*i[128]+960*i[140]+1010*i[152]+1060*i[164] <= 2100.0)
@constraint(m, e10, 350*i[33]+450*i[45]+550*i[57]+650*i[69]+700*i[81]+740*i[93]+800*i[105]+840*i[117]+910*i[129]+960*i[141]+1010*i[153]+1060*i[165] <= 2100.0)
@constraint(m, e11, 350*i[34]+450*i[46]+550*i[58]+650*i[70]+700*i[82]+740*i[94]+800*i[106]+840*i[118]+910*i[130]+960*i[142]+1010*i[154]+1060*i[166] <= 2100.0)
@constraint(m, e12, 350*i[35]+450*i[47]+550*i[59]+650*i[71]+700*i[83]+740*i[95]+800*i[107]+840*i[119]+910*i[131]+960*i[143]+1010*i[155]+1060*i[167] <= 2100.0)
@constraint(m, e13, 350*i[36]+450*i[48]+550*i[60]+650*i[72]+700*i[84]+740*i[96]+800*i[108]+840*i[120]+910*i[132]+960*i[144]+1010*i[156]+1060*i[168] <= 2100.0)
@constraint(m, e14, -350*i[25]-450*i[37]-550*i[49]-650*i[61]-700*i[73]-740*i[85]-800*i[97]-840*i[109]-910*i[121]-960*i[133]-1010*i[145]-1060*i[157] <= -2000.0)
@constraint(m, e15, -350*i[26]-450*i[38]-550*i[50]-650*i[62]-700*i[74]-740*i[86]-800*i[98]-840*i[110]-910*i[122]-960*i[134]-1010*i[146]-1060*i[158] <= -2000.0)
@constraint(m, e16, -350*i[27]-450*i[39]-550*i[51]-650*i[63]-700*i[75]-740*i[87]-800*i[99]-840*i[111]-910*i[123]-960*i[135]-1010*i[147]-1060*i[159] <= -2000.0)
@constraint(m, e17, -350*i[28]-450*i[40]-550*i[52]-650*i[64]-700*i[76]-740*i[88]-800*i[100]-840*i[112]-910*i[124]-960*i[136]-1010*i[148]-1060*i[160] <= -2000.0)
@constraint(m, e18, -350*i[29]-450*i[41]-550*i[53]-650*i[65]-700*i[77]-740*i[89]-800*i[101]-840*i[113]-910*i[125]-960*i[137]-1010*i[149]-1060*i[161] <= -2000.0)
@constraint(m, e19, -350*i[30]-450*i[42]-550*i[54]-650*i[66]-700*i[78]-740*i[90]-800*i[102]-840*i[114]-910*i[126]-960*i[138]-1010*i[150]-1060*i[162] <= -2000.0)
@constraint(m, e20, -350*i[31]-450*i[43]-550*i[55]-650*i[67]-700*i[79]-740*i[91]-800*i[103]-840*i[115]-910*i[127]-960*i[139]-1010*i[151]-1060*i[163] <= -2000.0)
@constraint(m, e21, -350*i[32]-450*i[44]-550*i[56]-650*i[68]-700*i[80]-740*i[92]-800*i[104]-840*i[116]-910*i[128]-960*i[140]-1010*i[152]-1060*i[164] <= -2000.0)
@constraint(m, e22, -350*i[33]-450*i[45]-550*i[57]-650*i[69]-700*i[81]-740*i[93]-800*i[105]-840*i[117]-910*i[129]-960*i[141]-1010*i[153]-1060*i[165] <= -2000.0)
@constraint(m, e23, -350*i[34]-450*i[46]-550*i[58]-650*i[70]-700*i[82]-740*i[94]-800*i[106]-840*i[118]-910*i[130]-960*i[142]-1010*i[154]-1060*i[166] <= -2000.0)
@constraint(m, e24, -350*i[35]-450*i[47]-550*i[59]-650*i[71]-700*i[83]-740*i[95]-800*i[107]-840*i[119]-910*i[131]-960*i[143]-1010*i[155]-1060*i[167] <= -2000.0)
@constraint(m, e25, -350*i[36]-450*i[48]-550*i[60]-650*i[72]-700*i[84]-740*i[96]-800*i[108]-840*i[120]-910*i[132]-960*i[144]-1010*i[156]-1060*i[168] <= -2000.0)
@constraint(m, e26, i[25]+i[37]+i[49]+i[61]+i[73]+i[85]+i[97]+i[109]+i[121]+i[133]+i[145]+i[157] <= 5.0)
@constraint(m, e27, i[26]+i[38]+i[50]+i[62]+i[74]+i[86]+i[98]+i[110]+i[122]+i[134]+i[146]+i[158] <= 5.0)
@constraint(m, e28, i[27]+i[39]+i[51]+i[63]+i[75]+i[87]+i[99]+i[111]+i[123]+i[135]+i[147]+i[159] <= 5.0)
@constraint(m, e29, i[28]+i[40]+i[52]+i[64]+i[76]+i[88]+i[100]+i[112]+i[124]+i[136]+i[148]+i[160] <= 5.0)
@constraint(m, e30, i[29]+i[41]+i[53]+i[65]+i[77]+i[89]+i[101]+i[113]+i[125]+i[137]+i[149]+i[161] <= 5.0)
@constraint(m, e31, i[30]+i[42]+i[54]+i[66]+i[78]+i[90]+i[102]+i[114]+i[126]+i[138]+i[150]+i[162] <= 5.0)
@constraint(m, e32, i[31]+i[43]+i[55]+i[67]+i[79]+i[91]+i[103]+i[115]+i[127]+i[139]+i[151]+i[163] <= 5.0)
@constraint(m, e33, i[32]+i[44]+i[56]+i[68]+i[80]+i[92]+i[104]+i[116]+i[128]+i[140]+i[152]+i[164] <= 5.0)
@constraint(m, e34, i[33]+i[45]+i[57]+i[69]+i[81]+i[93]+i[105]+i[117]+i[129]+i[141]+i[153]+i[165] <= 5.0)
@constraint(m, e35, i[34]+i[46]+i[58]+i[70]+i[82]+i[94]+i[106]+i[118]+i[130]+i[142]+i[154]+i[166] <= 5.0)
@constraint(m, e36, i[35]+i[47]+i[59]+i[71]+i[83]+i[95]+i[107]+i[119]+i[131]+i[143]+i[155]+i[167] <= 5.0)
@constraint(m, e37, i[36]+i[48]+i[60]+i[72]+i[84]+i[96]+i[108]+i[120]+i[132]+i[144]+i[156]+i[168] <= 5.0)
@constraint(m, e38, b[1]-i[13] <= 0.0)
@constraint(m, e39, b[2]-i[14] <= 0.0)
@constraint(m, e40, b[3]-i[15] <= 0.0)
@constraint(m, e41, b[4]-i[16] <= 0.0)
@constraint(m, e42, b[5]-i[17] <= 0.0)
@constraint(m, e43, b[6]-i[18] <= 0.0)
@constraint(m, e44, b[7]-i[19] <= 0.0)
@constraint(m, e45, b[8]-i[20] <= 0.0)
@constraint(m, e46, b[9]-i[21] <= 0.0)
@constraint(m, e47, b[10]-i[22] <= 0.0)
@constraint(m, e48, b[11]-i[23] <= 0.0)
@constraint(m, e49, b[12]-i[24] <= 0.0)
@constraint(m, e50, -48*b[1]+i[13] <= 0.0)
@constraint(m, e51, -48*b[2]+i[14] <= 0.0)
@constraint(m, e52, -48*b[3]+i[15] <= 0.0)
@constraint(m, e53, -48*b[4]+i[16] <= 0.0)
@constraint(m, e54, -48*b[5]+i[17] <= 0.0)
@constraint(m, e55, -48*b[6]+i[18] <= 0.0)
@constraint(m, e56, -48*b[7]+i[19] <= 0.0)
@constraint(m, e57, -48*b[8]+i[20] <= 0.0)
@constraint(m, e58, -48*b[9]+i[21] <= 0.0)
@constraint(m, e59, -48*b[10]+i[22] <= 0.0)
@constraint(m, e60, -48*b[11]+i[23] <= 0.0)
@constraint(m, e61, -48*b[12]+i[24] <= 0.0)
@NLconstraint(m, e62, -(i[13]*i[25]+i[14]*i[26]+i[15]*i[27]+i[16]*i[28]+i[17]*i[29]+i[18]*i[30]+i[19]*i[31]+i[20]*i[32]+i[21]*i[33]+i[22]*i[34]+i[23]*i[35]+i[24]*i[36]) <= -10.0)
@NLconstraint(m, e63, -(i[13]*i[37]+i[14]*i[38]+i[15]*i[39]+i[16]*i[40]+i[17]*i[41]+i[18]*i[42]+i[19]*i[43]+i[20]*i[44]+i[21]*i[45]+i[22]*i[46]+i[23]*i[47]+i[24]*i[48]) <= -28.0)
@NLconstraint(m, e64, -(i[13]*i[49]+i[14]*i[50]+i[15]*i[51]+i[16]*i[52]+i[17]*i[53]+i[18]*i[54]+i[19]*i[55]+i[20]*i[56]+i[21]*i[57]+i[22]*i[58]+i[23]*i[59]+i[24]*i[60]) <= -48.0)
@NLconstraint(m, e65, -(i[13]*i[61]+i[14]*i[62]+i[15]*i[63]+i[16]*i[64]+i[17]*i[65]+i[18]*i[66]+i[19]*i[67]+i[20]*i[68]+i[21]*i[69]+i[22]*i[70]+i[23]*i[71]+i[24]*i[72]) <= -28.0)
@NLconstraint(m, e66, -(i[13]*i[73]+i[14]*i[74]+i[15]*i[75]+i[16]*i[76]+i[17]*i[77]+i[18]*i[78]+i[19]*i[79]+i[20]*i[80]+i[21]*i[81]+i[22]*i[82]+i[23]*i[83]+i[24]*i[84]) <= -40.0)
@NLconstraint(m, e67, -(i[13]*i[85]+i[14]*i[86]+i[15]*i[87]+i[16]*i[88]+i[17]*i[89]+i[18]*i[90]+i[19]*i[91]+i[20]*i[92]+i[21]*i[93]+i[22]*i[94]+i[23]*i[95]+i[24]*i[96]) <= -30.0)
@NLconstraint(m, e68, -(i[13]*i[97]+i[14]*i[98]+i[15]*i[99]+i[16]*i[100]+i[17]*i[101]+i[18]*i[102]+i[19]*i[103]+i[20]*i[104]+i[21]*i[105]+i[22]*i[106]+i[23]*i[107]+i[24]*i[108]) <= -21.0)
@NLconstraint(m, e69, -(i[13]*i[109]+i[14]*i[110]+i[15]*i[111]+i[16]*i[112]+i[17]*i[113]+i[18]*i[114]+i[19]*i[115]+i[20]*i[116]+i[21]*i[117]+i[22]*i[118]+i[23]*i[119]+i[24]*i[120]) <= -22.0)
@NLconstraint(m, e70, -(i[13]*i[121]+i[14]*i[122]+i[15]*i[123]+i[16]*i[124]+i[17]*i[125]+i[18]*i[126]+i[19]*i[127]+i[20]*i[128]+i[21]*i[129]+i[22]*i[130]+i[23]*i[131]+i[24]*i[132]) <= -8.0)
@NLconstraint(m, e71, -(i[13]*i[133]+i[14]*i[134]+i[15]*i[135]+i[16]*i[136]+i[17]*i[137]+i[18]*i[138]+i[19]*i[139]+i[20]*i[140]+i[21]*i[141]+i[22]*i[142]+i[23]*i[143]+i[24]*i[144]) <= -8.0)
@NLconstraint(m, e72, -(i[13]*i[145]+i[14]*i[146]+i[15]*i[147]+i[16]*i[148]+i[17]*i[149]+i[18]*i[150]+i[19]*i[151]+i[20]*i[152]+i[21]*i[153]+i[22]*i[154]+i[23]*i[155]+i[24]*i[156]) <= -9.0)
@NLconstraint(m, e73, -(i[13]*i[157]+i[14]*i[158]+i[15]*i[159]+i[16]*i[160]+i[17]*i[161]+i[18]*i[162]+i[19]*i[163]+i[20]*i[164]+i[21]*i[165]+i[22]*i[166]+i[23]*i[167]+i[24]*i[168]) <= -8.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 