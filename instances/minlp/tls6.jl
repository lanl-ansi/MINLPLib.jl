using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
@variable(m, x[x_Idx] >= 1)
i_Idx = Any[7, 8, 9, 10, 11, 12]
@variable(m, 1 <= i[i_Idx] <= 100, Int)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-0.5*b[5]-0.6*b[6]-b[49]-2*b[50]-3*b[51]-4*b[52]-5*b[53]-6*b[54]-7*b[55]-8*b[56]-9*b[57]-10*b[58]-11*b[59]-12*b[60]-13*b[61]-14*b[62]-b[63]-2*b[64]-3*b[65]-4*b[66]-5*b[67]-6*b[68]-7*b[69]-8*b[70]-9*b[71]-10*b[72]-11*b[73]-12*b[74]-b[75]-2*b[76]-3*b[77]-4*b[78]-5*b[79]-6*b[80]-7*b[81]-8*b[82]-b[83]-2*b[84]-3*b[85]-4*b[86]-5*b[87]-6*b[88]-7*b[89]-b[90]-2*b[91]-3*b[92]-4*b[93]-b[94]-2*b[95]+objvar == 0.0)
@constraint(m, e2, 330*b[96]+660*b[97]+360*b[108]+720*b[109]+1080*b[110]+380*b[126]+760*b[127]+1140*b[128]+430*b[144]+860*b[145]+1290*b[146]+1720*b[147]+2150*b[148]+490*b[174]+980*b[175]+1470*b[176]+530*b[192]+1060*b[193]+1590*b[194]+2120*b[195] <= 2200.0)
@constraint(m, e3, 330*b[98]+660*b[99]+360*b[111]+720*b[112]+1080*b[113]+380*b[129]+760*b[130]+1140*b[131]+430*b[149]+860*b[150]+1290*b[151]+1720*b[152]+2150*b[153]+490*b[177]+980*b[178]+1470*b[179]+530*b[196]+1060*b[197]+1590*b[198]+2120*b[199] <= 2200.0)
@constraint(m, e4, 330*b[100]+660*b[101]+360*b[114]+720*b[115]+1080*b[116]+380*b[132]+760*b[133]+1140*b[134]+430*b[154]+860*b[155]+1290*b[156]+1720*b[157]+2150*b[158]+490*b[180]+980*b[181]+1470*b[182]+530*b[200]+1060*b[201]+1590*b[202]+2120*b[203] <= 2200.0)
@constraint(m, e5, 330*b[102]+660*b[103]+360*b[117]+720*b[118]+1080*b[119]+380*b[135]+760*b[136]+1140*b[137]+430*b[159]+860*b[160]+1290*b[161]+1720*b[162]+2150*b[163]+490*b[183]+980*b[184]+1470*b[185]+530*b[204]+1060*b[205]+1590*b[206]+2120*b[207] <= 2200.0)
@constraint(m, e6, 330*b[104]+660*b[105]+360*b[120]+720*b[121]+1080*b[122]+380*b[138]+760*b[139]+1140*b[140]+430*b[164]+860*b[165]+1290*b[166]+1720*b[167]+2150*b[168]+490*b[186]+980*b[187]+1470*b[188]+530*b[208]+1060*b[209]+1590*b[210]+2120*b[211] <= 2200.0)
@constraint(m, e7, 330*b[106]+660*b[107]+360*b[123]+720*b[124]+1080*b[125]+380*b[141]+760*b[142]+1140*b[143]+430*b[169]+860*b[170]+1290*b[171]+1720*b[172]+2150*b[173]+490*b[189]+980*b[190]+1470*b[191]+530*b[212]+1060*b[213]+1590*b[214]+2120*b[215] <= 2200.0)
@constraint(m, e8, -330*b[96]-660*b[97]-360*b[108]-720*b[109]-1080*b[110]-380*b[126]-760*b[127]-1140*b[128]-430*b[144]-860*b[145]-1290*b[146]-1720*b[147]-2150*b[148]-490*b[174]-980*b[175]-1470*b[176]-530*b[192]-1060*b[193]-1590*b[194]-2120*b[195] <= -2100.0)
@constraint(m, e9, -330*b[98]-660*b[99]-360*b[111]-720*b[112]-1080*b[113]-380*b[129]-760*b[130]-1140*b[131]-430*b[149]-860*b[150]-1290*b[151]-1720*b[152]-2150*b[153]-490*b[177]-980*b[178]-1470*b[179]-530*b[196]-1060*b[197]-1590*b[198]-2120*b[199] <= -2100.0)
@constraint(m, e10, -330*b[100]-660*b[101]-360*b[114]-720*b[115]-1080*b[116]-380*b[132]-760*b[133]-1140*b[134]-430*b[154]-860*b[155]-1290*b[156]-1720*b[157]-2150*b[158]-490*b[180]-980*b[181]-1470*b[182]-530*b[200]-1060*b[201]-1590*b[202]-2120*b[203] <= -2100.0)
@constraint(m, e11, -330*b[102]-660*b[103]-360*b[117]-720*b[118]-1080*b[119]-380*b[135]-760*b[136]-1140*b[137]-430*b[159]-860*b[160]-1290*b[161]-1720*b[162]-2150*b[163]-490*b[183]-980*b[184]-1470*b[185]-530*b[204]-1060*b[205]-1590*b[206]-2120*b[207] <= -2100.0)
@constraint(m, e12, -330*b[104]-660*b[105]-360*b[120]-720*b[121]-1080*b[122]-380*b[138]-760*b[139]-1140*b[140]-430*b[164]-860*b[165]-1290*b[166]-1720*b[167]-2150*b[168]-490*b[186]-980*b[187]-1470*b[188]-530*b[208]-1060*b[209]-1590*b[210]-2120*b[211] <= -2100.0)
@constraint(m, e13, -330*b[106]-660*b[107]-360*b[123]-720*b[124]-1080*b[125]-380*b[141]-760*b[142]-1140*b[143]-430*b[169]-860*b[170]-1290*b[171]-1720*b[172]-2150*b[173]-490*b[189]-980*b[190]-1470*b[191]-530*b[212]-1060*b[213]-1590*b[214]-2120*b[215] <= -2100.0)
@constraint(m, e14, b[96]+2*b[97]+b[108]+2*b[109]+3*b[110]+b[126]+2*b[127]+3*b[128]+b[144]+2*b[145]+3*b[146]+4*b[147]+5*b[148]+b[174]+2*b[175]+3*b[176]+b[192]+2*b[193]+3*b[194]+4*b[195] <= 5.0)
@constraint(m, e15, b[98]+2*b[99]+b[111]+2*b[112]+3*b[113]+b[129]+2*b[130]+3*b[131]+b[149]+2*b[150]+3*b[151]+4*b[152]+5*b[153]+b[177]+2*b[178]+3*b[179]+b[196]+2*b[197]+3*b[198]+4*b[199] <= 5.0)
@constraint(m, e16, b[100]+2*b[101]+b[114]+2*b[115]+3*b[116]+b[132]+2*b[133]+3*b[134]+b[154]+2*b[155]+3*b[156]+4*b[157]+5*b[158]+b[180]+2*b[181]+3*b[182]+b[200]+2*b[201]+3*b[202]+4*b[203] <= 5.0)
@constraint(m, e17, b[102]+2*b[103]+b[117]+2*b[118]+3*b[119]+b[135]+2*b[136]+3*b[137]+b[159]+2*b[160]+3*b[161]+4*b[162]+5*b[163]+b[183]+2*b[184]+3*b[185]+b[204]+2*b[205]+3*b[206]+4*b[207] <= 5.0)
@constraint(m, e18, b[104]+2*b[105]+b[120]+2*b[121]+3*b[122]+b[138]+2*b[139]+3*b[140]+b[164]+2*b[165]+3*b[166]+4*b[167]+5*b[168]+b[186]+2*b[187]+3*b[188]+b[208]+2*b[209]+3*b[210]+4*b[211] <= 5.0)
@constraint(m, e19, b[106]+2*b[107]+b[123]+2*b[124]+3*b[125]+b[141]+2*b[142]+3*b[143]+b[169]+2*b[170]+3*b[171]+4*b[172]+5*b[173]+b[189]+2*b[190]+3*b[191]+b[212]+2*b[213]+3*b[214]+4*b[215] <= 5.0)
@constraint(m, e20, b[1]-b[49]-2*b[50]-3*b[51]-4*b[52]-5*b[53]-6*b[54]-7*b[55]-8*b[56]-9*b[57]-10*b[58]-11*b[59]-12*b[60]-13*b[61]-14*b[62] <= 0.0)
@constraint(m, e21, b[2]-b[63]-2*b[64]-3*b[65]-4*b[66]-5*b[67]-6*b[68]-7*b[69]-8*b[70]-9*b[71]-10*b[72]-11*b[73]-12*b[74] <= 0.0)
@constraint(m, e22, b[3]-b[75]-2*b[76]-3*b[77]-4*b[78]-5*b[79]-6*b[80]-7*b[81]-8*b[82] <= 0.0)
@constraint(m, e23, b[4]-b[83]-2*b[84]-3*b[85]-4*b[86]-5*b[87]-6*b[88]-7*b[89] <= 0.0)
@constraint(m, e24, b[5]-b[90]-2*b[91]-3*b[92]-4*b[93] <= 0.0)
@constraint(m, e25, b[6]-b[94]-2*b[95] <= 0.0)
@constraint(m, e26, -14*b[1]+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62] <= 0.0)
@constraint(m, e27, -12*b[2]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74] <= 0.0)
@constraint(m, e28, -8*b[3]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82] <= 0.0)
@constraint(m, e29, -7*b[4]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89] <= 0.0)
@constraint(m, e30, -4*b[5]+b[90]+2*b[91]+3*b[92]+4*b[93] <= 0.0)
@constraint(m, e31, -2*b[6]+b[94]+2*b[95] <= 0.0)
@constraint(m, e32, i[7]-3*b[49]-8*b[50]-15*b[51]-24*b[52]-35*b[53]-48*b[54]-63*b[55]-80*b[56]-99*b[57]-120*b[58]-143*b[59]-168*b[60]-195*b[61]-224*b[62] == 1.0)
@constraint(m, e33, i[8]-3*b[63]-8*b[64]-15*b[65]-24*b[66]-35*b[67]-48*b[68]-63*b[69]-80*b[70]-99*b[71]-120*b[72]-143*b[73]-168*b[74] == 1.0)
@constraint(m, e34, i[9]-3*b[75]-8*b[76]-15*b[77]-24*b[78]-35*b[79]-48*b[80]-63*b[81]-80*b[82] == 1.0)
@constraint(m, e35, i[10]-3*b[83]-8*b[84]-15*b[85]-24*b[86]-35*b[87]-48*b[88]-63*b[89] == 1.0)
@constraint(m, e36, i[11]-3*b[90]-8*b[91]-15*b[92]-24*b[93] == 1.0)
@constraint(m, e37, i[12]-3*b[94]-8*b[95] == 1.0)
@constraint(m, e38, b[49]+b[50]+b[51]+b[52]+b[53]+b[54]+b[55]+b[56]+b[57]+b[58]+b[59]+b[60]+b[61]+b[62] <= 1.0)
@constraint(m, e39, b[63]+b[64]+b[65]+b[66]+b[67]+b[68]+b[69]+b[70]+b[71]+b[72]+b[73]+b[74] <= 1.0)
@constraint(m, e40, b[75]+b[76]+b[77]+b[78]+b[79]+b[80]+b[81]+b[82] <= 1.0)
@constraint(m, e41, b[83]+b[84]+b[85]+b[86]+b[87]+b[88]+b[89] <= 1.0)
@constraint(m, e42, b[90]+b[91]+b[92]+b[93] <= 1.0)
@constraint(m, e43, b[94]+b[95] <= 1.0)
@constraint(m, e44, x[13]-3*b[96]-8*b[97] == 1.0)
@constraint(m, e45, x[14]-3*b[98]-8*b[99] == 1.0)
@constraint(m, e46, x[15]-3*b[100]-8*b[101] == 1.0)
@constraint(m, e47, x[16]-3*b[102]-8*b[103] == 1.0)
@constraint(m, e48, x[17]-3*b[104]-8*b[105] == 1.0)
@constraint(m, e49, x[18]-3*b[106]-8*b[107] == 1.0)
@constraint(m, e50, x[19]-3*b[108]-8*b[109]-15*b[110] == 1.0)
@constraint(m, e51, x[20]-3*b[111]-8*b[112]-15*b[113] == 1.0)
@constraint(m, e52, x[21]-3*b[114]-8*b[115]-15*b[116] == 1.0)
@constraint(m, e53, x[22]-3*b[117]-8*b[118]-15*b[119] == 1.0)
@constraint(m, e54, x[23]-3*b[120]-8*b[121]-15*b[122] == 1.0)
@constraint(m, e55, x[24]-3*b[123]-8*b[124]-15*b[125] == 1.0)
@constraint(m, e56, x[25]-3*b[126]-8*b[127]-15*b[128] == 1.0)
@constraint(m, e57, x[26]-3*b[129]-8*b[130]-15*b[131] == 1.0)
@constraint(m, e58, x[27]-3*b[132]-8*b[133]-15*b[134] == 1.0)
@constraint(m, e59, x[28]-3*b[135]-8*b[136]-15*b[137] == 1.0)
@constraint(m, e60, x[29]-3*b[138]-8*b[139]-15*b[140] == 1.0)
@constraint(m, e61, x[30]-3*b[141]-8*b[142]-15*b[143] == 1.0)
@constraint(m, e62, x[31]-3*b[144]-8*b[145]-15*b[146]-24*b[147]-35*b[148] == 1.0)
@constraint(m, e63, x[32]-3*b[149]-8*b[150]-15*b[151]-24*b[152]-35*b[153] == 1.0)
@constraint(m, e64, x[33]-3*b[154]-8*b[155]-15*b[156]-24*b[157]-35*b[158] == 1.0)
@constraint(m, e65, x[34]-3*b[159]-8*b[160]-15*b[161]-24*b[162]-35*b[163] == 1.0)
@constraint(m, e66, x[35]-3*b[164]-8*b[165]-15*b[166]-24*b[167]-35*b[168] == 1.0)
@constraint(m, e67, x[36]-3*b[169]-8*b[170]-15*b[171]-24*b[172]-35*b[173] == 1.0)
@constraint(m, e68, x[37]-3*b[174]-8*b[175]-15*b[176] == 1.0)
@constraint(m, e69, x[38]-3*b[177]-8*b[178]-15*b[179] == 1.0)
@constraint(m, e70, x[39]-3*b[180]-8*b[181]-15*b[182] == 1.0)
@constraint(m, e71, x[40]-3*b[183]-8*b[184]-15*b[185] == 1.0)
@constraint(m, e72, x[41]-3*b[186]-8*b[187]-15*b[188] == 1.0)
@constraint(m, e73, x[42]-3*b[189]-8*b[190]-15*b[191] == 1.0)
@constraint(m, e74, x[43]-3*b[192]-8*b[193]-15*b[194]-24*b[195] == 1.0)
@constraint(m, e75, x[44]-3*b[196]-8*b[197]-15*b[198]-24*b[199] == 1.0)
@constraint(m, e76, x[45]-3*b[200]-8*b[201]-15*b[202]-24*b[203] == 1.0)
@constraint(m, e77, x[46]-3*b[204]-8*b[205]-15*b[206]-24*b[207] == 1.0)
@constraint(m, e78, x[47]-3*b[208]-8*b[209]-15*b[210]-24*b[211] == 1.0)
@constraint(m, e79, x[48]-3*b[212]-8*b[213]-15*b[214]-24*b[215] == 1.0)
@constraint(m, e80, b[96]+b[97] <= 1.0)
@constraint(m, e81, b[98]+b[99] <= 1.0)
@constraint(m, e82, b[100]+b[101] <= 1.0)
@constraint(m, e83, b[102]+b[103] <= 1.0)
@constraint(m, e84, b[104]+b[105] <= 1.0)
@constraint(m, e85, b[106]+b[107] <= 1.0)
@constraint(m, e86, b[108]+b[109]+b[110] <= 1.0)
@constraint(m, e87, b[111]+b[112]+b[113] <= 1.0)
@constraint(m, e88, b[114]+b[115]+b[116] <= 1.0)
@constraint(m, e89, b[117]+b[118]+b[119] <= 1.0)
@constraint(m, e90, b[120]+b[121]+b[122] <= 1.0)
@constraint(m, e91, b[123]+b[124]+b[125] <= 1.0)
@constraint(m, e92, b[126]+b[127]+b[128] <= 1.0)
@constraint(m, e93, b[129]+b[130]+b[131] <= 1.0)
@constraint(m, e94, b[132]+b[133]+b[134] <= 1.0)
@constraint(m, e95, b[135]+b[136]+b[137] <= 1.0)
@constraint(m, e96, b[138]+b[139]+b[140] <= 1.0)
@constraint(m, e97, b[141]+b[142]+b[143] <= 1.0)
@constraint(m, e98, b[144]+b[145]+b[146]+b[147]+b[148] <= 1.0)
@constraint(m, e99, b[149]+b[150]+b[151]+b[152]+b[153] <= 1.0)
@constraint(m, e100, b[154]+b[155]+b[156]+b[157]+b[158] <= 1.0)
@constraint(m, e101, b[159]+b[160]+b[161]+b[162]+b[163] <= 1.0)
@constraint(m, e102, b[164]+b[165]+b[166]+b[167]+b[168] <= 1.0)
@constraint(m, e103, b[169]+b[170]+b[171]+b[172]+b[173] <= 1.0)
@constraint(m, e104, b[174]+b[175]+b[176] <= 1.0)
@constraint(m, e105, b[177]+b[178]+b[179] <= 1.0)
@constraint(m, e106, b[180]+b[181]+b[182] <= 1.0)
@constraint(m, e107, b[183]+b[184]+b[185] <= 1.0)
@constraint(m, e108, b[186]+b[187]+b[188] <= 1.0)
@constraint(m, e109, b[189]+b[190]+b[191] <= 1.0)
@constraint(m, e110, b[192]+b[193]+b[194]+b[195] <= 1.0)
@constraint(m, e111, b[196]+b[197]+b[198]+b[199] <= 1.0)
@constraint(m, e112, b[200]+b[201]+b[202]+b[203] <= 1.0)
@constraint(m, e113, b[204]+b[205]+b[206]+b[207] <= 1.0)
@constraint(m, e114, b[208]+b[209]+b[210]+b[211] <= 1.0)
@constraint(m, e115, b[212]+b[213]+b[214]+b[215] <= 1.0)
@NLconstraint(m, e116, -(sqrt(i[7]*x[13])+sqrt(i[8]*x[14])+sqrt(i[9]*x[15])+sqrt(i[10]*x[16])+sqrt(i[11]*x[17])+sqrt(i[12]*x[18]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[96]+2*b[97]+b[98]+2*b[99]+b[100]+2*b[101]+b[102]+2*b[103]+b[104]+2*b[105]+b[106]+2*b[107] <= -14.0)
@NLconstraint(m, e117, -(sqrt(i[7]*x[19])+sqrt(i[8]*x[20])+sqrt(i[9]*x[21])+sqrt(i[10]*x[22])+sqrt(i[11]*x[23])+sqrt(i[12]*x[24]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[108]+2*b[109]+3*b[110]+b[111]+2*b[112]+3*b[113]+b[114]+2*b[115]+3*b[116]+b[117]+2*b[118]+3*b[119]+b[120]+2*b[121]+3*b[122]+b[123]+2*b[124]+3*b[125] <= -22.0)
@NLconstraint(m, e118, -(sqrt(i[7]*x[25])+sqrt(i[8]*x[26])+sqrt(i[9]*x[27])+sqrt(i[10]*x[28])+sqrt(i[11]*x[29])+sqrt(i[12]*x[30]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[126]+2*b[127]+3*b[128]+b[129]+2*b[130]+3*b[131]+b[132]+2*b[133]+3*b[134]+b[135]+2*b[136]+3*b[137]+b[138]+2*b[139]+3*b[140]+b[141]+2*b[142]+3*b[143] <= -18.0)
@NLconstraint(m, e119, -(sqrt(i[7]*x[31])+sqrt(i[8]*x[32])+sqrt(i[9]*x[33])+sqrt(i[10]*x[34])+sqrt(i[11]*x[35])+sqrt(i[12]*x[36]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[144]+2*b[145]+3*b[146]+4*b[147]+5*b[148]+b[149]+2*b[150]+3*b[151]+4*b[152]+5*b[153]+b[154]+2*b[155]+3*b[156]+4*b[157]+5*b[158]+b[159]+2*b[160]+3*b[161]+4*b[162]+5*b[163]+b[164]+2*b[165]+3*b[166]+4*b[167]+5*b[168]+b[169]+2*b[170]+3*b[171]+4*b[172]+5*b[173] <= -13.0)
@NLconstraint(m, e120, -(sqrt(i[7]*x[37])+sqrt(i[8]*x[38])+sqrt(i[9]*x[39])+sqrt(i[10]*x[40])+sqrt(i[11]*x[41])+sqrt(i[12]*x[42]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[174]+2*b[175]+3*b[176]+b[177]+2*b[178]+3*b[179]+b[180]+2*b[181]+3*b[182]+b[183]+2*b[184]+3*b[185]+b[186]+2*b[187]+3*b[188]+b[189]+2*b[190]+3*b[191] <= -20.0)
@NLconstraint(m, e121, -(sqrt(i[7]*x[43])+sqrt(i[8]*x[44])+sqrt(i[9]*x[45])+sqrt(i[10]*x[46])+sqrt(i[11]*x[47])+sqrt(i[12]*x[48]))+b[49]+2*b[50]+3*b[51]+4*b[52]+5*b[53]+6*b[54]+7*b[55]+8*b[56]+9*b[57]+10*b[58]+11*b[59]+12*b[60]+13*b[61]+14*b[62]+b[63]+2*b[64]+3*b[65]+4*b[66]+5*b[67]+6*b[68]+7*b[69]+8*b[70]+9*b[71]+10*b[72]+11*b[73]+12*b[74]+b[75]+2*b[76]+3*b[77]+4*b[78]+5*b[79]+6*b[80]+7*b[81]+8*b[82]+b[83]+2*b[84]+3*b[85]+4*b[86]+5*b[87]+6*b[88]+7*b[89]+b[90]+2*b[91]+3*b[92]+4*b[93]+b[94]+2*b[95]+b[192]+2*b[193]+3*b[194]+4*b[195]+b[196]+2*b[197]+3*b[198]+4*b[199]+b[200]+2*b[201]+3*b[202]+4*b[203]+b[204]+2*b[205]+3*b[206]+4*b[207]+b[208]+2*b[209]+3*b[210]+4*b[211]+b[212]+2*b[213]+3*b[214]+4*b[215] <= -22.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 