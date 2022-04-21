using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*b[1]*b[2]-2*b[1]-2*b[2]+2*b[1]*b[136]-2*b[136]+2*b[1]*b[232]-2*b[1]*b[236]+2*b[2]*b[89]-4*b[89]-2*b[2]*b[133]+2*b[133]+2*b[2]*b[233]+2*b[3]*b[14]-2*b[3]-2*b[14]+2*b[3]*b[59]-2*b[59]-2*b[3]*b[243]+2*b[3]*b[260]+2*b[4]*b[78]-2*b[4]-2*b[78]+2*b[4]*b[201]-2*b[201]-2*b[4]*b[255]+2*b[4]*b[256]-2*b[5]*b[34]-2*b[5]+2*b[34]+2*b[5]*b[35]-2*b[35]+2*b[5]*b[76]-2*b[76]+2*b[5]*b[248]+2*b[6]*b[201]-2*b[6]+2*b[6]*b[240]-2*b[6]*b[261]+2*b[6]*b[262]+2*b[7]*b[62]-2*b[7]-2*b[62]-2*b[7]*b[169]+2*b[169]+2*b[7]*b[235]+2*b[7]*b[240]+2*b[8]*b[11]-4*b[8]-4*b[11]+2*b[8]*b[15]-2*b[15]+2*b[8]*b[249]+2*b[8]*b[275]+2*b[9]*b[63]-2*b[9]-2*b[63]+2*b[9]*b[79]-2*b[79]-2*b[9]*b[199]+2*b[199]+2*b[9]*b[235]-2*b[10]*b[145]-2*b[10]+2*b[145]+2*b[10]*b[149]-2*b[149]+2*b[10]*b[172]-4*b[172]+2*b[10]*b[252]+2*b[11]*b[63]+2*b[11]*b[97]-2*b[97]+2*b[11]*b[241]+2*b[12]*b[122]-2*b[12]-2*b[122]-2*b[12]*b[171]+4*b[171]+2*b[12]*b[204]-4*b[204]+2*b[12]*b[245]+2*b[13]*b[17]-2*b[13]-2*b[17]+2*b[13]*b[228]-2*b[228]+2*b[14]*b[15]+2*b[14]*b[60]-2*b[60]-2*b[14]*b[283]+2*b[15]*b[35]-2*b[15]*b[169]+2*b[16]*b[83]-2*b[16]-4*b[83]+2*b[16]*b[106]-2*b[106]-2*b[16]*b[180]+4*b[180]+2*b[16]*b[273]+2*b[17]*b[18]-2*b[18]-2*b[17]*b[42]-2*b[42]+2*b[17]*b[56]-4*b[56]+2*b[18]*b[22]-2*b[22]-2*b[19]*b[197]+2*b[19]-2*b[197]-2*b[19]*b[199]-2*b[19]*b[260]+2*b[19]*b[261]+2*b[20]*b[107]-2*b[20]-4*b[107]+2*b[20]*b[127]-4*b[127]-2*b[20]*b[211]+2*b[211]+2*b[20]*b[277]+2*b[21]*b[30]-2*b[21]-2*b[30]+2*b[21]*b[40]-4*b[40]-2*b[21]*b[68]-2*b[68]+2*b[21]*b[107]+2*b[22]*b[23]-2*b[23]-2*b[22]*b[31]-2*b[31]+2*b[22]*b[73]-4*b[73]+2*b[23]*b[26]-2*b[26]+2*b[24]*b[68]-2*b[24]+2*b[24]*b[128]-4*b[128]+2*b[24]*b[155]-4*b[155]-2*b[24]*b[281]+2*b[25]*b[40]-2*b[25]+2*b[25]*b[53]-4*b[53]+2*b[25]*b[128]-2*b[25]*b[277]+2*b[26]*b[27]-2*b[27]+2*b[26]*b[92]-4*b[92]-2*b[26]*b[288]+2*b[27]*b[32]-4*b[32]+2*b[28]*b[83]-2*b[28]+2*b[28]*b[156]-2*b[156]+2*b[28]*b[181]-4*b[181]-2*b[28]*b[284]+2*b[29]*b[53]-2*b[29]+2*b[29]*b[70]-4*b[70]+2*b[29]*b[156]-2*b[29]*b[273]+2*b[30]*b[216]-4*b[216]-2*b[30]*b[220]+2*b[220]+2*b[30]*b[282]+2*b[31]*b[43]-4*b[43]+2*b[31]*b[55]-4*b[55]+2*b[31]*b[291]+2*b[32]*b[33]-2*b[33]+2*b[32]*b[113]-4*b[113]+2*b[32]*b[288]+2*b[33]*b[43]-2*b[34]*b[295]+2*b[35]*b[96]-2*b[96]-2*b[35]*b[142]-2*b[142]+2*b[36]*b[37]-2*b[36]-2*b[37]+2*b[36]*b[47]-2*b[47]+2*b[36]*b[101]-4*b[101]-2*b[36]*b[257]+2*b[37]*b[48]-2*b[48]+2*b[37]*b[66]-2*b[66]-2*b[37]*b[123]-2*b[123]+2*b[38]*b[107]-4*b[38]+2*b[38]*b[182]-2*b[182]+2*b[38]*b[212]-4*b[212]+2*b[38]*b[284]+2*b[39]*b[70]-4*b[39]+2*b[39]*b[85]-4*b[85]+2*b[39]*b[182]+2*b[39]*b[273]+2*b[40]*b[86]-4*b[86]+2*b[40]*b[278]+2*b[41]*b[42]-4*b[41]+2*b[41]*b[288]+2*b[41]*b[294]+2*b[41]*b[299]+2*b[42]*b[57]-4*b[57]+2*b[42]*b[72]-4*b[72]+2*b[43]*b[44]-2*b[44]+2*b[43]*b[137]-4*b[137]+2*b[44]*b[57]+2*b[45]*b[95]-2*b[45]-2*b[95]+2*b[45]*b[237]+2*b[46]*b[248]-2*b[46]+2*b[46]*b[261]+2*b[46]*b[262]-2*b[46]*b[285]+2*b[47]*b[49]-4*b[49]+2*b[47]*b[122]-2*b[47]*b[152]+4*b[152]+2*b[48]*b[50]-4*b[50]+2*b[48]*b[230]-2*b[48]*b[272]+2*b[49]*b[50]+2*b[49]*b[267]+2*b[49]*b[292]+2*b[50]*b[154]+2*b[154]+2*b[50]*b[229]+2*b[51]*b[128]-2*b[51]+2*b[51]*b[214]-2*b[214]-2*b[51]*b[229]+2*b[51]*b[281]+2*b[52]*b[85]-4*b[52]+2*b[52]*b[109]-4*b[109]+2*b[52]*b[214]+2*b[52]*b[277]+2*b[53]*b[220]+2*b[53]*b[274]+2*b[54]*b[55]-2*b[54]+2*b[54]*b[223]-2*b[223]+2*b[54]*b[291]-2*b[54]*b[303]+2*b[55]*b[56]+2*b[55]*b[90]-2*b[90]+2*b[56]*b[74]-4*b[74]+2*b[56]*b[91]-4*b[91]+2*b[57]*b[58]-2*b[58]+2*b[57]*b[226]-2*b[226]+2*b[58]*b[74]+2*b[59]*b[116]-2*b[116]+2*b[60]*b[140]-2*b[140]-2*b[60]*b[166]+2*b[166]+2*b[60]*b[243]+2*b[61]*b[62]-2*b[61]+2*b[61]*b[254]+2*b[61]*b[255]-2*b[61]*b[289]+2*b[62]*b[80]-2*b[80]-2*b[62]*b[305]-2*b[63]*b[145]+2*b[63]*b[234]+2*b[64]*b[80]-4*b[64]+2*b[64]*b[100]-2*b[100]+2*b[64]*b[145]+2*b[64]*b[249]+2*b[65]*b[67]-2*b[65]-4*b[67]+2*b[65]*b[102]-2*b[102]-2*b[65]*b[178]+4*b[178]+2*b[65]*b[252]+2*b[66]*b[251]+2*b[66]*b[264]-2*b[66]*b[296]+2*b[67]*b[230]+2*b[67]*b[290]+2*b[67]*b[296]+2*b[68]*b[69]-2*b[69]+2*b[68]*b[268]+2*b[69]*b[109]+2*b[69]*b[131]-4*b[131]-2*b[69]*b[215]-2*b[215]+2*b[70]*b[270]+2*b[70]*b[282]+2*b[71]*b[86]-2*b[71]+2*b[71]*b[231]+2*b[71]*b[247]-2*b[71]*b[299]+2*b[72]*b[73]+2*b[72]*b[111]-2*b[111]+2*b[72]*b[299]+2*b[73]*b[93]-4*b[93]+2*b[73]*b[112]-4*b[112]+2*b[74]*b[75]-2*b[75]+2*b[74]*b[193]-2*b[193]+2*b[75]*b[93]+2*b[76]*b[141]-2*b[141]+2*b[77]*b[79]-2*b[77]-2*b[77]*b[166]+2*b[77]*b[250]+2*b[77]*b[260]+2*b[78]*b[96]-2*b[78]*b[98]-2*b[98]+2*b[78]*b[283]+2*b[79]*b[98]-2*b[79]*b[168]+2*b[168]+2*b[80]*b[81]-2*b[81]-2*b[80]*b[262]+2*b[81]*b[98]+2*b[81]*b[120]+2*b[120]-2*b[81]*b[171]-2*b[82]*b[211]+2*b[82]-2*b[82]*b[259]+2*b[82]*b[269]-2*b[82]*b[310]+2*b[83]*b[84]-2*b[84]+2*b[83]*b[216]+2*b[84]*b[131]+2*b[84]*b[158]-4*b[158]-2*b[84]*b[183]-2*b[183]+2*b[85]*b[87]-2*b[87]+2*b[85]*b[278]+2*b[86]*b[89]+2*b[86]*b[219]-4*b[219]+2*b[87]*b[89]+2*b[87]*b[158]-2*b[87]*b[222]+2*b[222]-2*b[88]*b[90]+2*b[88]-2*b[88]*b[220]-2*b[88]*b[231]+2*b[88]*b[242]+2*b[89]*b[90]+2*b[90]*b[91]+2*b[91]*b[92]+2*b[91]*b[134]-2*b[134]+2*b[92]*b[114]-2*b[114]+2*b[92]*b[135]-4*b[135]+2*b[93]*b[94]-2*b[94]+2*b[93]*b[227]-2*b[227]+2*b[94]*b[114]+2*b[95]*b[196]+2*b[196]+2*b[95]*b[285]-2*b[95]*b[300]+2*b[96]*b[97]-2*b[96]*b[196]+2*b[97]*b[118]-2*b[118]-2*b[97]*b[198]+2*b[198]+2*b[98]*b[99]-2*b[99]+2*b[99]*b[118]-2*b[99]*b[203]+2*b[203]+2*b[99]*b[266]+2*b[100]*b[101]-2*b[100]*b[144]-2*b[144]+2*b[100]*b[173]-2*b[173]+2*b[101]*b[103]-2*b[103]+2*b[101]*b[266]+2*b[102]*b[147]-2*b[147]-2*b[102]*b[177]+2*b[177]+2*b[102]*b[271]+2*b[103]*b[174]-2*b[174]+2*b[103]*b[177]-2*b[103]*b[292]-2*b[104]*b[105]+2*b[104]+2*b[105]-2*b[104]*b[244]+2*b[104]*b[253]-2*b[104]*b[290]+2*b[105]*b[106]-2*b[105]*b[281]-2*b[105]*b[314]-2*b[106]*b[253]+2*b[106]*b[315]+2*b[107]*b[108]-2*b[108]+2*b[108]*b[158]+2*b[108]*b[185]-4*b[185]-2*b[108]*b[316]+2*b[109]*b[110]-4*b[110]+2*b[109]*b[274]+2*b[110]*b[185]+2*b[110]*b[222]+2*b[110]*b[307]+2*b[111]*b[112]-2*b[111]*b[246]+2*b[111]*b[307]+2*b[112]*b[113]+2*b[112]*b[162]-2*b[162]+2*b[113]*b[138]-2*b[138]+2*b[113]*b[163]-4*b[163]+2*b[114]*b[115]-2*b[115]-2*b[114]*b[136]+2*b[115]*b[138]+2*b[116]*b[117]-2*b[117]+2*b[116]*b[166]-2*b[116]*b[304]+2*b[117]*b[194]-2*b[194]+2*b[117]*b[198]-2*b[117]*b[283]+2*b[118]*b[119]-2*b[119]-2*b[118]*b[250]+2*b[119]*b[121]-2*b[121]-2*b[119]*b[286]+2*b[119]*b[318]-2*b[120]*b[235]-2*b[120]*b[257]-2*b[120]*b[309]-2*b[121]*b[201]+2*b[121]*b[263]+2*b[121]*b[309]-2*b[122]*b[151]+2*b[151]+2*b[122]*b[173]+2*b[123]*b[151]+2*b[123]*b[206]-2*b[206]+2*b[123]*b[309]-2*b[124]*b[125]+4*b[124]+2*b[125]-2*b[124]*b[251]-2*b[124]*b[253]-2*b[124]*b[287]+2*b[125]*b[127]-2*b[125]*b[284]-2*b[125]*b[320]-2*b[126]*b[213]+2*b[126]-2*b[213]-2*b[126]*b[264]-2*b[126]*b[265]+2*b[126]*b[296]+2*b[127]*b[213]+2*b[127]*b[253]+2*b[128]*b[130]-4*b[130]+2*b[129]*b[130]-4*b[129]+2*b[129]*b[213]+2*b[129]*b[216]+2*b[129]*b[265]+2*b[130]*b[185]+2*b[130]*b[218]-4*b[218]+2*b[131]*b[132]-4*b[132]+2*b[131]*b[270]+2*b[132]*b[188]+2*b[188]+2*b[132]*b[218]+2*b[132]*b[303]-2*b[133]*b[134]+2*b[133]*b[187]-4*b[187]-2*b[133]*b[278]+2*b[134]*b[135]+2*b[134]*b[303]+2*b[135]*b[137]+2*b[135]*b[190]-2*b[190]+2*b[136]*b[164]-4*b[164]+2*b[136]*b[191]-2*b[191]+2*b[137]*b[164]+2*b[137]*b[192]-2*b[192]+2*b[138]*b[139]-2*b[139]-2*b[138]*b[232]+2*b[139]*b[164]+2*b[140]*b[142]+2*b[141]*b[143]-2*b[143]+2*b[141]*b[289]-2*b[141]*b[308]+2*b[142]*b[143]+2*b[142]*b[308]+2*b[143]*b[168]-2*b[143]*b[279]+2*b[144]*b[146]-2*b[146]+2*b[144]*b[318]+2*b[144]*b[321]-2*b[145]*b[148]-2*b[148]+2*b[146]*b[148]-2*b[146]*b[256]+2*b[146]*b[257]-2*b[147]*b[150]-2*b[150]+2*b[147]*b[239]+2*b[147]*b[286]+2*b[148]*b[150]+2*b[148]*b[306]+2*b[149]*b[205]+2*b[205]+2*b[149]*b[251]-2*b[149]*b[276]+2*b[150]*b[276]+2*b[150]*b[292]-2*b[151]*b[178]-2*b[151]*b[320]-2*b[152]*b[153]-2*b[153]-2*b[152]*b[177]-2*b[152]*b[258]+2*b[153]*b[155]+2*b[153]*b[284]+2*b[153]*b[320]-2*b[154]*b[267]-2*b[154]*b[268]-2*b[154]*b[302]+2*b[155]*b[258]+2*b[155]*b[302]+2*b[156]*b[157]-4*b[157]-2*b[156]*b[293]+2*b[157]*b[159]-2*b[159]+2*b[157]*b[218]+2*b[157]*b[316]+2*b[158]*b[160]-4*b[160]+2*b[159]*b[160]+2*b[159]*b[184]-4*b[184]-2*b[159]*b[231]+2*b[160]*b[161]+2*b[161]+2*b[160]*b[298]-2*b[161]*b[162]-2*b[161]*b[236]-2*b[161]*b[274]+2*b[162]*b[163]+2*b[162]*b[298]+2*b[163]*b[224]-2*b[224]+2*b[163]*b[226]+2*b[164]*b[323]+2*b[165]*b[167]-2*b[165]-2*b[167]-2*b[165]*b[260]+2*b[165]*b[304]+2*b[165]*b[317]-2*b[166]*b[305]-2*b[167]*b[275]+2*b[167]*b[305]+2*b[167]*b[311]-2*b[168]*b[289]-2*b[168]*b[322]-2*b[169]*b[200]-2*b[200]+2*b[169]*b[283]+2*b[170]*b[172]-4*b[170]+2*b[170]*b[200]+2*b[170]*b[286]+2*b[170]*b[321]-2*b[171]*b[174]-2*b[171]*b[241]+2*b[172]*b[174]+2*b[172]*b[256]-2*b[173]*b[176]-2*b[176]+2*b[173]*b[234]+2*b[174]*b[176]+2*b[175]*b[244]-2*b[175]+2*b[175]*b[257]+2*b[175]*b[271]-2*b[175]*b[272]+2*b[176]*b[272]+2*b[176]*b[290]-2*b[177]*b[314]-2*b[178]*b[179]-2*b[179]-2*b[178]*b[264]+2*b[179]*b[181]+2*b[179]*b[281]+2*b[179]*b[314]-2*b[180]*b[230]-2*b[180]*b[296]-2*b[180]*b[297]+2*b[181]*b[264]+2*b[181]*b[297]+2*b[182]*b[184]-2*b[182]*b[297]+2*b[183]*b[184]+2*b[183]*b[297]+2*b[183]*b[315]+2*b[184]*b[186]-4*b[186]+2*b[185]*b[187]+2*b[186]*b[187]+2*b[186]*b[217]-4*b[217]+2*b[186]*b[231]+2*b[187]*b[189]-2*b[189]-2*b[188]*b[190]-2*b[188]*b[242]-2*b[188]*b[270]+2*b[189]*b[190]-2*b[189]*b[282]+2*b[189]*b[294]+2*b[190]*b[192]-2*b[191]*b[193]+2*b[191]*b[236]+2*b[191]*b[247]+2*b[192]*b[193]-2*b[192]*b[247]+2*b[193]*b[228]+2*b[194]*b[197]+2*b[194]*b[312]-2*b[194]*b[317]+2*b[195]*b[197]-2*b[195]-2*b[195]*b[254]+2*b[195]*b[300]+2*b[195]*b[313]-2*b[196]*b[295]-2*b[196]*b[301]+2*b[197]*b[301]-2*b[198]*b[285]-2*b[198]*b[319]+2*b[199]*b[279]-2*b[199]*b[280]+2*b[200]*b[202]-4*b[202]+2*b[200]*b[322]+2*b[201]*b[204]+2*b[202]*b[203]+2*b[202]*b[204]+2*b[202]*b[280]-2*b[203]*b[206]-2*b[203]*b[271]+2*b[204]*b[206]-2*b[205]*b[207]-2*b[207]-2*b[205]*b[234]-2*b[205]*b[286]+2*b[206]*b[207]+2*b[207]*b[208]-2*b[208]+2*b[207]*b[287]+2*b[208]*b[209]+2*b[209]-2*b[208]*b[245]+2*b[208]*b[310]-2*b[209]*b[210]-2*b[210]-2*b[209]*b[267]-2*b[209]*b[276]+2*b[210]*b[211]+2*b[210]*b[212]+2*b[210]*b[310]-2*b[211]*b[293]+2*b[212]*b[267]+2*b[212]*b[293]+2*b[213]*b[215]+2*b[214]*b[217]-2*b[214]*b[302]+2*b[215]*b[217]+2*b[215]*b[293]+2*b[216]*b[219]+2*b[217]*b[219]+2*b[218]*b[221]-4*b[221]+2*b[219]*b[221]-2*b[220]*b[223]+2*b[221]*b[223]+2*b[221]*b[246]-2*b[222]*b[224]-2*b[222]*b[247]+2*b[223]*b[224]+2*b[224]*b[225]-2*b[225]+2*b[225]*b[226]+2*b[225]*b[227]-2*b[225]*b[242]-2*b[226]*b[324]-2*b[227]*b[233]+2*b[227]*b[324]+2*b[228]*b[232]-2*b[228]*b[325]-2*b[229]*b[230]+2*b[229]*b[265]-2*b[232]*b[233]+2*b[233]*b[242]-2*b[234]*b[235]+2*b[236]*b[246]-2*b[237]*b[238]-2*b[237]*b[248]+2*b[237]*b[254]+2*b[238]*b[295]-2*b[239]*b[240]+2*b[239]*b[241]-2*b[239]*b[271]-2*b[240]*b[266]-2*b[241]*b[280]-2*b[244]*b[245]+2*b[244]*b[259]+2*b[245]*b[263]-2*b[246]*b[282]-2*b[248]*b[279]-2*b[249]*b[250]-2*b[249]*b[256]+2*b[250]*b[279]-2*b[251]*b[252]-2*b[252]*b[263]-2*b[254]*b[275]+2*b[255]*b[275]-2*b[255]*b[318]+2*b[258]*b[259]-2*b[258]*b[269]-2*b[259]*b[292]-2*b[261]*b[321]-2*b[262]*b[301]-2*b[263]*b[266]-2*b[265]*b[277]+2*b[268]*b[269]-2*b[268]*b[273]-2*b[269]*b[315]-2*b[270]*b[307]+2*b[272]*b[314]-2*b[274]*b[303]+2*b[276]*b[320]-2*b[278]*b[298]+2*b[280]*b[319]+2*b[285]*b[311]+2*b[287]*b[306]-2*b[287]*b[310]-2*b[288]*b[291]+2*b[289]*b[295]-2*b[290]*b[306]-2*b[291]*b[294]-2*b[294]*b[298]-2*b[299]*b[307]+2*b[301]*b[319]+2*b[302]*b[316]+2*b[305]*b[322]-2*b[306]*b[309]-2*b[311]*b[312]-2*b[311]*b[313]-2*b[315]*b[316]-2*b[318]*b[319]-2*b[321]*b[322]-2*b[323]*b[324]+2*b[324]*b[325]+objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 