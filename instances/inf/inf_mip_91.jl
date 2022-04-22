using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
b_Idx = Any[26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[17], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12]-x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-x[19]-x[20]-x[21]-x[22]-x[23]-x[24]-x[25]-b[26]-b[27]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]-b[34]-b[35]-b[36]-b[37]-b[38]-b[39]-b[40]-b[41]-b[42]-b[43]-b[44]-b[45]-b[46]-b[47]-b[48]-b[49]-b[50]-b[51]-b[52]-b[53]-b[54]-b[55]-b[56]-b[57]-b[58]-b[59]-b[60]-b[61]-b[62]-b[63]-b[64]-b[65]-b[66]-b[67]-b[68]-b[69]-b[70]-b[71]-b[72]-b[73]-b[74]-b[75]-b[76]-b[77]-b[78]-b[79]-b[80]-b[81]-b[82]-b[83]-b[84]-b[85]-b[86]-b[87]-b[88]-b[89]-b[90]-b[91]-b[92]-b[93]-b[94]-b[95]-b[96]-b[97]-b[98]-b[99]-b[100]-b[101]-b[102]-b[103]-b[104]-b[105]-b[106]-b[107]-b[108]-b[109]-b[110]-b[111]-b[112]-b[113]-b[114]-b[115]-b[116]-b[117]-b[118]-b[119]-b[120]-b[121]-b[122]-b[123]-b[124]-b[125]-b[126]-b[127]-b[128]-b[129]-b[130]-b[131]-b[132]-b[133]-b[134]-b[135]-b[136]-b[137]-b[138]-b[139]-b[140]-b[141]-b[142]-b[143]-b[144]-b[145]-b[146]-b[147]-b[148]-b[149]-b[150]-b[151]-b[152]-b[153]-b[154]-b[155]-b[156]-b[157]-b[158]-b[159]-b[160]-b[161]-b[162]-b[163]-b[164]-b[165]-b[166]-b[167]-b[168]-b[169] == 0.0)
@constraint(m, e2, b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32]+b[33]+b[34]+b[35]+b[36]+b[37]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44]+b[45]+b[46]+b[47]+b[48]+b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61] == 1.0)
@constraint(m, e3, b[62]+b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+b[81]+b[82]+b[83]+b[84]+b[85]+b[86]+b[87]+b[88]+b[89]+b[90]+b[91]+b[92]+b[93]+b[94]+b[95]+b[96]+b[97] == 1.0)
@constraint(m, e4, b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104]+b[105]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112]+b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119]+b[120]+b[121]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[128]+b[129]+b[130]+b[131]+b[132]+b[133] == 1.0)
@constraint(m, e5, b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143]+b[144]+b[145]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151]+b[152]+b[153]+b[154]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160]+b[161]+b[162]+b[163]+b[164]+b[165]+b[166]+b[167]+b[168]+b[169] == 1.0)
@constraint(m, e6, b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[62]+b[63]+b[64]+b[65]+b[66]+b[67]+b[98]+b[99]+b[100]+b[101]+b[102]+b[103]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139] == 1.0)
@constraint(m, e7, b[32]+b[33]+b[34]+b[35]+b[36]+b[37]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[104]+b[105]+b[106]+b[107]+b[108]+b[109]+b[140]+b[141]+b[142]+b[143]+b[144]+b[145] == 1.0)
@constraint(m, e8, b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[74]+b[75]+b[76]+b[77]+b[78]+b[79]+b[110]+b[111]+b[112]+b[113]+b[114]+b[115]+b[146]+b[147]+b[148]+b[149]+b[150]+b[151] == 1.0)
@constraint(m, e9, b[44]+b[45]+b[46]+b[47]+b[48]+b[49]+b[80]+b[81]+b[82]+b[83]+b[84]+b[85]+b[116]+b[117]+b[118]+b[119]+b[120]+b[121]+b[152]+b[153]+b[154]+b[155]+b[156]+b[157] == 1.0)
@constraint(m, e10, b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[86]+b[87]+b[88]+b[89]+b[90]+b[91]+b[122]+b[123]+b[124]+b[125]+b[126]+b[127]+b[158]+b[159]+b[160]+b[161]+b[162]+b[163] == 1.0)
@constraint(m, e11, b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[92]+b[93]+b[94]+b[95]+b[96]+b[97]+b[128]+b[129]+b[130]+b[131]+b[132]+b[133]+b[164]+b[165]+b[166]+b[167]+b[168]+b[169] == 1.0)
@constraint(m, e12, b[26]+b[32]+b[38]+b[44]+b[50]+b[56]+b[62]+b[68]+b[74]+b[80]+b[86]+b[92]+b[98]+b[104]+b[110]+b[116]+b[122]+b[128]+b[134]+b[140]+b[146]+b[152]+b[158]+b[164] == 1.0)
@constraint(m, e13, b[27]+b[33]+b[39]+b[45]+b[51]+b[57]+b[63]+b[69]+b[75]+b[81]+b[87]+b[93]+b[99]+b[105]+b[111]+b[117]+b[123]+b[129]+b[135]+b[141]+b[147]+b[153]+b[159]+b[165] == 1.0)
@constraint(m, e14, b[28]+b[34]+b[40]+b[46]+b[52]+b[58]+b[64]+b[70]+b[76]+b[82]+b[88]+b[94]+b[100]+b[106]+b[112]+b[118]+b[124]+b[130]+b[136]+b[142]+b[148]+b[154]+b[160]+b[166] == 1.0)
@constraint(m, e15, b[29]+b[35]+b[41]+b[47]+b[53]+b[59]+b[65]+b[71]+b[77]+b[83]+b[89]+b[95]+b[101]+b[107]+b[113]+b[119]+b[125]+b[131]+b[137]+b[143]+b[149]+b[155]+b[161]+b[167] == 1.0)
@constraint(m, e16, b[30]+b[36]+b[42]+b[48]+b[54]+b[60]+b[66]+b[72]+b[78]+b[84]+b[90]+b[96]+b[102]+b[108]+b[114]+b[120]+b[126]+b[132]+b[138]+b[144]+b[150]+b[156]+b[162]+b[168] == 1.0)
@constraint(m, e17, b[31]+b[37]+b[43]+b[49]+b[55]+b[61]+b[67]+b[73]+b[79]+b[85]+b[91]+b[97]+b[103]+b[109]+b[115]+b[121]+b[127]+b[133]+b[139]+b[145]+b[151]+b[157]+b[163]+b[169] == 1.0)
@constraint(m, e18, b[170]+b[171]+b[172]+b[173]+b[174]+b[175]+b[176]+b[177]+b[178]+b[179]+b[180]+b[181]+b[182]+b[183]+b[184]+b[185]+b[186]+b[187]+b[188]+b[189]+b[190]+b[191]+b[192]+b[193] == 1.0)
@constraint(m, e19, b[194]+b[195]+b[196]+b[197]+b[198]+b[199]+b[200]+b[201]+b[202]+b[203]+b[204]+b[205]+b[206]+b[207]+b[208]+b[209]+b[210]+b[211]+b[212]+b[213]+b[214]+b[215]+b[216]+b[217] == 1.0)
@constraint(m, e20, b[218]+b[219]+b[220]+b[221]+b[222]+b[223]+b[224]+b[225]+b[226]+b[227]+b[228]+b[229]+b[230]+b[231]+b[232]+b[233]+b[234]+b[235]+b[236]+b[237]+b[238]+b[239]+b[240]+b[241] == 1.0)
@constraint(m, e21, b[242]+b[243]+b[244]+b[245]+b[246]+b[247]+b[248]+b[249]+b[250]+b[251]+b[252]+b[253]+b[254]+b[255]+b[256]+b[257]+b[258]+b[259]+b[260]+b[261]+b[262]+b[263]+b[264]+b[265] == 1.0)
@constraint(m, e22, b[170]+b[171]+b[172]+b[173]+b[194]+b[195]+b[196]+b[197]+b[218]+b[219]+b[220]+b[221]+b[242]+b[243]+b[244]+b[245] == 1.0)
@constraint(m, e23, b[174]+b[175]+b[176]+b[177]+b[198]+b[199]+b[200]+b[201]+b[222]+b[223]+b[224]+b[225]+b[246]+b[247]+b[248]+b[249] == 1.0)
@constraint(m, e24, b[178]+b[179]+b[180]+b[181]+b[202]+b[203]+b[204]+b[205]+b[226]+b[227]+b[228]+b[229]+b[250]+b[251]+b[252]+b[253] == 1.0)
@constraint(m, e25, b[182]+b[183]+b[184]+b[185]+b[206]+b[207]+b[208]+b[209]+b[230]+b[231]+b[232]+b[233]+b[254]+b[255]+b[256]+b[257] == 1.0)
@constraint(m, e26, b[186]+b[187]+b[188]+b[189]+b[210]+b[211]+b[212]+b[213]+b[234]+b[235]+b[236]+b[237]+b[258]+b[259]+b[260]+b[261] == 1.0)
@constraint(m, e27, b[190]+b[191]+b[192]+b[193]+b[214]+b[215]+b[216]+b[217]+b[238]+b[239]+b[240]+b[241]+b[262]+b[263]+b[264]+b[265] == 1.0)
@constraint(m, e28, b[170]+b[174]+b[178]+b[182]+b[186]+b[190]+b[194]+b[198]+b[202]+b[206]+b[210]+b[214]+b[218]+b[222]+b[226]+b[230]+b[234]+b[238]+b[242]+b[246]+b[250]+b[254]+b[258]+b[262] == 1.0)
@constraint(m, e29, b[171]+b[175]+b[179]+b[183]+b[187]+b[191]+b[195]+b[199]+b[203]+b[207]+b[211]+b[215]+b[219]+b[223]+b[227]+b[231]+b[235]+b[239]+b[243]+b[247]+b[251]+b[255]+b[259]+b[263] == 1.0)
@constraint(m, e30, b[172]+b[176]+b[180]+b[184]+b[188]+b[192]+b[196]+b[200]+b[204]+b[208]+b[212]+b[216]+b[220]+b[224]+b[228]+b[232]+b[236]+b[240]+b[244]+b[248]+b[252]+b[256]+b[260]+b[264] == 1.0)
@constraint(m, e31, b[173]+b[177]+b[181]+b[185]+b[189]+b[193]+b[197]+b[201]+b[205]+b[209]+b[213]+b[217]+b[221]+b[225]+b[229]+b[233]+b[237]+b[241]+b[245]+b[249]+b[253]+b[257]+b[261]+b[265] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
