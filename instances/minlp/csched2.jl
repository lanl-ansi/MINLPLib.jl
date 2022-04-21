using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92]
@variable(m, x[x_Idx])
b_Idx = Any[93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[29], 0.01)
set_upper_bound(x[29], 10.0)
set_lower_bound(x[30], 0.01)
set_upper_bound(x[30], 10.0)
set_lower_bound(x[31], 0.01)
set_upper_bound(x[31], 10.0)
set_lower_bound(x[32], 0.01)
set_upper_bound(x[32], 10.0)
set_lower_bound(x[33], 0.01)
set_upper_bound(x[33], 10.0)
set_lower_bound(x[34], 0.01)
set_upper_bound(x[34], 10.0)
set_lower_bound(x[35], 0.01)
set_upper_bound(x[35], 10.0)
set_lower_bound(x[36], 0.01)
set_upper_bound(x[36], 10.0)
set_lower_bound(x[37], 0.01)
set_upper_bound(x[37], 10.0)
set_lower_bound(x[38], 0.01)
set_upper_bound(x[38], 10.0)
set_lower_bound(x[39], 0.01)
set_upper_bound(x[39], 10.0)
set_lower_bound(x[40], 0.01)
set_upper_bound(x[40], 10.0)
set_lower_bound(x[41], 0.01)
set_upper_bound(x[41], 10.0)
set_lower_bound(x[42], 0.01)
set_upper_bound(x[42], 10.0)
set_lower_bound(x[43], 0.01)
set_upper_bound(x[43], 10.0)
set_lower_bound(x[44], 0.01)
set_upper_bound(x[44], 10.0)
set_lower_bound(x[45], 0.01)
set_upper_bound(x[45], 10.0)
set_lower_bound(x[46], 0.01)
set_upper_bound(x[46], 10.0)
set_lower_bound(x[47], 0.01)
set_upper_bound(x[47], 10.0)
set_lower_bound(x[48], 0.01)
set_upper_bound(x[48], 10.0)
set_lower_bound(x[49], 0.01)
set_upper_bound(x[49], 10.0)
set_lower_bound(x[50], 0.01)
set_upper_bound(x[50], 10.0)
set_lower_bound(x[51], 0.01)
set_upper_bound(x[51], 10.0)
set_lower_bound(x[52], 0.01)
set_upper_bound(x[52], 10.0)
set_lower_bound(x[53], 0.01)
set_upper_bound(x[53], 10.0)
set_lower_bound(x[54], 0.01)
set_upper_bound(x[54], 10.0)
set_lower_bound(x[55], 0.01)
set_upper_bound(x[55], 10.0)
set_lower_bound(x[56], 0.01)
set_upper_bound(x[56], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-x[92]*objvar)-(479700*x[29]*(1-exp(-0.1*x[1]/x[29]))+31980*x[1]-100*x[29]+252000*x[30]*(1-exp(-0.2*x[2]/x[30]))+22680*x[2]-90*x[30]+423500*x[31]*(1-exp(-0.1*x[3]/x[31]))+25410*x[3]-80*x[31]+157440*x[32]*(1-exp(-0.2*x[4]/x[32]))+19680*x[4]-75*x[32]+172108.695652174*x[33]*(1-exp(-0.23*x[5]/x[33]))+40950*x[5]-90*x[33]+33970.5882352941*x[34]*(1-exp(-0.34*x[6]/x[34]))+8580*x[6]-93*x[34]+130200*x[35]*(1-exp(-0.2*x[7]/x[35]))+13440*x[7]-78*x[35]+200640*x[36]*(1-exp(-0.2*x[8]/x[36]))+26334*x[8]-80*x[36]+526680*x[37]*(1-exp(-0.1*x[9]/x[37]))+26334*x[9]-85*x[37]+212850*x[38]*(1-exp(-0.2*x[10]/x[38]))+29670*x[10]-75*x[38]+141360*x[39]*(1-exp(-0.25*x[11]/x[39]))+28500*x[11]-90*x[39]+152937.931034483*x[40]*(1-exp(-0.29*x[12]/x[40]))+49104*x[12]-94*x[40]+76444.4444444444*x[41]*(1-exp(-0.27*x[13]/x[41]))+13932*x[13]-78*x[41]+76840*x[42]*(1-exp(-0.3*x[14]/x[42]))+11526*x[14]-70*x[42]+102300*x[43]*(1-exp(-0.3*x[15]/x[43]))+18810*x[15]-90*x[43]+170800*x[44]*(1-exp(-0.2*x[16]/x[44]))+17568*x[16]-90*x[44]+115200*x[45]*(1-exp(-0.3*x[17]/x[45]))+20160*x[17]-90*x[45]+176000*x[46]*(1-exp(-0.27*x[18]/x[46]))+30360*x[18]-85*x[46]+126357.142857143*x[47]*(1-exp(-0.28*x[19]/x[47]))+36600*x[19]-93*x[47]+45931.0344827586*x[48]*(1-exp(-0.29*x[20]/x[48]))+9000*x[20]-92*x[48]+123318*x[49]*(1-exp(-0.25*x[21]/x[49]))+17901*x[21]-75*x[49]+223200*x[50]*(1-exp(-0.2*x[22]/x[50]))+28800*x[22]-80*x[50]+225000*x[51]*(1-exp(-0.2*x[23]/x[51]))+23750*x[23]-90*x[51]+240800*x[52]*(1-exp(-0.15*x[24]/x[52]))+21672*x[24]-85*x[52]+115920*x[53]*(1-exp(-0.25*x[25]/x[53]))+19320*x[25]-80*x[53]+133241.379310345*x[54]*(1-exp(-0.29*x[26]/x[54]))+42780*x[26]-92*x[54]+90763.6363636364*x[55]*(1-exp(-0.22*x[27]/x[55]))+13312*x[27]-85*x[55]+78857.1428571429*x[56]*(1-exp(-0.28*x[28]/x[56]))+11730*x[28]-72*x[56]) == 0.0)
@constraint(m, e2, -1300*x[1]-1100*x[8]-900*x[15]-1200*x[22]+x[57]+300*x[92] == 0.0)
@constraint(m, e3, -1200*x[2]-1050*x[9]-800*x[16]-1000*x[23]+x[58]+400*x[92] == 0.0)
@constraint(m, e4, -1100*x[3]-1000*x[10]-800*x[17]-800*x[24]+x[59]+300*x[92] == 0.0)
@constraint(m, e5, -800*x[4]-1000*x[11]-1200*x[18]-700*x[25]+x[60]+500*x[92] == 0.0)
@constraint(m, e6, -1300*x[5]-1200*x[12]-1000*x[19]-1200*x[26]+x[61]+500*x[92] == 0.0)
@constraint(m, e7, -300*x[6]-400*x[13]-300*x[20]-400*x[27]+x[62]+100*x[92] == 0.0)
@constraint(m, e8, -700*x[7]-600*x[14]-850*x[21]-600*x[28]+x[63]+600*x[92] == 0.0)
@constraint(m, e9, x[57]-300*x[92] <= 0.0)
@constraint(m, e10, x[58]-300*x[92] <= 0.0)
@constraint(m, e11, x[59]-300*x[92] <= 0.0)
@constraint(m, e12, x[60]-300*x[92] <= 0.0)
@constraint(m, e13, x[61]-300*x[92] <= 0.0)
@constraint(m, e14, x[62]-300*x[92] <= 0.0)
@constraint(m, e15, x[63]-300*x[92] <= 0.0)
@constraint(m, e16, x[29]-0.01*b[93]-b[94]-2*b[95]-3*b[96]-4*b[97]-5*b[98]-6*b[99]-7*b[100]-8*b[101]-9*b[102]-10*b[103] == 0.0)
@constraint(m, e17, x[30]-0.01*b[104]-b[105]-2*b[106]-3*b[107]-4*b[108]-5*b[109]-6*b[110]-7*b[111]-8*b[112]-9*b[113]-10*b[114] == 0.0)
@constraint(m, e18, x[31]-0.01*b[115]-b[116]-2*b[117]-3*b[118]-4*b[119]-5*b[120]-6*b[121]-7*b[122]-8*b[123]-9*b[124]-10*b[125] == 0.0)
@constraint(m, e19, x[32]-0.01*b[126]-b[127]-2*b[128]-3*b[129]-4*b[130]-5*b[131]-6*b[132]-7*b[133]-8*b[134]-9*b[135]-10*b[136] == 0.0)
@constraint(m, e20, x[33]-0.01*b[137]-b[138]-2*b[139]-3*b[140]-4*b[141]-5*b[142]-6*b[143]-7*b[144]-8*b[145]-9*b[146]-10*b[147] == 0.0)
@constraint(m, e21, x[34]-0.01*b[148]-b[149]-2*b[150]-3*b[151]-4*b[152]-5*b[153]-6*b[154]-7*b[155]-8*b[156]-9*b[157]-10*b[158] == 0.0)
@constraint(m, e22, x[35]-0.01*b[159]-b[160]-2*b[161]-3*b[162]-4*b[163]-5*b[164]-6*b[165]-7*b[166]-8*b[167]-9*b[168]-10*b[169] == 0.0)
@constraint(m, e23, x[36]-0.01*b[170]-b[171]-2*b[172]-3*b[173]-4*b[174]-5*b[175]-6*b[176]-7*b[177]-8*b[178]-9*b[179]-10*b[180] == 0.0)
@constraint(m, e24, x[37]-0.01*b[181]-b[182]-2*b[183]-3*b[184]-4*b[185]-5*b[186]-6*b[187]-7*b[188]-8*b[189]-9*b[190]-10*b[191] == 0.0)
@constraint(m, e25, x[38]-0.01*b[192]-b[193]-2*b[194]-3*b[195]-4*b[196]-5*b[197]-6*b[198]-7*b[199]-8*b[200]-9*b[201]-10*b[202] == 0.0)
@constraint(m, e26, x[39]-0.01*b[203]-b[204]-2*b[205]-3*b[206]-4*b[207]-5*b[208]-6*b[209]-7*b[210]-8*b[211]-9*b[212]-10*b[213] == 0.0)
@constraint(m, e27, x[40]-0.01*b[214]-b[215]-2*b[216]-3*b[217]-4*b[218]-5*b[219]-6*b[220]-7*b[221]-8*b[222]-9*b[223]-10*b[224] == 0.0)
@constraint(m, e28, x[41]-0.01*b[225]-b[226]-2*b[227]-3*b[228]-4*b[229]-5*b[230]-6*b[231]-7*b[232]-8*b[233]-9*b[234]-10*b[235] == 0.0)
@constraint(m, e29, x[42]-0.01*b[236]-b[237]-2*b[238]-3*b[239]-4*b[240]-5*b[241]-6*b[242]-7*b[243]-8*b[244]-9*b[245]-10*b[246] == 0.0)
@constraint(m, e30, x[43]-0.01*b[247]-b[248]-2*b[249]-3*b[250]-4*b[251]-5*b[252]-6*b[253]-7*b[254]-8*b[255]-9*b[256]-10*b[257] == 0.0)
@constraint(m, e31, x[44]-0.01*b[258]-b[259]-2*b[260]-3*b[261]-4*b[262]-5*b[263]-6*b[264]-7*b[265]-8*b[266]-9*b[267]-10*b[268] == 0.0)
@constraint(m, e32, x[45]-0.01*b[269]-b[270]-2*b[271]-3*b[272]-4*b[273]-5*b[274]-6*b[275]-7*b[276]-8*b[277]-9*b[278]-10*b[279] == 0.0)
@constraint(m, e33, x[46]-0.01*b[280]-b[281]-2*b[282]-3*b[283]-4*b[284]-5*b[285]-6*b[286]-7*b[287]-8*b[288]-9*b[289]-10*b[290] == 0.0)
@constraint(m, e34, x[47]-0.01*b[291]-b[292]-2*b[293]-3*b[294]-4*b[295]-5*b[296]-6*b[297]-7*b[298]-8*b[299]-9*b[300]-10*b[301] == 0.0)
@constraint(m, e35, x[48]-0.01*b[302]-b[303]-2*b[304]-3*b[305]-4*b[306]-5*b[307]-6*b[308]-7*b[309]-8*b[310]-9*b[311]-10*b[312] == 0.0)
@constraint(m, e36, x[49]-0.01*b[313]-b[314]-2*b[315]-3*b[316]-4*b[317]-5*b[318]-6*b[319]-7*b[320]-8*b[321]-9*b[322]-10*b[323] == 0.0)
@constraint(m, e37, x[50]-0.01*b[324]-b[325]-2*b[326]-3*b[327]-4*b[328]-5*b[329]-6*b[330]-7*b[331]-8*b[332]-9*b[333]-10*b[334] == 0.0)
@constraint(m, e38, x[51]-0.01*b[335]-b[336]-2*b[337]-3*b[338]-4*b[339]-5*b[340]-6*b[341]-7*b[342]-8*b[343]-9*b[344]-10*b[345] == 0.0)
@constraint(m, e39, x[52]-0.01*b[346]-b[347]-2*b[348]-3*b[349]-4*b[350]-5*b[351]-6*b[352]-7*b[353]-8*b[354]-9*b[355]-10*b[356] == 0.0)
@constraint(m, e40, x[53]-0.01*b[357]-b[358]-2*b[359]-3*b[360]-4*b[361]-5*b[362]-6*b[363]-7*b[364]-8*b[365]-9*b[366]-10*b[367] == 0.0)
@constraint(m, e41, x[54]-0.01*b[368]-b[369]-2*b[370]-3*b[371]-4*b[372]-5*b[373]-6*b[374]-7*b[375]-8*b[376]-9*b[377]-10*b[378] == 0.0)
@constraint(m, e42, x[55]-0.01*b[379]-b[380]-2*b[381]-3*b[382]-4*b[383]-5*b[384]-6*b[385]-7*b[386]-8*b[387]-9*b[388]-10*b[389] == 0.0)
@constraint(m, e43, x[56]-0.01*b[390]-b[391]-2*b[392]-3*b[393]-4*b[394]-5*b[395]-6*b[396]-7*b[397]-8*b[398]-9*b[399]-10*b[400] == 0.0)
@constraint(m, e44, -b[93]-b[94]-b[95]-b[96]-b[97]-b[98]-b[99]-b[100]-b[101]-b[102]-b[103] == -1.0)
@constraint(m, e45, -b[104]-b[105]-b[106]-b[107]-b[108]-b[109]-b[110]-b[111]-b[112]-b[113]-b[114] == -1.0)
@constraint(m, e46, -b[115]-b[116]-b[117]-b[118]-b[119]-b[120]-b[121]-b[122]-b[123]-b[124]-b[125] == -1.0)
@constraint(m, e47, -b[126]-b[127]-b[128]-b[129]-b[130]-b[131]-b[132]-b[133]-b[134]-b[135]-b[136] == -1.0)
@constraint(m, e48, -b[137]-b[138]-b[139]-b[140]-b[141]-b[142]-b[143]-b[144]-b[145]-b[146]-b[147] == -1.0)
@constraint(m, e49, -b[148]-b[149]-b[150]-b[151]-b[152]-b[153]-b[154]-b[155]-b[156]-b[157]-b[158] == -1.0)
@constraint(m, e50, -b[159]-b[160]-b[161]-b[162]-b[163]-b[164]-b[165]-b[166]-b[167]-b[168]-b[169] == -1.0)
@constraint(m, e51, -b[170]-b[171]-b[172]-b[173]-b[174]-b[175]-b[176]-b[177]-b[178]-b[179]-b[180] == -1.0)
@constraint(m, e52, -b[181]-b[182]-b[183]-b[184]-b[185]-b[186]-b[187]-b[188]-b[189]-b[190]-b[191] == -1.0)
@constraint(m, e53, -b[192]-b[193]-b[194]-b[195]-b[196]-b[197]-b[198]-b[199]-b[200]-b[201]-b[202] == -1.0)
@constraint(m, e54, -b[203]-b[204]-b[205]-b[206]-b[207]-b[208]-b[209]-b[210]-b[211]-b[212]-b[213] == -1.0)
@constraint(m, e55, -b[214]-b[215]-b[216]-b[217]-b[218]-b[219]-b[220]-b[221]-b[222]-b[223]-b[224] == -1.0)
@constraint(m, e56, -b[225]-b[226]-b[227]-b[228]-b[229]-b[230]-b[231]-b[232]-b[233]-b[234]-b[235] == -1.0)
@constraint(m, e57, -b[236]-b[237]-b[238]-b[239]-b[240]-b[241]-b[242]-b[243]-b[244]-b[245]-b[246] == -1.0)
@constraint(m, e58, -b[247]-b[248]-b[249]-b[250]-b[251]-b[252]-b[253]-b[254]-b[255]-b[256]-b[257] == -1.0)
@constraint(m, e59, -b[258]-b[259]-b[260]-b[261]-b[262]-b[263]-b[264]-b[265]-b[266]-b[267]-b[268] == -1.0)
@constraint(m, e60, -b[269]-b[270]-b[271]-b[272]-b[273]-b[274]-b[275]-b[276]-b[277]-b[278]-b[279] == -1.0)
@constraint(m, e61, -b[280]-b[281]-b[282]-b[283]-b[284]-b[285]-b[286]-b[287]-b[288]-b[289]-b[290] == -1.0)
@constraint(m, e62, -b[291]-b[292]-b[293]-b[294]-b[295]-b[296]-b[297]-b[298]-b[299]-b[300]-b[301] == -1.0)
@constraint(m, e63, -b[302]-b[303]-b[304]-b[305]-b[306]-b[307]-b[308]-b[309]-b[310]-b[311]-b[312] == -1.0)
@constraint(m, e64, -b[313]-b[314]-b[315]-b[316]-b[317]-b[318]-b[319]-b[320]-b[321]-b[322]-b[323] == -1.0)
@constraint(m, e65, -b[324]-b[325]-b[326]-b[327]-b[328]-b[329]-b[330]-b[331]-b[332]-b[333]-b[334] == -1.0)
@constraint(m, e66, -b[335]-b[336]-b[337]-b[338]-b[339]-b[340]-b[341]-b[342]-b[343]-b[344]-b[345] == -1.0)
@constraint(m, e67, -b[346]-b[347]-b[348]-b[349]-b[350]-b[351]-b[352]-b[353]-b[354]-b[355]-b[356] == -1.0)
@constraint(m, e68, -b[357]-b[358]-b[359]-b[360]-b[361]-b[362]-b[363]-b[364]-b[365]-b[366]-b[367] == -1.0)
@constraint(m, e69, -b[368]-b[369]-b[370]-b[371]-b[372]-b[373]-b[374]-b[375]-b[376]-b[377]-b[378] == -1.0)
@constraint(m, e70, -b[379]-b[380]-b[381]-b[382]-b[383]-b[384]-b[385]-b[386]-b[387]-b[388]-b[389] == -1.0)
@constraint(m, e71, -b[390]-b[391]-b[392]-b[393]-b[394]-b[395]-b[396]-b[397]-b[398]-b[399]-b[400] == -1.0)
@constraint(m, e72, -x[1]-2*x[29]+x[64] == 0.0)
@constraint(m, e73, -x[2]-3*x[30]+x[65] == 0.0)
@constraint(m, e74, -x[3]-3*x[31]+x[66] == 0.0)
@constraint(m, e75, -x[4]-3*x[32]+x[67] == 0.0)
@constraint(m, e76, -x[5]-x[33]+x[68] == 0.0)
@constraint(m, e77, -x[6]-2*x[34]+x[69] == 0.0)
@constraint(m, e78, -x[7]-3*x[35]+x[70] == 0.0)
@constraint(m, e79, -x[8]-3*x[36]+x[71] == 0.0)
@constraint(m, e80, -x[9]-x[37]+x[72] == 0.0)
@constraint(m, e81, -x[10]-2*x[38]+x[73] == 0.0)
@constraint(m, e82, -x[11]-2*x[39]+x[74] == 0.0)
@constraint(m, e83, -x[12]-2*x[40]+x[75] == 0.0)
@constraint(m, e84, -x[13]-x[41]+x[76] == 0.0)
@constraint(m, e85, -x[14]-x[42]+x[77] == 0.0)
@constraint(m, e86, -x[15]-x[43]+x[78] == 0.0)
@constraint(m, e87, -x[16]-3*x[44]+x[79] == 0.0)
@constraint(m, e88, -x[17]-x[45]+x[80] == 0.0)
@constraint(m, e89, -x[18]-x[46]+x[81] == 0.0)
@constraint(m, e90, -x[19]-2*x[47]+x[82] == 0.0)
@constraint(m, e91, -x[20]-x[48]+x[83] == 0.0)
@constraint(m, e92, -x[21]-2*x[49]+x[84] == 0.0)
@constraint(m, e93, -x[22]-2*x[50]+x[85] == 0.0)
@constraint(m, e94, -x[23]-x[51]+x[86] == 0.0)
@constraint(m, e95, -x[24]-3*x[52]+x[87] == 0.0)
@constraint(m, e96, -x[25]-2*x[53]+x[88] == 0.0)
@constraint(m, e97, -x[26]-2*x[54]+x[89] == 0.0)
@constraint(m, e98, -x[27]-x[55]+x[90] == 0.0)
@constraint(m, e99, -x[28]-x[56]+x[91] == 0.0)
@constraint(m, e100, x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]-x[92] <= 0.0)
@constraint(m, e101, x[71]+x[72]+x[73]+x[74]+x[75]+x[76]+x[77]-x[92] <= 0.0)
@constraint(m, e102, x[78]+x[79]+x[80]+x[81]+x[82]+x[83]+x[84]-x[92] <= 0.0)
@constraint(m, e103, x[85]+x[86]+x[87]+x[88]+x[89]+x[90]+x[91]-x[92] <= 0.0)
@constraint(m, e104, x[1]+100*b[93] <= 100.0)
@constraint(m, e105, x[2]+100*b[104] <= 100.0)
@constraint(m, e106, x[3]+100*b[115] <= 100.0)
@constraint(m, e107, x[4]+100*b[126] <= 100.0)
@constraint(m, e108, x[5]+100*b[137] <= 100.0)
@constraint(m, e109, x[6]+100*b[148] <= 100.0)
@constraint(m, e110, x[7]+100*b[159] <= 100.0)
@constraint(m, e111, x[8]+100*b[170] <= 100.0)
@constraint(m, e112, x[9]+100*b[181] <= 100.0)
@constraint(m, e113, x[10]+100*b[192] <= 100.0)
@constraint(m, e114, x[11]+100*b[203] <= 100.0)
@constraint(m, e115, x[12]+100*b[214] <= 100.0)
@constraint(m, e116, x[13]+100*b[225] <= 100.0)
@constraint(m, e117, x[14]+100*b[236] <= 100.0)
@constraint(m, e118, x[15]+100*b[247] <= 100.0)
@constraint(m, e119, x[16]+100*b[258] <= 100.0)
@constraint(m, e120, x[17]+100*b[269] <= 100.0)
@constraint(m, e121, x[18]+100*b[280] <= 100.0)
@constraint(m, e122, x[19]+100*b[291] <= 100.0)
@constraint(m, e123, x[20]+100*b[302] <= 100.0)
@constraint(m, e124, x[21]+100*b[313] <= 100.0)
@constraint(m, e125, x[22]+100*b[324] <= 100.0)
@constraint(m, e126, x[23]+100*b[335] <= 100.0)
@constraint(m, e127, x[24]+100*b[346] <= 100.0)
@constraint(m, e128, x[25]+100*b[357] <= 100.0)
@constraint(m, e129, x[26]+100*b[368] <= 100.0)
@constraint(m, e130, x[27]+100*b[379] <= 100.0)
@constraint(m, e131, x[28]+100*b[390] <= 100.0)
@constraint(m, e132, x[29]+x[36]+x[43]+x[50] >= 1.0)
@constraint(m, e133, x[30]+x[37]+x[44]+x[51] >= 1.0)
@constraint(m, e134, x[31]+x[38]+x[45]+x[52] >= 1.0)
@constraint(m, e135, x[32]+x[39]+x[46]+x[53] >= 1.0)
@constraint(m, e136, x[33]+x[40]+x[47]+x[54] >= 1.0)
@constraint(m, e137, x[34]+x[41]+x[48]+x[55] >= 1.0)
@constraint(m, e138, x[35]+x[42]+x[49]+x[56] >= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 