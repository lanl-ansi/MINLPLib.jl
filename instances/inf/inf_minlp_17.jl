using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 321]
@variable(m, x[x_Idx])
b_Idx = Any[322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421]
@variable(m, b[b_Idx], Bin)
i_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320]
@variable(m, i[i_Idx] <= 100, Int)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.00169801818042663* (x[1])^2*(i[221]+i[222]+i[223]+i[224]+i[225]+i[226]+i[227]+i[228]+i[229]+i[230])+0.000753242684069343* (x[2])^2*(i[231]+i[232]+i[233]+i[234]+i[235]+i[236]+i[237]+i[238]+i[239]+i[240])+0.000994616250054855* (x[3])^2*(i[241]+i[242]+i[243]+i[244]+i[245]+i[246]+i[247]+i[248]+i[249]+i[250])+0.00136751819880638* (x[4])^2*(i[251]+i[252]+i[253]+i[254]+i[255]+i[256]+i[257]+i[258]+i[259]+i[260])+0.00138612947339426* (x[5])^2*(i[261]+i[262]+i[263]+i[264]+i[265]+i[266]+i[267]+i[268]+i[269]+i[270])+0.00154689053618785* (x[6])^2*(i[271]+i[272]+i[273]+i[274]+i[275]+i[276]+i[277]+i[278]+i[279]+i[280])+0.00127418798311213* (x[7])^2*(i[281]+i[282]+i[283]+i[284]+i[285]+i[286]+i[287]+i[288]+i[289]+i[290])+0.000745213466869677* (x[8])^2*(i[291]+i[292]+i[293]+i[294]+i[295]+i[296]+i[297]+i[298]+i[299]+i[300])+0.00211048340393802* (x[9])^2*(i[301]+i[302]+i[303]+i[304]+i[305]+i[306]+i[307]+i[308]+i[309]+i[310])+0.00105237487048658* (x[10])^2*(i[311]+i[312]+i[313]+i[314]+i[315]+i[316]+i[317]+i[318]+i[319]+i[320]))+x[321] == 0.0)
@constraint(m, e2, i[22]+i[23]+i[24]+i[25]+i[26]+i[27]+i[28]+i[29]+i[30]-i[31]-i[41]-i[51]-i[61]-i[71]-i[81]-i[91]-i[101]-i[111] == -10.0)
@constraint(m, e3, -i[22]+i[31]+i[33]+i[34]+i[35]+i[36]+i[37]+i[38]+i[39]+i[40]-i[42]-i[52]-i[62]-i[72]-i[82]-i[92]-i[102]-i[112] == -10.0)
@constraint(m, e4, -i[23]-i[33]+i[41]+i[42]+i[44]+i[45]+i[46]+i[47]+i[48]+i[49]+i[50]-i[53]-i[63]-i[73]-i[83]-i[93]-i[103]-i[113] == -10.0)
@constraint(m, e5, -i[24]-i[34]-i[44]+i[51]+i[52]+i[53]+i[55]+i[56]+i[57]+i[58]+i[59]+i[60]-i[64]-i[74]-i[84]-i[94]-i[104]-i[114] == -10.0)
@constraint(m, e6, -i[25]-i[35]-i[45]-i[55]+i[61]+i[62]+i[63]+i[64]+i[66]+i[67]+i[68]+i[69]+i[70]-i[75]-i[85]-i[95]-i[105]-i[115] == -10.0)
@constraint(m, e7, -i[26]-i[36]-i[46]-i[56]-i[66]+i[71]+i[72]+i[73]+i[74]+i[75]+i[77]+i[78]+i[79]+i[80]-i[86]-i[96]-i[106]-i[116] == 0.0)
@constraint(m, e8, -i[27]-i[37]-i[47]-i[57]-i[67]-i[77]+i[81]+i[82]+i[83]+i[84]+i[85]+i[86]+i[88]+i[89]+i[90]-i[97]-i[107]-i[117] == 0.0)
@constraint(m, e9, -i[28]-i[38]-i[48]-i[58]-i[68]-i[78]-i[88]+i[91]+i[92]+i[93]+i[94]+i[95]+i[96]+i[97]+i[99]+i[100]-i[108]-i[118] == 0.0)
@constraint(m, e10, -i[29]-i[39]-i[49]-i[59]-i[69]-i[79]-i[89]-i[99]+i[101]+i[102]+i[103]+i[104]+i[105]+i[106]+i[107]+i[108]+i[110]-i[119] == 25.0)
@constraint(m, e11, -i[30]-i[40]-i[50]-i[60]-i[70]-i[80]-i[90]-i[100]-i[110]+i[111]+i[112]+i[113]+i[114]+i[115]+i[116]+i[117]+i[118]+i[119] == 25.0)
@constraint(m, e12, i[122]+i[123]+i[124]+i[125]+i[126]+i[127]+i[128]+i[129]+i[130]-i[131]-i[141]-i[151]-i[161]-i[171]-i[181]-i[191]-i[201]-i[211] == 10.0)
@constraint(m, e13, -i[122]+i[131]+i[133]+i[134]+i[135]+i[136]+i[137]+i[138]+i[139]+i[140]-i[142]-i[152]-i[162]-i[172]-i[182]-i[192]-i[202]-i[212] == 10.0)
@constraint(m, e14, -i[123]-i[133]+i[141]+i[142]+i[144]+i[145]+i[146]+i[147]+i[148]+i[149]+i[150]-i[153]-i[163]-i[173]-i[183]-i[193]-i[203]-i[213] == 10.0)
@constraint(m, e15, -i[124]-i[134]-i[144]+i[151]+i[152]+i[153]+i[155]+i[156]+i[157]+i[158]+i[159]+i[160]-i[164]-i[174]-i[184]-i[194]-i[204]-i[214] == 10.0)
@constraint(m, e16, -i[125]-i[135]-i[145]-i[155]+i[161]+i[162]+i[163]+i[164]+i[166]+i[167]+i[168]+i[169]+i[170]-i[175]-i[185]-i[195]-i[205]-i[215] == 10.0)
@constraint(m, e17, -i[126]-i[136]-i[146]-i[156]-i[166]+i[171]+i[172]+i[173]+i[174]+i[175]+i[177]+i[178]+i[179]+i[180]-i[186]-i[196]-i[206]-i[216] == 0.0)
@constraint(m, e18, -i[127]-i[137]-i[147]-i[157]-i[167]-i[177]+i[181]+i[182]+i[183]+i[184]+i[185]+i[186]+i[188]+i[189]+i[190]-i[197]-i[207]-i[217] == 0.0)
@constraint(m, e19, -i[128]-i[138]-i[148]-i[158]-i[168]-i[178]-i[188]+i[191]+i[192]+i[193]+i[194]+i[195]+i[196]+i[197]+i[199]+i[200]-i[208]-i[218] == 0.0)
@constraint(m, e20, -i[129]-i[139]-i[149]-i[159]-i[169]-i[179]-i[189]-i[199]+i[201]+i[202]+i[203]+i[204]+i[205]+i[206]+i[207]+i[208]+i[210]-i[219] == -25.0)
@constraint(m, e21, -i[130]-i[140]-i[150]-i[160]-i[170]-i[180]-i[190]-i[200]-i[210]+i[211]+i[212]+i[213]+i[214]+i[215]+i[216]+i[217]+i[218]+i[219] == -25.0)
@NLconstraint(m, e22, (1+sqrt(x[11])+log10(1+x[11]))*i[221]-480*b[322] <= 0.0)
@NLconstraint(m, e23, (1+sqrt(x[11])+log10(1+x[11]))*i[222]-480*b[323] <= 0.0)
@NLconstraint(m, e24, (1+sqrt(x[11])+log10(1+x[11]))*i[223]-480*b[324] <= 0.0)
@NLconstraint(m, e25, (1+sqrt(x[11])+log10(1+x[11]))*i[224]-480*b[325] <= 0.0)
@NLconstraint(m, e26, (1+sqrt(x[11])+log10(1+x[11]))*i[225]-480*b[326] <= 0.0)
@NLconstraint(m, e27, (1+sqrt(x[11])+log10(1+x[11]))*i[226]-480*b[327] <= 0.0)
@NLconstraint(m, e28, (1+sqrt(x[11])+log10(1+x[11]))*i[227]-480*b[328] <= 0.0)
@NLconstraint(m, e29, (1+sqrt(x[11])+log10(1+x[11]))*i[228]-480*b[329] <= 0.0)
@NLconstraint(m, e30, (1+sqrt(x[11])+log10(1+x[11]))*i[229]-480*b[330] <= 0.0)
@NLconstraint(m, e31, (1+sqrt(x[11])+log10(1+x[11]))*i[230]-480*b[331] <= 0.0)
@NLconstraint(m, e32, (1+sqrt(x[12])+log10(1+x[12]))*i[231]-480*b[332] <= 0.0)
@NLconstraint(m, e33, (1+sqrt(x[12])+log10(1+x[12]))*i[232]-480*b[333] <= 0.0)
@NLconstraint(m, e34, (1+sqrt(x[12])+log10(1+x[12]))*i[233]-480*b[334] <= 0.0)
@NLconstraint(m, e35, (1+sqrt(x[12])+log10(1+x[12]))*i[234]-480*b[335] <= 0.0)
@NLconstraint(m, e36, (1+sqrt(x[12])+log10(1+x[12]))*i[235]-480*b[336] <= 0.0)
@NLconstraint(m, e37, (1+sqrt(x[12])+log10(1+x[12]))*i[236]-480*b[337] <= 0.0)
@NLconstraint(m, e38, (1+sqrt(x[12])+log10(1+x[12]))*i[237]-480*b[338] <= 0.0)
@NLconstraint(m, e39, (1+sqrt(x[12])+log10(1+x[12]))*i[238]-480*b[339] <= 0.0)
@NLconstraint(m, e40, (1+sqrt(x[12])+log10(1+x[12]))*i[239]-480*b[340] <= 0.0)
@NLconstraint(m, e41, (1+sqrt(x[12])+log10(1+x[12]))*i[240]-480*b[341] <= 0.0)
@NLconstraint(m, e42, (1+sqrt(x[13])+log10(1+x[13]))*i[241]-480*b[342] <= 0.0)
@NLconstraint(m, e43, (1+sqrt(x[13])+log10(1+x[13]))*i[242]-480*b[343] <= 0.0)
@NLconstraint(m, e44, (1+sqrt(x[13])+log10(1+x[13]))*i[243]-480*b[344] <= 0.0)
@NLconstraint(m, e45, (1+sqrt(x[13])+log10(1+x[13]))*i[244]-480*b[345] <= 0.0)
@NLconstraint(m, e46, (1+sqrt(x[13])+log10(1+x[13]))*i[245]-480*b[346] <= 0.0)
@NLconstraint(m, e47, (1+sqrt(x[13])+log10(1+x[13]))*i[246]-480*b[347] <= 0.0)
@NLconstraint(m, e48, (1+sqrt(x[13])+log10(1+x[13]))*i[247]-480*b[348] <= 0.0)
@NLconstraint(m, e49, (1+sqrt(x[13])+log10(1+x[13]))*i[248]-480*b[349] <= 0.0)
@NLconstraint(m, e50, (1+sqrt(x[13])+log10(1+x[13]))*i[249]-480*b[350] <= 0.0)
@NLconstraint(m, e51, (1+sqrt(x[13])+log10(1+x[13]))*i[250]-480*b[351] <= 0.0)
@NLconstraint(m, e52, (1+sqrt(x[14])+log10(1+x[14]))*i[251]-480*b[352] <= 0.0)
@NLconstraint(m, e53, (1+sqrt(x[14])+log10(1+x[14]))*i[252]-480*b[353] <= 0.0)
@NLconstraint(m, e54, (1+sqrt(x[14])+log10(1+x[14]))*i[253]-480*b[354] <= 0.0)
@NLconstraint(m, e55, (1+sqrt(x[14])+log10(1+x[14]))*i[254]-480*b[355] <= 0.0)
@NLconstraint(m, e56, (1+sqrt(x[14])+log10(1+x[14]))*i[255]-480*b[356] <= 0.0)
@NLconstraint(m, e57, (1+sqrt(x[14])+log10(1+x[14]))*i[256]-480*b[357] <= 0.0)
@NLconstraint(m, e58, (1+sqrt(x[14])+log10(1+x[14]))*i[257]-480*b[358] <= 0.0)
@NLconstraint(m, e59, (1+sqrt(x[14])+log10(1+x[14]))*i[258]-480*b[359] <= 0.0)
@NLconstraint(m, e60, (1+sqrt(x[14])+log10(1+x[14]))*i[259]-480*b[360] <= 0.0)
@NLconstraint(m, e61, (1+sqrt(x[14])+log10(1+x[14]))*i[260]-480*b[361] <= 0.0)
@NLconstraint(m, e62, (1+sqrt(x[15])+log10(1+x[15]))*i[261]-480*b[362] <= 0.0)
@NLconstraint(m, e63, (1+sqrt(x[15])+log10(1+x[15]))*i[262]-480*b[363] <= 0.0)
@NLconstraint(m, e64, (1+sqrt(x[15])+log10(1+x[15]))*i[263]-480*b[364] <= 0.0)
@NLconstraint(m, e65, (1+sqrt(x[15])+log10(1+x[15]))*i[264]-480*b[365] <= 0.0)
@NLconstraint(m, e66, (1+sqrt(x[15])+log10(1+x[15]))*i[265]-480*b[366] <= 0.0)
@NLconstraint(m, e67, (1+sqrt(x[15])+log10(1+x[15]))*i[266]-480*b[367] <= 0.0)
@NLconstraint(m, e68, (1+sqrt(x[15])+log10(1+x[15]))*i[267]-480*b[368] <= 0.0)
@NLconstraint(m, e69, (1+sqrt(x[15])+log10(1+x[15]))*i[268]-480*b[369] <= 0.0)
@NLconstraint(m, e70, (1+sqrt(x[15])+log10(1+x[15]))*i[269]-480*b[370] <= 0.0)
@NLconstraint(m, e71, (1+sqrt(x[15])+log10(1+x[15]))*i[270]-480*b[371] <= 0.0)
@NLconstraint(m, e72, (1+sqrt(x[16])+log10(1+x[16]))*i[271]-480*b[372] <= 0.0)
@NLconstraint(m, e73, (1+sqrt(x[16])+log10(1+x[16]))*i[272]-480*b[373] <= 0.0)
@NLconstraint(m, e74, (1+sqrt(x[16])+log10(1+x[16]))*i[273]-480*b[374] <= 0.0)
@NLconstraint(m, e75, (1+sqrt(x[16])+log10(1+x[16]))*i[274]-480*b[375] <= 0.0)
@NLconstraint(m, e76, (1+sqrt(x[16])+log10(1+x[16]))*i[275]-480*b[376] <= 0.0)
@NLconstraint(m, e77, (1+sqrt(x[16])+log10(1+x[16]))*i[276]-480*b[377] <= 0.0)
@NLconstraint(m, e78, (1+sqrt(x[16])+log10(1+x[16]))*i[277]-480*b[378] <= 0.0)
@NLconstraint(m, e79, (1+sqrt(x[16])+log10(1+x[16]))*i[278]-480*b[379] <= 0.0)
@NLconstraint(m, e80, (1+sqrt(x[16])+log10(1+x[16]))*i[279]-480*b[380] <= 0.0)
@NLconstraint(m, e81, (1+sqrt(x[16])+log10(1+x[16]))*i[280]-480*b[381] <= 0.0)
@NLconstraint(m, e82, (1+sqrt(x[17])+log10(1+x[17]))*i[281]-480*b[382] <= 0.0)
@NLconstraint(m, e83, (1+sqrt(x[17])+log10(1+x[17]))*i[282]-480*b[383] <= 0.0)
@NLconstraint(m, e84, (1+sqrt(x[17])+log10(1+x[17]))*i[283]-480*b[384] <= 0.0)
@NLconstraint(m, e85, (1+sqrt(x[17])+log10(1+x[17]))*i[284]-480*b[385] <= 0.0)
@NLconstraint(m, e86, (1+sqrt(x[17])+log10(1+x[17]))*i[285]-480*b[386] <= 0.0)
@NLconstraint(m, e87, (1+sqrt(x[17])+log10(1+x[17]))*i[286]-480*b[387] <= 0.0)
@NLconstraint(m, e88, (1+sqrt(x[17])+log10(1+x[17]))*i[287]-480*b[388] <= 0.0)
@NLconstraint(m, e89, (1+sqrt(x[17])+log10(1+x[17]))*i[288]-480*b[389] <= 0.0)
@NLconstraint(m, e90, (1+sqrt(x[17])+log10(1+x[17]))*i[289]-480*b[390] <= 0.0)
@NLconstraint(m, e91, (1+sqrt(x[17])+log10(1+x[17]))*i[290]-480*b[391] <= 0.0)
@NLconstraint(m, e92, (1+sqrt(x[18])+log10(1+x[18]))*i[291]-480*b[392] <= 0.0)
@NLconstraint(m, e93, (1+sqrt(x[18])+log10(1+x[18]))*i[292]-480*b[393] <= 0.0)
@NLconstraint(m, e94, (1+sqrt(x[18])+log10(1+x[18]))*i[293]-480*b[394] <= 0.0)
@NLconstraint(m, e95, (1+sqrt(x[18])+log10(1+x[18]))*i[294]-480*b[395] <= 0.0)
@NLconstraint(m, e96, (1+sqrt(x[18])+log10(1+x[18]))*i[295]-480*b[396] <= 0.0)
@NLconstraint(m, e97, (1+sqrt(x[18])+log10(1+x[18]))*i[296]-480*b[397] <= 0.0)
@NLconstraint(m, e98, (1+sqrt(x[18])+log10(1+x[18]))*i[297]-480*b[398] <= 0.0)
@NLconstraint(m, e99, (1+sqrt(x[18])+log10(1+x[18]))*i[298]-480*b[399] <= 0.0)
@NLconstraint(m, e100, (1+sqrt(x[18])+log10(1+x[18]))*i[299]-480*b[400] <= 0.0)
@NLconstraint(m, e101, (1+sqrt(x[18])+log10(1+x[18]))*i[300]-480*b[401] <= 0.0)
@NLconstraint(m, e102, (1+sqrt(x[19])+log10(1+x[19]))*i[301]-480*b[402] <= 0.0)
@NLconstraint(m, e103, (1+sqrt(x[19])+log10(1+x[19]))*i[302]-480*b[403] <= 0.0)
@NLconstraint(m, e104, (1+sqrt(x[19])+log10(1+x[19]))*i[303]-480*b[404] <= 0.0)
@NLconstraint(m, e105, (1+sqrt(x[19])+log10(1+x[19]))*i[304]-480*b[405] <= 0.0)
@NLconstraint(m, e106, (1+sqrt(x[19])+log10(1+x[19]))*i[305]-480*b[406] <= 0.0)
@NLconstraint(m, e107, (1+sqrt(x[19])+log10(1+x[19]))*i[306]-480*b[407] <= 0.0)
@NLconstraint(m, e108, (1+sqrt(x[19])+log10(1+x[19]))*i[307]-480*b[408] <= 0.0)
@NLconstraint(m, e109, (1+sqrt(x[19])+log10(1+x[19]))*i[308]-480*b[409] <= 0.0)
@NLconstraint(m, e110, (1+sqrt(x[19])+log10(1+x[19]))*i[309]-480*b[410] <= 0.0)
@NLconstraint(m, e111, (1+sqrt(x[19])+log10(1+x[19]))*i[310]-480*b[411] <= 0.0)
@NLconstraint(m, e112, (1+sqrt(x[20])+log10(1+x[20]))*i[311]-480*b[412] <= 0.0)
@NLconstraint(m, e113, (1+sqrt(x[20])+log10(1+x[20]))*i[312]-480*b[413] <= 0.0)
@NLconstraint(m, e114, (1+sqrt(x[20])+log10(1+x[20]))*i[313]-480*b[414] <= 0.0)
@NLconstraint(m, e115, (1+sqrt(x[20])+log10(1+x[20]))*i[314]-480*b[415] <= 0.0)
@NLconstraint(m, e116, (1+sqrt(x[20])+log10(1+x[20]))*i[315]-480*b[416] <= 0.0)
@NLconstraint(m, e117, (1+sqrt(x[20])+log10(1+x[20]))*i[316]-480*b[417] <= 0.0)
@NLconstraint(m, e118, (1+sqrt(x[20])+log10(1+x[20]))*i[317]-480*b[418] <= 0.0)
@NLconstraint(m, e119, (1+sqrt(x[20])+log10(1+x[20]))*i[318]-480*b[419] <= 0.0)
@NLconstraint(m, e120, (1+sqrt(x[20])+log10(1+x[20]))*i[319]-480*b[420] <= 0.0)
@NLconstraint(m, e121, (1+sqrt(x[20])+log10(1+x[20]))*i[320]-480*b[421] <= 0.0)
@constraint(m, e122, x[1] <= 10.0)
@constraint(m, e123, x[2] <= 10.0)
@constraint(m, e124, x[3] <= 10.0)
@constraint(m, e125, x[4] <= 10.0)
@constraint(m, e126, x[5] <= 10.0)
@constraint(m, e127, x[6] <= 10.0)
@constraint(m, e128, x[7] <= 10.0)
@constraint(m, e129, x[8] <= 10.0)
@constraint(m, e130, x[9] <= 10.0)
@constraint(m, e131, x[10] <= 10.0)
@constraint(m, e132, x[1] >= 0.0)
@constraint(m, e133, x[1]-12.1645012980516*b[323] >= 0.0)
@constraint(m, e134, x[1]-6.62115056255946*b[324] >= 0.0)
@constraint(m, e135, x[1]-9.15063001776967*b[325] >= 0.0)
@constraint(m, e136, x[1]-26.0202389898839*b[326] >= 0.0)
@constraint(m, e137, x[1]-17.1681999614197*b[327] >= 0.0)
@constraint(m, e138, x[1]-24.6049368907069*b[328] >= 0.0)
@constraint(m, e139, x[1]-23.4383235495959*b[329] >= 0.0)
@constraint(m, e140, x[1]-15.3878367211138*b[330] >= 0.0)
@constraint(m, e141, x[1]-16.4007987207239*b[331] >= 0.0)
@constraint(m, e142, x[2]-12.1645012980516*b[332] >= 0.0)
@constraint(m, e143, x[2] >= 0.0)
@constraint(m, e144, x[2]-13.5542471197324*b[334] >= 0.0)
@constraint(m, e145, x[2]-7.90036586680024*b[335] >= 0.0)
@constraint(m, e146, x[2]-14.7081400872086*b[336] >= 0.0)
@constraint(m, e147, x[2]-14.0161204381721*b[337] >= 0.0)
@constraint(m, e148, x[2]-12.6505229779003*b[338] >= 0.0)
@constraint(m, e149, x[2]-13.1875994257044*b[339] >= 0.0)
@constraint(m, e150, x[2]-12.5829366783861*b[340] >= 0.0)
@constraint(m, e151, x[2]-4.38275954604265*b[341] >= 0.0)
@constraint(m, e152, x[3]-6.62115056255946*b[342] >= 0.0)
@constraint(m, e153, x[3]-13.5542471197324*b[343] >= 0.0)
@constraint(m, e154, x[3] >= 0.0)
@constraint(m, e155, x[3]-6.65949948634128*b[345] >= 0.0)
@constraint(m, e156, x[3]-28.2623695410545*b[346] >= 0.0)
@constraint(m, e157, x[3]-22.698944228859*b[347] >= 0.0)
@constraint(m, e158, x[3]-24.2882416211071*b[348] >= 0.0)
@constraint(m, e159, x[3]-26.4929604485485*b[349] >= 0.0)
@constraint(m, e160, x[3]-20.892547938886*b[350] >= 0.0)
@constraint(m, e161, x[3]-16.8731443068081*b[351] >= 0.0)
@constraint(m, e162, x[4]-9.15063001776967*b[352] >= 0.0)
@constraint(m, e163, x[4]-7.90036586680024*b[353] >= 0.0)
@constraint(m, e164, x[4]-6.65949948634128*b[354] >= 0.0)
@constraint(m, e165, x[4] >= 0.0)
@constraint(m, e166, x[4]-22.3054476460807*b[356] >= 0.0)
@constraint(m, e167, x[4]-20.0601709417017*b[357] >= 0.0)
@constraint(m, e168, x[4]-17.6352748939505*b[358] >= 0.0)
@constraint(m, e169, x[4]-21.0763391941002*b[359] >= 0.0)
@constraint(m, e170, x[4]-18.3476129832667*b[360] >= 0.0)
@constraint(m, e171, x[4]-10.4737546069626*b[361] >= 0.0)
@constraint(m, e172, x[5]-26.0202389898839*b[362] >= 0.0)
@constraint(m, e173, x[5]-14.7081400872086*b[363] >= 0.0)
@constraint(m, e174, x[5]-28.2623695410545*b[364] >= 0.0)
@constraint(m, e175, x[5]-22.3054476460807*b[365] >= 0.0)
@constraint(m, e176, x[5] >= 0.0)
@constraint(m, e177, x[5]-16.3423404595226*b[367] >= 0.0)
@constraint(m, e178, x[5]-10.4242111076259*b[368] >= 0.0)
@constraint(m, e179, x[5]-4.11393953062136*b[369] >= 0.0)
@constraint(m, e180, x[5]-16.5216395880375*b[370] >= 0.0)
@constraint(m, e181, x[5]-12.1074477838077*b[371] >= 0.0)
@constraint(m, e182, x[6]-17.1681999614197*b[372] >= 0.0)
@constraint(m, e183, x[6]-14.0161204381721*b[373] >= 0.0)
@constraint(m, e184, x[6]-22.698944228859*b[374] >= 0.0)
@constraint(m, e185, x[6]-20.0601709417017*b[375] >= 0.0)
@constraint(m, e186, x[6]-16.3423404595226*b[376] >= 0.0)
@constraint(m, e187, x[6] >= 0.0)
@constraint(m, e188, x[6]-22.2882573703201*b[378] >= 0.0)
@constraint(m, e189, x[6]-12.2726968136939*b[379] >= 0.0)
@constraint(m, e190, x[6]-1.80688600854726*b[380] >= 0.0)
@constraint(m, e191, x[6]-16.3982121428862*b[381] >= 0.0)
@constraint(m, e192, x[7]-24.6049368907069*b[382] >= 0.0)
@constraint(m, e193, x[7]-12.6505229779003*b[383] >= 0.0)
@constraint(m, e194, x[7]-24.2882416211071*b[384] >= 0.0)
@constraint(m, e195, x[7]-17.6352748939505*b[385] >= 0.0)
@constraint(m, e196, x[7]-10.4242111076259*b[386] >= 0.0)
@constraint(m, e197, x[7]-22.2882573703201*b[387] >= 0.0)
@constraint(m, e198, x[7] >= 0.0)
@constraint(m, e199, x[7]-12.8831791484973*b[389] >= 0.0)
@constraint(m, e200, x[7]-21.6350485033031*b[390] >= 0.0)
@constraint(m, e201, x[7]-8.27354051806977*b[391] >= 0.0)
@constraint(m, e202, x[8]-23.4383235495959*b[392] >= 0.0)
@constraint(m, e203, x[8]-13.1875994257044*b[393] >= 0.0)
@constraint(m, e204, x[8]-26.4929604485485*b[394] >= 0.0)
@constraint(m, e205, x[8]-21.0763391941002*b[395] >= 0.0)
@constraint(m, e206, x[8]-4.11393953062136*b[396] >= 0.0)
@constraint(m, e207, x[8]-12.2726968136939*b[397] >= 0.0)
@constraint(m, e208, x[8]-12.8831791484973*b[398] >= 0.0)
@constraint(m, e209, x[8] >= 0.0)
@constraint(m, e210, x[8]-12.5594047622998*b[400] >= 0.0)
@constraint(m, e211, x[8]-11.7950582153734*b[401] >= 0.0)
@constraint(m, e212, x[9]-15.3878367211138*b[402] >= 0.0)
@constraint(m, e213, x[9]-12.5829366783861*b[403] >= 0.0)
@constraint(m, e214, x[9]-20.892547938886*b[404] >= 0.0)
@constraint(m, e215, x[9]-18.3476129832667*b[405] >= 0.0)
@constraint(m, e216, x[9]-16.5216395880375*b[406] >= 0.0)
@constraint(m, e217, x[9]-1.80688600854726*b[407] >= 0.0)
@constraint(m, e218, x[9]-21.6350485033031*b[408] >= 0.0)
@constraint(m, e219, x[9]-12.5594047622998*b[409] >= 0.0)
@constraint(m, e220, x[9] >= 0.0)
@constraint(m, e221, x[9]-15.2774687243982*b[411] >= 0.0)
@constraint(m, e222, x[10]-16.4007987207239*b[412] >= 0.0)
@constraint(m, e223, x[10]-4.38275954604265*b[413] >= 0.0)
@constraint(m, e224, x[10]-16.8731443068081*b[414] >= 0.0)
@constraint(m, e225, x[10]-10.4737546069626*b[415] >= 0.0)
@constraint(m, e226, x[10]-12.1074477838077*b[416] >= 0.0)
@constraint(m, e227, x[10]-16.3982121428862*b[417] >= 0.0)
@constraint(m, e228, x[10]-8.27354051806977*b[418] >= 0.0)
@constraint(m, e229, x[10]-11.7950582153734*b[419] >= 0.0)
@constraint(m, e230, x[10]-15.2774687243982*b[420] >= 0.0)
@constraint(m, e231, x[10] >= 0.0)
@constraint(m, e232, i[21]-i[221] <= 0.0)
@constraint(m, e233, i[22]-i[222] <= 0.0)
@constraint(m, e234, i[23]-i[223] <= 0.0)
@constraint(m, e235, i[24]-i[224] <= 0.0)
@constraint(m, e236, i[25]-i[225] <= 0.0)
@constraint(m, e237, i[26]-i[226] <= 0.0)
@constraint(m, e238, i[27]-i[227] <= 0.0)
@constraint(m, e239, i[28]-i[228] <= 0.0)
@constraint(m, e240, i[29]-i[229] <= 0.0)
@constraint(m, e241, i[30]-i[230] <= 0.0)
@constraint(m, e242, i[31]-i[231] <= 0.0)
@constraint(m, e243, i[32]-i[232] <= 0.0)
@constraint(m, e244, i[33]-i[233] <= 0.0)
@constraint(m, e245, i[34]-i[234] <= 0.0)
@constraint(m, e246, i[35]-i[235] <= 0.0)
@constraint(m, e247, i[36]-i[236] <= 0.0)
@constraint(m, e248, i[37]-i[237] <= 0.0)
@constraint(m, e249, i[38]-i[238] <= 0.0)
@constraint(m, e250, i[39]-i[239] <= 0.0)
@constraint(m, e251, i[40]-i[240] <= 0.0)
@constraint(m, e252, i[41]-i[241] <= 0.0)
@constraint(m, e253, i[42]-i[242] <= 0.0)
@constraint(m, e254, i[43]-i[243] <= 0.0)
@constraint(m, e255, i[44]-i[244] <= 0.0)
@constraint(m, e256, i[45]-i[245] <= 0.0)
@constraint(m, e257, i[46]-i[246] <= 0.0)
@constraint(m, e258, i[47]-i[247] <= 0.0)
@constraint(m, e259, i[48]-i[248] <= 0.0)
@constraint(m, e260, i[49]-i[249] <= 0.0)
@constraint(m, e261, i[50]-i[250] <= 0.0)
@constraint(m, e262, i[51]-i[251] <= 0.0)
@constraint(m, e263, i[52]-i[252] <= 0.0)
@constraint(m, e264, i[53]-i[253] <= 0.0)
@constraint(m, e265, i[54]-i[254] <= 0.0)
@constraint(m, e266, i[55]-i[255] <= 0.0)
@constraint(m, e267, i[56]-i[256] <= 0.0)
@constraint(m, e268, i[57]-i[257] <= 0.0)
@constraint(m, e269, i[58]-i[258] <= 0.0)
@constraint(m, e270, i[59]-i[259] <= 0.0)
@constraint(m, e271, i[60]-i[260] <= 0.0)
@constraint(m, e272, i[61]-i[261] <= 0.0)
@constraint(m, e273, i[62]-i[262] <= 0.0)
@constraint(m, e274, i[63]-i[263] <= 0.0)
@constraint(m, e275, i[64]-i[264] <= 0.0)
@constraint(m, e276, i[65]-i[265] <= 0.0)
@constraint(m, e277, i[66]-i[266] <= 0.0)
@constraint(m, e278, i[67]-i[267] <= 0.0)
@constraint(m, e279, i[68]-i[268] <= 0.0)
@constraint(m, e280, i[69]-i[269] <= 0.0)
@constraint(m, e281, i[70]-i[270] <= 0.0)
@constraint(m, e282, i[71]-i[271] <= 0.0)
@constraint(m, e283, i[72]-i[272] <= 0.0)
@constraint(m, e284, i[73]-i[273] <= 0.0)
@constraint(m, e285, i[74]-i[274] <= 0.0)
@constraint(m, e286, i[75]-i[275] <= 0.0)
@constraint(m, e287, i[76]-i[276] <= 0.0)
@constraint(m, e288, i[77]-i[277] <= 0.0)
@constraint(m, e289, i[78]-i[278] <= 0.0)
@constraint(m, e290, i[79]-i[279] <= 0.0)
@constraint(m, e291, i[80]-i[280] <= 0.0)
@constraint(m, e292, i[81]-i[281] <= 0.0)
@constraint(m, e293, i[82]-i[282] <= 0.0)
@constraint(m, e294, i[83]-i[283] <= 0.0)
@constraint(m, e295, i[84]-i[284] <= 0.0)
@constraint(m, e296, i[85]-i[285] <= 0.0)
@constraint(m, e297, i[86]-i[286] <= 0.0)
@constraint(m, e298, i[87]-i[287] <= 0.0)
@constraint(m, e299, i[88]-i[288] <= 0.0)
@constraint(m, e300, i[89]-i[289] <= 0.0)
@constraint(m, e301, i[90]-i[290] <= 0.0)
@constraint(m, e302, i[91]-i[291] <= 0.0)
@constraint(m, e303, i[92]-i[292] <= 0.0)
@constraint(m, e304, i[93]-i[293] <= 0.0)
@constraint(m, e305, i[94]-i[294] <= 0.0)
@constraint(m, e306, i[95]-i[295] <= 0.0)
@constraint(m, e307, i[96]-i[296] <= 0.0)
@constraint(m, e308, i[97]-i[297] <= 0.0)
@constraint(m, e309, i[98]-i[298] <= 0.0)
@constraint(m, e310, i[99]-i[299] <= 0.0)
@constraint(m, e311, i[100]-i[300] <= 0.0)
@constraint(m, e312, i[101]-i[301] <= 0.0)
@constraint(m, e313, i[102]-i[302] <= 0.0)
@constraint(m, e314, i[103]-i[303] <= 0.0)
@constraint(m, e315, i[104]-i[304] <= 0.0)
@constraint(m, e316, i[105]-i[305] <= 0.0)
@constraint(m, e317, i[106]-i[306] <= 0.0)
@constraint(m, e318, i[107]-i[307] <= 0.0)
@constraint(m, e319, i[108]-i[308] <= 0.0)
@constraint(m, e320, i[109]-i[309] <= 0.0)
@constraint(m, e321, i[110]-i[310] <= 0.0)
@constraint(m, e322, i[111]-i[311] <= 0.0)
@constraint(m, e323, i[112]-i[312] <= 0.0)
@constraint(m, e324, i[113]-i[313] <= 0.0)
@constraint(m, e325, i[114]-i[314] <= 0.0)
@constraint(m, e326, i[115]-i[315] <= 0.0)
@constraint(m, e327, i[116]-i[316] <= 0.0)
@constraint(m, e328, i[117]-i[317] <= 0.0)
@constraint(m, e329, i[118]-i[318] <= 0.0)
@constraint(m, e330, i[119]-i[319] <= 0.0)
@constraint(m, e331, i[120]-i[320] <= 0.0)
@constraint(m, e332, i[121]-i[221] <= 0.0)
@constraint(m, e333, i[122]-i[222] <= 0.0)
@constraint(m, e334, i[123]-i[223] <= 0.0)
@constraint(m, e335, i[124]-i[224] <= 0.0)
@constraint(m, e336, i[125]-i[225] <= 0.0)
@constraint(m, e337, i[126]-i[226] <= 0.0)
@constraint(m, e338, i[127]-i[227] <= 0.0)
@constraint(m, e339, i[128]-i[228] <= 0.0)
@constraint(m, e340, i[129]-i[229] <= 0.0)
@constraint(m, e341, i[130]-i[230] <= 0.0)
@constraint(m, e342, i[131]-i[231] <= 0.0)
@constraint(m, e343, i[132]-i[232] <= 0.0)
@constraint(m, e344, i[133]-i[233] <= 0.0)
@constraint(m, e345, i[134]-i[234] <= 0.0)
@constraint(m, e346, i[135]-i[235] <= 0.0)
@constraint(m, e347, i[136]-i[236] <= 0.0)
@constraint(m, e348, i[137]-i[237] <= 0.0)
@constraint(m, e349, i[138]-i[238] <= 0.0)
@constraint(m, e350, i[139]-i[239] <= 0.0)
@constraint(m, e351, i[140]-i[240] <= 0.0)
@constraint(m, e352, i[141]-i[241] <= 0.0)
@constraint(m, e353, i[142]-i[242] <= 0.0)
@constraint(m, e354, i[143]-i[243] <= 0.0)
@constraint(m, e355, i[144]-i[244] <= 0.0)
@constraint(m, e356, i[145]-i[245] <= 0.0)
@constraint(m, e357, i[146]-i[246] <= 0.0)
@constraint(m, e358, i[147]-i[247] <= 0.0)
@constraint(m, e359, i[148]-i[248] <= 0.0)
@constraint(m, e360, i[149]-i[249] <= 0.0)
@constraint(m, e361, i[150]-i[250] <= 0.0)
@constraint(m, e362, i[151]-i[251] <= 0.0)
@constraint(m, e363, i[152]-i[252] <= 0.0)
@constraint(m, e364, i[153]-i[253] <= 0.0)
@constraint(m, e365, i[154]-i[254] <= 0.0)
@constraint(m, e366, i[155]-i[255] <= 0.0)
@constraint(m, e367, i[156]-i[256] <= 0.0)
@constraint(m, e368, i[157]-i[257] <= 0.0)
@constraint(m, e369, i[158]-i[258] <= 0.0)
@constraint(m, e370, i[159]-i[259] <= 0.0)
@constraint(m, e371, i[160]-i[260] <= 0.0)
@constraint(m, e372, i[161]-i[261] <= 0.0)
@constraint(m, e373, i[162]-i[262] <= 0.0)
@constraint(m, e374, i[163]-i[263] <= 0.0)
@constraint(m, e375, i[164]-i[264] <= 0.0)
@constraint(m, e376, i[165]-i[265] <= 0.0)
@constraint(m, e377, i[166]-i[266] <= 0.0)
@constraint(m, e378, i[167]-i[267] <= 0.0)
@constraint(m, e379, i[168]-i[268] <= 0.0)
@constraint(m, e380, i[169]-i[269] <= 0.0)
@constraint(m, e381, i[170]-i[270] <= 0.0)
@constraint(m, e382, i[171]-i[271] <= 0.0)
@constraint(m, e383, i[172]-i[272] <= 0.0)
@constraint(m, e384, i[173]-i[273] <= 0.0)
@constraint(m, e385, i[174]-i[274] <= 0.0)
@constraint(m, e386, i[175]-i[275] <= 0.0)
@constraint(m, e387, i[176]-i[276] <= 0.0)
@constraint(m, e388, i[177]-i[277] <= 0.0)
@constraint(m, e389, i[178]-i[278] <= 0.0)
@constraint(m, e390, i[179]-i[279] <= 0.0)
@constraint(m, e391, i[180]-i[280] <= 0.0)
@constraint(m, e392, i[181]-i[281] <= 0.0)
@constraint(m, e393, i[182]-i[282] <= 0.0)
@constraint(m, e394, i[183]-i[283] <= 0.0)
@constraint(m, e395, i[184]-i[284] <= 0.0)
@constraint(m, e396, i[185]-i[285] <= 0.0)
@constraint(m, e397, i[186]-i[286] <= 0.0)
@constraint(m, e398, i[187]-i[287] <= 0.0)
@constraint(m, e399, i[188]-i[288] <= 0.0)
@constraint(m, e400, i[189]-i[289] <= 0.0)
@constraint(m, e401, i[190]-i[290] <= 0.0)
@constraint(m, e402, i[191]-i[291] <= 0.0)
@constraint(m, e403, i[192]-i[292] <= 0.0)
@constraint(m, e404, i[193]-i[293] <= 0.0)
@constraint(m, e405, i[194]-i[294] <= 0.0)
@constraint(m, e406, i[195]-i[295] <= 0.0)
@constraint(m, e407, i[196]-i[296] <= 0.0)
@constraint(m, e408, i[197]-i[297] <= 0.0)
@constraint(m, e409, i[198]-i[298] <= 0.0)
@constraint(m, e410, i[199]-i[299] <= 0.0)
@constraint(m, e411, i[200]-i[300] <= 0.0)
@constraint(m, e412, i[201]-i[301] <= 0.0)
@constraint(m, e413, i[202]-i[302] <= 0.0)
@constraint(m, e414, i[203]-i[303] <= 0.0)
@constraint(m, e415, i[204]-i[304] <= 0.0)
@constraint(m, e416, i[205]-i[305] <= 0.0)
@constraint(m, e417, i[206]-i[306] <= 0.0)
@constraint(m, e418, i[207]-i[307] <= 0.0)
@constraint(m, e419, i[208]-i[308] <= 0.0)
@constraint(m, e420, i[209]-i[309] <= 0.0)
@constraint(m, e421, i[210]-i[310] <= 0.0)
@constraint(m, e422, i[211]-i[311] <= 0.0)
@constraint(m, e423, i[212]-i[312] <= 0.0)
@constraint(m, e424, i[213]-i[313] <= 0.0)
@constraint(m, e425, i[214]-i[314] <= 0.0)
@constraint(m, e426, i[215]-i[315] <= 0.0)
@constraint(m, e427, i[216]-i[316] <= 0.0)
@constraint(m, e428, i[217]-i[317] <= 0.0)
@constraint(m, e429, i[218]-i[318] <= 0.0)
@constraint(m, e430, i[219]-i[319] <= 0.0)
@constraint(m, e431, i[220]-i[320] <= 0.0)
@constraint(m, e432, x[11]-b[322]-b[323]-b[324]-b[325]-b[326]-b[327]-b[328]-b[329]-b[330]-b[331] == 1.0)
@constraint(m, e433, x[12]-b[332]-b[333]-b[334]-b[335]-b[336]-b[337]-b[338]-b[339]-b[340]-b[341] == 1.0)
@constraint(m, e434, x[13]-b[342]-b[343]-b[344]-b[345]-b[346]-b[347]-b[348]-b[349]-b[350]-b[351] == 1.0)
@constraint(m, e435, x[14]-b[352]-b[353]-b[354]-b[355]-b[356]-b[357]-b[358]-b[359]-b[360]-b[361] == 1.0)
@constraint(m, e436, x[15]-b[362]-b[363]-b[364]-b[365]-b[366]-b[367]-b[368]-b[369]-b[370]-b[371] == 1.0)
@constraint(m, e437, x[16]-b[372]-b[373]-b[374]-b[375]-b[376]-b[377]-b[378]-b[379]-b[380]-b[381] == 1.0)
@constraint(m, e438, x[17]-b[382]-b[383]-b[384]-b[385]-b[386]-b[387]-b[388]-b[389]-b[390]-b[391] == 1.0)
@constraint(m, e439, x[18]-b[392]-b[393]-b[394]-b[395]-b[396]-b[397]-b[398]-b[399]-b[400]-b[401] == 1.0)
@constraint(m, e440, x[19]-b[402]-b[403]-b[404]-b[405]-b[406]-b[407]-b[408]-b[409]-b[410]-b[411] == 1.0)
@constraint(m, e441, x[20]-b[412]-b[413]-b[414]-b[415]-b[416]-b[417]-b[418]-b[419]-b[420]-b[421] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[321])

m = m 		 # model get returned when including this script. 