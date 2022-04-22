using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[265]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, 4*b[1]+2.83*b[2]+9999*b[3]+3.61*b[4]+9999*b[5]+9999*b[6]+9999*b[7]+9999*b[8]+9999*b[9]+9999*b[10]+9999*b[11]+4*b[12]+9999*b[13]+2.24*b[14]+9999*b[15]+9999*b[16]+3.61*b[17]+9999*b[18]+9999*b[19]+9999*b[20]+9999*b[21]+9999*b[22]+2.83*b[23]+9999*b[24]+b[25]+9999*b[26]+1.41*b[27]+9999*b[28]+9999*b[29]+9999*b[30]+9999*b[31]+9999*b[32]+9999*b[33]+9999*b[34]+2.24*b[35]+b[36]+9999*b[37]+9999*b[38]+3.16*b[39]+9999*b[40]+2*b[41]+9999*b[42]+9999*b[43]+9999*b[44]+3.61*b[45]+9999*b[46]+9999*b[47]+9999*b[48]+3*b[49]+9999*b[50]+2.24*b[51]+9999*b[52]+9999*b[53]+3*b[54]+9999*b[55]+9999*b[56]+9999*b[57]+1.41*b[58]+9999*b[59]+3*b[60]+9999*b[61]+1.41*b[62]+9999*b[63]+2.24*b[64]+9999*b[65]+9999*b[66]+9999*b[67]+3.61*b[68]+9999*b[69]+3.16*b[70]+9999*b[71]+9999*b[72]+9999*b[73]+3.16*b[74]+9999*b[75]+9999*b[76]+3.16*b[77]+9999*b[78]+9999*b[79]+9999*b[80]+9999*b[81]+2.24*b[82]+1.41*b[83]+9999*b[84]+9999*b[85]+9999*b[86]+2.83*b[87]+9999*b[88]+9999*b[89]+9999*b[90]+9999*b[91]+2*b[92]+9999*b[93]+9999*b[94]+3.16*b[95]+9999*b[96]+1.41*b[97]+9999*b[98]+2.83*b[99]+9999*b[100]+9999*b[101]+9999*b[102]+9999*b[103]+9999*b[104]+2.24*b[105]+9999*b[106]+9999*b[107]+1.41*b[108]+4.12*b[109]+9999*b[110]+9999*b[111]+9999*b[112]+9999*b[113]+9999*b[114]+3*b[115]+9999*b[116]+9999*b[117]+2.83*b[118]+9999*b[119]+4.12*b[120]+7*b[121]+9999*b[122]+9999*b[123]+9999*b[124]+9999*b[125]+9999*b[126]+9999*b[127]+3.16*b[128]+9999*b[129]+2.83*b[130]+9999*b[131]+7*b[132]+4*b[133]+2.83*b[134]+9999*b[135]+3.61*b[136]+9999*b[137]+9999*b[138]+9999*b[139]+9999*b[140]+9999*b[141]+9999*b[142]+9999*b[143]+4*b[144]+9999*b[145]+2.24*b[146]+9999*b[147]+9999*b[148]+3.61*b[149]+9999*b[150]+9999*b[151]+9999*b[152]+9999*b[153]+9999*b[154]+2.83*b[155]+9999*b[156]+b[157]+9999*b[158]+1.41*b[159]+9999*b[160]+9999*b[161]+9999*b[162]+9999*b[163]+9999*b[164]+9999*b[165]+9999*b[166]+2.24*b[167]+b[168]+9999*b[169]+9999*b[170]+3.16*b[171]+9999*b[172]+2*b[173]+9999*b[174]+9999*b[175]+9999*b[176]+3.61*b[177]+9999*b[178]+9999*b[179]+9999*b[180]+3*b[181]+9999*b[182]+2.24*b[183]+9999*b[184]+9999*b[185]+3*b[186]+9999*b[187]+9999*b[188]+9999*b[189]+1.41*b[190]+9999*b[191]+3*b[192]+9999*b[193]+1.41*b[194]+9999*b[195]+2.24*b[196]+9999*b[197]+9999*b[198]+9999*b[199]+3.61*b[200]+9999*b[201]+3.16*b[202]+9999*b[203]+9999*b[204]+9999*b[205]+3.16*b[206]+9999*b[207]+9999*b[208]+3.16*b[209]+9999*b[210]+9999*b[211]+9999*b[212]+9999*b[213]+2.24*b[214]+1.41*b[215]+9999*b[216]+9999*b[217]+9999*b[218]+2.83*b[219]+9999*b[220]+9999*b[221]+9999*b[222]+9999*b[223]+2*b[224]+9999*b[225]+9999*b[226]+3.16*b[227]+9999*b[228]+1.41*b[229]+9999*b[230]+2.83*b[231]+9999*b[232]+9999*b[233]+9999*b[234]+9999*b[235]+9999*b[236]+2.24*b[237]+9999*b[238]+9999*b[239]+1.41*b[240]+4.12*b[241]+9999*b[242]+9999*b[243]+9999*b[244]+9999*b[245]+9999*b[246]+3*b[247]+9999*b[248]+9999*b[249]+2.83*b[250]+9999*b[251]+4.12*b[252]+7*b[253]+9999*b[254]+9999*b[255]+9999*b[256]+9999*b[257]+9999*b[258]+9999*b[259]+3.16*b[260]+9999*b[261]+2.83*b[262]+9999*b[263]+7*b[264]-x[265] == 0.0)
@constraint(m, e2, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11] == 1.0)
@constraint(m, e3, b[11]+b[22]+b[33]+b[44]+b[55]+b[66]+b[77]+b[88]+b[99]+b[110]+b[121] == 1.0)
@constraint(m, e4, b[133]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140]+b[141]+b[142]+b[143] == 1.0)
@constraint(m, e5, b[143]+b[154]+b[165]+b[176]+b[187]+b[198]+b[209]+b[220]+b[231]+b[242]+b[253] == 1.0)
@constraint(m, e6, b[12]+b[23]+b[34]+b[45]+b[56]+b[67]+b[78]+b[89]+b[100]+b[111]+b[122]+b[144]+b[155]+b[166]+b[177]+b[188]+b[199]+b[210]+b[221]+b[232]+b[243]+b[254] <= 1.0)
@constraint(m, e7, b[1]+b[24]+b[35]+b[46]+b[57]+b[68]+b[79]+b[90]+b[101]+b[112]+b[123]+b[133]+b[156]+b[167]+b[178]+b[189]+b[200]+b[211]+b[222]+b[233]+b[244]+b[255] <= 1.0)
@constraint(m, e8, b[2]+b[13]+b[36]+b[47]+b[58]+b[69]+b[80]+b[91]+b[102]+b[113]+b[124]+b[134]+b[145]+b[168]+b[179]+b[190]+b[201]+b[212]+b[223]+b[234]+b[245]+b[256] <= 1.0)
@constraint(m, e9, b[3]+b[14]+b[25]+b[48]+b[59]+b[70]+b[81]+b[92]+b[103]+b[114]+b[125]+b[135]+b[146]+b[157]+b[180]+b[191]+b[202]+b[213]+b[224]+b[235]+b[246]+b[257] <= 1.0)
@constraint(m, e10, b[4]+b[15]+b[26]+b[37]+b[60]+b[71]+b[82]+b[93]+b[104]+b[115]+b[126]+b[136]+b[147]+b[158]+b[169]+b[192]+b[203]+b[214]+b[225]+b[236]+b[247]+b[258] <= 1.0)
@constraint(m, e11, b[5]+b[16]+b[27]+b[38]+b[49]+b[72]+b[83]+b[94]+b[105]+b[116]+b[127]+b[137]+b[148]+b[159]+b[170]+b[181]+b[204]+b[215]+b[226]+b[237]+b[248]+b[259] <= 1.0)
@constraint(m, e12, b[6]+b[17]+b[28]+b[39]+b[50]+b[61]+b[84]+b[95]+b[106]+b[117]+b[128]+b[138]+b[149]+b[160]+b[171]+b[182]+b[193]+b[216]+b[227]+b[238]+b[249]+b[260] <= 1.0)
@constraint(m, e13, b[7]+b[18]+b[29]+b[40]+b[51]+b[62]+b[73]+b[96]+b[107]+b[118]+b[129]+b[139]+b[150]+b[161]+b[172]+b[183]+b[194]+b[205]+b[228]+b[239]+b[250]+b[261] <= 1.0)
@constraint(m, e14, b[8]+b[19]+b[30]+b[41]+b[52]+b[63]+b[74]+b[85]+b[108]+b[119]+b[130]+b[140]+b[151]+b[162]+b[173]+b[184]+b[195]+b[206]+b[217]+b[240]+b[251]+b[262] <= 1.0)
@constraint(m, e15, b[9]+b[20]+b[31]+b[42]+b[53]+b[64]+b[75]+b[86]+b[97]+b[120]+b[131]+b[141]+b[152]+b[163]+b[174]+b[185]+b[196]+b[207]+b[218]+b[229]+b[252]+b[263] <= 1.0)
@constraint(m, e16, b[10]+b[21]+b[32]+b[43]+b[54]+b[65]+b[76]+b[87]+b[98]+b[109]+b[132]+b[142]+b[153]+b[164]+b[175]+b[186]+b[197]+b[208]+b[219]+b[230]+b[241]+b[264] <= 1.0)
@constraint(m, e17, b[11]+b[22]+b[33]+b[44]+b[55]+b[66]+b[77]+b[88]+b[99]+b[110]+b[121]+b[143]+b[154]+b[165]+b[176]+b[187]+b[198]+b[209]+b[220]+b[231]+b[242]+b[253] <= 1.0)
@constraint(m, e18, b[1]-b[12]-b[13]-b[14]-b[15]-b[16]-b[17]-b[18]-b[19]-b[20]-b[21]-b[22]+b[24]+b[35]+b[46]+b[57]+b[68]+b[79]+b[90]+b[101]+b[112]+b[123] == 0.0)
@constraint(m, e19, b[2]+b[13]-b[23]-b[24]-b[25]-b[26]-b[27]-b[28]-b[29]-b[30]-b[31]-b[32]-b[33]+b[36]+b[47]+b[58]+b[69]+b[80]+b[91]+b[102]+b[113]+b[124] == 0.0)
@constraint(m, e20, b[3]+b[14]+b[25]-b[34]-b[35]-b[36]-b[37]-b[38]-b[39]-b[40]-b[41]-b[42]-b[43]-b[44]+b[48]+b[59]+b[70]+b[81]+b[92]+b[103]+b[114]+b[125] == 0.0)
@constraint(m, e21, b[4]+b[15]+b[26]+b[37]-b[45]-b[46]-b[47]-b[48]-b[49]-b[50]-b[51]-b[52]-b[53]-b[54]-b[55]+b[60]+b[71]+b[82]+b[93]+b[104]+b[115]+b[126] == 0.0)
@constraint(m, e22, b[5]+b[16]+b[27]+b[38]+b[49]-b[56]-b[57]-b[58]-b[59]-b[60]-b[61]-b[62]-b[63]-b[64]-b[65]-b[66]+b[72]+b[83]+b[94]+b[105]+b[116]+b[127] == 0.0)
@constraint(m, e23, b[6]+b[17]+b[28]+b[39]+b[50]+b[61]-b[67]-b[68]-b[69]-b[70]-b[71]-b[72]-b[73]-b[74]-b[75]-b[76]-b[77]+b[84]+b[95]+b[106]+b[117]+b[128] == 0.0)
@constraint(m, e24, b[7]+b[18]+b[29]+b[40]+b[51]+b[62]+b[73]-b[78]-b[79]-b[80]-b[81]-b[82]-b[83]-b[84]-b[85]-b[86]-b[87]-b[88]+b[96]+b[107]+b[118]+b[129] == 0.0)
@constraint(m, e25, b[8]+b[19]+b[30]+b[41]+b[52]+b[63]+b[74]+b[85]-b[89]-b[90]-b[91]-b[92]-b[93]-b[94]-b[95]-b[96]-b[97]-b[98]-b[99]+b[108]+b[119]+b[130] == 0.0)
@constraint(m, e26, b[9]+b[20]+b[31]+b[42]+b[53]+b[64]+b[75]+b[86]+b[97]-b[100]-b[101]-b[102]-b[103]-b[104]-b[105]-b[106]-b[107]-b[108]-b[109]-b[110]+b[120]+b[131] == 0.0)
@constraint(m, e27, b[10]+b[21]+b[32]+b[43]+b[54]+b[65]+b[76]+b[87]+b[98]+b[109]-b[111]-b[112]-b[113]-b[114]-b[115]-b[116]-b[117]-b[118]-b[119]-b[120]-b[121]+b[132] == 0.0)
@constraint(m, e28, b[133]-b[144]-b[145]-b[146]-b[147]-b[148]-b[149]-b[150]-b[151]-b[152]-b[153]-b[154]+b[156]+b[167]+b[178]+b[189]+b[200]+b[211]+b[222]+b[233]+b[244]+b[255] == 0.0)
@constraint(m, e29, b[134]+b[145]-b[155]-b[156]-b[157]-b[158]-b[159]-b[160]-b[161]-b[162]-b[163]-b[164]-b[165]+b[168]+b[179]+b[190]+b[201]+b[212]+b[223]+b[234]+b[245]+b[256] == 0.0)
@constraint(m, e30, b[135]+b[146]+b[157]-b[166]-b[167]-b[168]-b[169]-b[170]-b[171]-b[172]-b[173]-b[174]-b[175]-b[176]+b[180]+b[191]+b[202]+b[213]+b[224]+b[235]+b[246]+b[257] == 0.0)
@constraint(m, e31, b[136]+b[147]+b[158]+b[169]-b[177]-b[178]-b[179]-b[180]-b[181]-b[182]-b[183]-b[184]-b[185]-b[186]-b[187]+b[192]+b[203]+b[214]+b[225]+b[236]+b[247]+b[258] == 0.0)
@constraint(m, e32, b[137]+b[148]+b[159]+b[170]+b[181]-b[188]-b[189]-b[190]-b[191]-b[192]-b[193]-b[194]-b[195]-b[196]-b[197]-b[198]+b[204]+b[215]+b[226]+b[237]+b[248]+b[259] == 0.0)
@constraint(m, e33, b[138]+b[149]+b[160]+b[171]+b[182]+b[193]-b[199]-b[200]-b[201]-b[202]-b[203]-b[204]-b[205]-b[206]-b[207]-b[208]-b[209]+b[216]+b[227]+b[238]+b[249]+b[260] == 0.0)
@constraint(m, e34, b[139]+b[150]+b[161]+b[172]+b[183]+b[194]+b[205]-b[210]-b[211]-b[212]-b[213]-b[214]-b[215]-b[216]-b[217]-b[218]-b[219]-b[220]+b[228]+b[239]+b[250]+b[261] == 0.0)
@constraint(m, e35, b[140]+b[151]+b[162]+b[173]+b[184]+b[195]+b[206]+b[217]-b[221]-b[222]-b[223]-b[224]-b[225]-b[226]-b[227]-b[228]-b[229]-b[230]-b[231]+b[240]+b[251]+b[262] == 0.0)
@constraint(m, e36, b[141]+b[152]+b[163]+b[174]+b[185]+b[196]+b[207]+b[218]+b[229]-b[232]-b[233]-b[234]-b[235]-b[236]-b[237]-b[238]-b[239]-b[240]-b[241]-b[242]+b[252]+b[263] == 0.0)
@constraint(m, e37, b[142]+b[153]+b[164]+b[175]+b[186]+b[197]+b[208]+b[219]+b[230]+b[241]-b[243]-b[244]-b[245]-b[246]-b[247]-b[248]-b[249]-b[250]-b[251]-b[252]-b[253]+b[264] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[265])

 
