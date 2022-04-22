using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, x[x_Idx])
b_Idx = Any[30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[17], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[28]+x[29] == 0.0)
@constraint(m, e2, -x[2]+x[3]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[71] <= 189.32)
@constraint(m, e3, 6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[72] <= 189.32)
@constraint(m, e4, x[3]-x[4]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[73] <= 189.32)
@constraint(m, e5, x[3]-x[5]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[74] <= 189.32)
@constraint(m, e6, x[3]-x[6]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[75] <= 189.32)
@constraint(m, e7, x[3]-x[7]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53]+190*b[76] <= 189.32)
@constraint(m, e8, -x[1]+x[4]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[77] <= 189.35)
@constraint(m, e9, -x[3]+x[4]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[79] <= 189.35)
@constraint(m, e10, 5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[80] <= 189.35)
@constraint(m, e11, x[4]-x[5]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[81] <= 189.35)
@constraint(m, e12, x[4]-x[6]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[82] <= 189.35)
@constraint(m, e13, x[4]-x[7]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54]+190*b[83] <= 189.35)
@constraint(m, e14, -x[1]+x[5]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[84] <= 189.64)
@constraint(m, e15, -x[2]+x[5]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[85] <= 189.64)
@constraint(m, e16, -x[4]+x[5]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[87] <= 189.64)
@constraint(m, e17, 7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[88] <= 189.64)
@constraint(m, e18, x[5]-x[6]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[89] <= 189.64)
@constraint(m, e19, x[5]-x[7]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55]+190*b[90] <= 189.64)
@constraint(m, e20, -x[1]+x[6]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[91] <= 189.1)
@constraint(m, e21, -x[2]+x[6]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[92] <= 189.1)
@constraint(m, e22, -x[3]+x[6]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[93] <= 189.1)
@constraint(m, e23, -x[5]+x[6]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[95] <= 189.1)
@constraint(m, e24, 5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[96] <= 189.1)
@constraint(m, e25, x[6]-x[7]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56]+190*b[97] <= 189.1)
@constraint(m, e26, -x[1]+x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[98] <= 189.2)
@constraint(m, e27, -x[2]+x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[99] <= 189.2)
@constraint(m, e28, -x[3]+x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[100] <= 189.2)
@constraint(m, e29, -x[4]+x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[101] <= 189.2)
@constraint(m, e30, -x[6]+x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[103] <= 189.2)
@constraint(m, e31, 7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57]+190*b[104] <= 189.2)
@NLconstraint(m, e32, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[2]+190*b[58] <= 190.0)
@NLconstraint(m, e33, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[3]+190*b[59] <= 190.0)
@NLconstraint(m, e34, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[4]+190*b[60] <= 190.0)
@NLconstraint(m, e35, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[5]+190*b[61] <= 190.0)
@NLconstraint(m, e36, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[6]+190*b[62] <= 190.0)
@NLconstraint(m, e37, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1]-x[7]+190*b[63] <= 190.0)
@NLconstraint(m, e38, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])-x[1]+x[2]+190*b[64] <= 190.0)
@NLconstraint(m, e39, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[3]+190*b[65] <= 190.0)
@NLconstraint(m, e40, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[4]+190*b[66] <= 190.0)
@NLconstraint(m, e41, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[5]+190*b[67] <= 190.0)
@NLconstraint(m, e42, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[6]+190*b[68] <= 190.0)
@NLconstraint(m, e43, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2]-x[7]+190*b[69] <= 190.0)
@constraint(m, e44, -x[9]+x[10]-6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[118] <= 182.5625)
@constraint(m, e45, -6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[119] <= 182.5625)
@constraint(m, e46, x[10]-x[11]-6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[120] <= 182.5625)
@constraint(m, e47, x[10]-x[12]-6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[121] <= 182.5625)
@constraint(m, e48, x[10]-x[13]-6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[122] <= 182.5625)
@constraint(m, e49, x[10]-x[14]-6.7575*b[32]-6.7575*b[39]+4.135*b[46]+190*b[123] <= 182.5625)
@constraint(m, e50, -x[8]+x[11]-5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[124] <= 183.75)
@constraint(m, e51, -x[10]+x[11]-5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[126] <= 183.75)
@constraint(m, e52, -5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[127] <= 183.75)
@constraint(m, e53, x[11]-x[12]-5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[128] <= 183.75)
@constraint(m, e54, x[11]-x[13]-5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[129] <= 183.75)
@constraint(m, e55, x[11]-x[14]-5.6*b[33]-5.6*b[40]+3.75*b[47]+190*b[130] <= 183.75)
@constraint(m, e56, -x[8]+x[12]-7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[131] <= 181.875)
@constraint(m, e57, -x[9]+x[12]-7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[132] <= 181.875)
@constraint(m, e58, -x[11]+x[12]-7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[134] <= 181.875)
@constraint(m, e59, -7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[135] <= 181.875)
@constraint(m, e60, x[12]-x[13]-7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[136] <= 181.875)
@constraint(m, e61, x[12]-x[14]-7.765*b[34]-7.765*b[41]+4.54*b[48]+190*b[137] <= 181.875)
@constraint(m, e62, -x[8]+x[13]-5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[138] <= 183.75)
@constraint(m, e63, -x[9]+x[13]-5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[139] <= 183.75)
@constraint(m, e64, -x[10]+x[13]-5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[140] <= 183.75)
@constraint(m, e65, -x[12]+x[13]-5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[142] <= 183.75)
@constraint(m, e66, -5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[143] <= 183.75)
@constraint(m, e67, x[13]-x[14]-5.35*b[35]-5.35*b[42]+1.7*b[49]+190*b[144] <= 183.75)
@constraint(m, e68, -x[8]+x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[145] <= 181.75)
@constraint(m, e69, -x[9]+x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[146] <= 181.75)
@constraint(m, e70, -x[10]+x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[147] <= 181.75)
@constraint(m, e71, -x[11]+x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[148] <= 181.75)
@constraint(m, e72, -x[13]+x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[150] <= 181.75)
@constraint(m, e73, -7.45*b[36]-7.45*b[43]+4.01*b[50]+190*b[151] <= 181.75)
@NLconstraint(m, e74, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[9]+190*b[105] <= 190.0)
@NLconstraint(m, e75, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[10]+190*b[106] <= 190.0)
@NLconstraint(m, e76, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[11]+190*b[107] <= 190.0)
@NLconstraint(m, e77, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[12]+190*b[108] <= 190.0)
@NLconstraint(m, e78, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[13]+190*b[109] <= 190.0)
@NLconstraint(m, e79, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8]-x[14]+190*b[110] <= 190.0)
@NLconstraint(m, e80, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])-x[8]+x[9]+190*b[111] <= 190.0)
@NLconstraint(m, e81, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[10]+190*b[112] <= 190.0)
@NLconstraint(m, e82, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[11]+190*b[113] <= 190.0)
@NLconstraint(m, e83, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[12]+190*b[114] <= 190.0)
@NLconstraint(m, e84, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[13]+190*b[115] <= 190.0)
@NLconstraint(m, e85, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9]-x[14]+190*b[116] <= 190.0)
@constraint(m, e86, -x[16]+x[17]+2.6225*b[39]-4.135*b[53]+190*b[165] <= 185.185)
@constraint(m, e87, 2.6225*b[39]-4.135*b[53]+190*b[166] <= 185.185)
@constraint(m, e88, x[17]-x[18]+2.6225*b[39]-4.135*b[53]+190*b[167] <= 185.185)
@constraint(m, e89, x[17]-x[19]+2.6225*b[39]-4.135*b[53]+190*b[168] <= 185.185)
@constraint(m, e90, x[17]-x[20]+2.6225*b[39]-4.135*b[53]+190*b[169] <= 185.185)
@constraint(m, e91, x[17]-x[21]+2.6225*b[39]-4.135*b[53]+190*b[170] <= 185.185)
@constraint(m, e92, -x[15]+x[18]+1.85*b[40]-3.75*b[54]+190*b[171] <= 185.6)
@constraint(m, e93, -x[17]+x[18]+1.85*b[40]-3.75*b[54]+190*b[173] <= 185.6)
@constraint(m, e94, 1.85*b[40]-3.75*b[54]+190*b[174] <= 185.6)
@constraint(m, e95, x[18]-x[19]+1.85*b[40]-3.75*b[54]+190*b[175] <= 185.6)
@constraint(m, e96, x[18]-x[20]+1.85*b[40]-3.75*b[54]+190*b[176] <= 185.6)
@constraint(m, e97, x[18]-x[21]+1.85*b[40]-3.75*b[54]+190*b[177] <= 185.6)
@constraint(m, e98, -x[15]+x[19]+3.225*b[41]-4.54*b[55]+190*b[178] <= 185.1)
@constraint(m, e99, -x[16]+x[19]+3.225*b[41]-4.54*b[55]+190*b[179] <= 185.1)
@constraint(m, e100, -x[18]+x[19]+3.225*b[41]-4.54*b[55]+190*b[181] <= 185.1)
@constraint(m, e101, 3.225*b[41]-4.54*b[55]+190*b[182] <= 185.1)
@constraint(m, e102, x[19]-x[20]+3.225*b[41]-4.54*b[55]+190*b[183] <= 185.1)
@constraint(m, e103, x[19]-x[21]+3.225*b[41]-4.54*b[55]+190*b[184] <= 185.1)
@constraint(m, e104, -x[15]+x[20]+3.65*b[42]-1.7*b[56]+190*b[185] <= 187.4)
@constraint(m, e105, -x[16]+x[20]+3.65*b[42]-1.7*b[56]+190*b[186] <= 187.4)
@constraint(m, e106, -x[17]+x[20]+3.65*b[42]-1.7*b[56]+190*b[187] <= 187.4)
@constraint(m, e107, -x[19]+x[20]+3.65*b[42]-1.7*b[56]+190*b[189] <= 187.4)
@constraint(m, e108, 3.65*b[42]-1.7*b[56]+190*b[190] <= 187.4)
@constraint(m, e109, x[20]-x[21]+3.65*b[42]-1.7*b[56]+190*b[191] <= 187.4)
@constraint(m, e110, -x[15]+x[21]+3.44*b[43]-4.01*b[57]+190*b[192] <= 185.19)
@constraint(m, e111, -x[16]+x[21]+3.44*b[43]-4.01*b[57]+190*b[193] <= 185.19)
@constraint(m, e112, -x[17]+x[21]+3.44*b[43]-4.01*b[57]+190*b[194] <= 185.19)
@constraint(m, e113, -x[18]+x[21]+3.44*b[43]-4.01*b[57]+190*b[195] <= 185.19)
@constraint(m, e114, -x[20]+x[21]+3.44*b[43]-4.01*b[57]+190*b[197] <= 185.19)
@constraint(m, e115, 3.44*b[43]-4.01*b[57]+190*b[198] <= 185.19)
@NLconstraint(m, e116, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[16]+190*b[152] <= 190.0)
@NLconstraint(m, e117, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[17]+190*b[153] <= 190.0)
@NLconstraint(m, e118, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[18]+190*b[154] <= 190.0)
@NLconstraint(m, e119, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[19]+190*b[155] <= 190.0)
@NLconstraint(m, e120, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[20]+190*b[156] <= 190.0)
@NLconstraint(m, e121, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[21]+190*b[157] <= 190.0)
@NLconstraint(m, e122, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]-x[15]+x[16]+190*b[158] <= 190.0)
@NLconstraint(m, e123, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[17]+190*b[159] <= 190.0)
@NLconstraint(m, e124, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[18]+190*b[160] <= 190.0)
@NLconstraint(m, e125, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[19]+190*b[161] <= 190.0)
@NLconstraint(m, e126, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[20]+190*b[162] <= 190.0)
@NLconstraint(m, e127, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[21]+190*b[163] <= 190.0)
@constraint(m, e128, b[58]+b[64]+b[105]+b[111]+b[152]+b[158] >= 1.0)
@constraint(m, e129, b[59]+b[70]+b[106]+b[117]+b[153]+b[164] >= 1.0)
@constraint(m, e130, b[60]+b[77]+b[107]+b[124]+b[154]+b[171] >= 1.0)
@constraint(m, e131, b[61]+b[84]+b[108]+b[131]+b[155]+b[178] >= 1.0)
@constraint(m, e132, b[62]+b[91]+b[109]+b[138]+b[156]+b[185] >= 1.0)
@constraint(m, e133, b[63]+b[98]+b[110]+b[145]+b[157]+b[192] >= 1.0)
@constraint(m, e134, b[58]+b[64]+b[105]+b[111]+b[152]+b[158] >= 1.0)
@constraint(m, e135, b[65]+b[71]+b[112]+b[118]+b[159]+b[165] >= 1.0)
@constraint(m, e136, b[66]+b[78]+b[113]+b[125]+b[160]+b[172] >= 1.0)
@constraint(m, e137, b[67]+b[85]+b[114]+b[132]+b[161]+b[179] >= 1.0)
@constraint(m, e138, b[68]+b[92]+b[115]+b[139]+b[162]+b[186] >= 1.0)
@constraint(m, e139, b[69]+b[99]+b[116]+b[146]+b[163]+b[193] >= 1.0)
@constraint(m, e140, b[59]+b[70]+b[106]+b[117]+b[153]+b[164] >= 1.0)
@constraint(m, e141, b[65]+b[71]+b[112]+b[118]+b[159]+b[165] >= 1.0)
@constraint(m, e142, b[73]+b[79]+b[120]+b[126]+b[167]+b[173] >= 1.0)
@constraint(m, e143, b[74]+b[86]+b[121]+b[133]+b[168]+b[180] >= 1.0)
@constraint(m, e144, b[75]+b[93]+b[122]+b[140]+b[169]+b[187] >= 1.0)
@constraint(m, e145, b[76]+b[100]+b[123]+b[147]+b[170]+b[194] >= 1.0)
@constraint(m, e146, b[60]+b[77]+b[107]+b[124]+b[154]+b[171] >= 1.0)
@constraint(m, e147, b[66]+b[78]+b[113]+b[125]+b[160]+b[172] >= 1.0)
@constraint(m, e148, b[73]+b[79]+b[120]+b[126]+b[167]+b[173] >= 1.0)
@constraint(m, e149, b[81]+b[87]+b[128]+b[134]+b[175]+b[181] >= 1.0)
@constraint(m, e150, b[82]+b[94]+b[129]+b[141]+b[176]+b[188] >= 1.0)
@constraint(m, e151, b[83]+b[101]+b[130]+b[148]+b[177]+b[195] >= 1.0)
@constraint(m, e152, b[61]+b[84]+b[108]+b[131]+b[155]+b[178] >= 1.0)
@constraint(m, e153, b[67]+b[85]+b[114]+b[132]+b[161]+b[179] >= 1.0)
@constraint(m, e154, b[74]+b[86]+b[121]+b[133]+b[168]+b[180] >= 1.0)
@constraint(m, e155, b[81]+b[87]+b[128]+b[134]+b[175]+b[181] >= 1.0)
@constraint(m, e156, b[89]+b[95]+b[136]+b[142]+b[183]+b[189] >= 1.0)
@constraint(m, e157, b[90]+b[102]+b[137]+b[149]+b[184]+b[196] >= 1.0)
@constraint(m, e158, b[62]+b[91]+b[109]+b[138]+b[156]+b[185] >= 1.0)
@constraint(m, e159, b[68]+b[92]+b[115]+b[139]+b[162]+b[186] >= 1.0)
@constraint(m, e160, b[75]+b[93]+b[122]+b[140]+b[169]+b[187] >= 1.0)
@constraint(m, e161, b[82]+b[94]+b[129]+b[141]+b[176]+b[188] >= 1.0)
@constraint(m, e162, b[89]+b[95]+b[136]+b[142]+b[183]+b[189] >= 1.0)
@constraint(m, e163, b[97]+b[103]+b[144]+b[150]+b[191]+b[197] >= 1.0)
@constraint(m, e164, b[63]+b[98]+b[110]+b[145]+b[157]+b[192] >= 1.0)
@constraint(m, e165, b[69]+b[99]+b[116]+b[146]+b[163]+b[193] >= 1.0)
@constraint(m, e166, b[76]+b[100]+b[123]+b[147]+b[170]+b[194] >= 1.0)
@constraint(m, e167, b[83]+b[101]+b[130]+b[148]+b[177]+b[195] >= 1.0)
@constraint(m, e168, b[90]+b[102]+b[137]+b[149]+b[184]+b[196] >= 1.0)
@constraint(m, e169, b[97]+b[103]+b[144]+b[150]+b[191]+b[197] >= 1.0)
@constraint(m, e170, x[3]+6.7575*b[32]+4.135*b[39]-4.135*b[46]+4.135*b[53] <= 8.32)
@constraint(m, e171, x[4]+5.6*b[33]+3.75*b[40]-3.75*b[47]+3.75*b[54] <= 8.35)
@constraint(m, e172, x[5]+7.765*b[34]+4.54*b[41]-4.54*b[48]+4.54*b[55] <= 8.64)
@constraint(m, e173, x[6]+5.35*b[35]+1.7*b[42]-1.7*b[49]+1.7*b[56] <= 8.1)
@constraint(m, e174, x[7]+7.45*b[36]+4.01*b[43]-4.01*b[50]+4.01*b[57] <= 8.2)
@constraint(m, e175, x[10]-6.7575*b[32]-6.7575*b[39]+4.135*b[46] <= -2.2575)
@constraint(m, e176, x[11]-5.6*b[33]-5.6*b[40]+3.75*b[47] <= -1.07)
@constraint(m, e177, x[12]-7.765*b[34]-7.765*b[41]+4.54*b[48] <= -2.945)
@constraint(m, e178, x[13]-5.35*b[35]-5.35*b[42]+1.7*b[49] <= -1.07)
@constraint(m, e179, x[14]-7.45*b[36]-7.45*b[43]+4.01*b[50] <= -3.07)
@constraint(m, e180, x[17]-x[28]+2.6225*b[39]-4.135*b[53] <= -4.815)
@constraint(m, e181, x[18]-x[28]+1.85*b[40]-3.75*b[54] <= -4.4)
@constraint(m, e182, x[19]-x[28]+3.225*b[41]-4.54*b[55] <= -4.9)
@constraint(m, e183, x[20]-x[28]+3.65*b[42]-1.7*b[56] <= -2.6)
@constraint(m, e184, x[21]-x[28]+3.44*b[43]-4.01*b[57] <= -4.81)
@NLconstraint(m, e185, x[22]*b[30]+x[24]*(b[37]-b[44]+b[51])+x[26]*(1-b[30]-b[37]+b[44]-b[51])+x[1] <= 9.0)
@NLconstraint(m, e186, x[23]*b[31]+x[25]*(b[38]-b[45]+b[52])+x[27]*(1-b[31]-b[38]+b[45]-b[52])+x[2] <= 9.0)
@NLconstraint(m, e187, x[24]*b[44]+x[22]*(1-b[30]-b[37])+x[26]*(b[30]+b[37]-b[44])+x[8] <= 5.18)
@NLconstraint(m, e188, x[25]*b[45]+x[23]*(1-b[31]-b[38])+x[27]*(b[31]+b[38]-b[45])+x[9] <= 5.18)
@NLconstraint(m, e189, x[26]*b[51]+x[24]*(1-b[37]-b[51])+x[22]*b[37]+x[15]-x[28] <= 0.0)
@NLconstraint(m, e190, x[27]*b[52]+x[25]*(1-b[38]-b[52])+x[23]*b[38]+x[16]-x[28] <= 0.0)
@constraint(m, e191, b[30]+b[37] <= 1.0)
@constraint(m, e192, b[31]+b[38] <= 1.0)
@constraint(m, e193, b[32]+b[39] <= 1.0)
@constraint(m, e194, b[33]+b[40] <= 1.0)
@constraint(m, e195, b[34]+b[41] <= 1.0)
@constraint(m, e196, b[35]+b[42] <= 1.0)
@constraint(m, e197, b[36]+b[43] <= 1.0)
@constraint(m, e198, b[37]+b[51] <= 1.0)
@constraint(m, e199, b[38]+b[52] <= 1.0)
@constraint(m, e200, b[39]+b[53] <= 1.0)
@constraint(m, e201, b[40]+b[54] <= 1.0)
@constraint(m, e202, b[41]+b[55] <= 1.0)
@constraint(m, e203, b[42]+b[56] <= 1.0)
@constraint(m, e204, b[43]+b[57] <= 1.0)
@constraint(m, e205, b[37]-b[44]+b[51] <= 1.0)
@constraint(m, e206, b[38]-b[45]+b[52] <= 1.0)
@constraint(m, e207, b[39]-b[46]+b[53] <= 1.0)
@constraint(m, e208, b[40]-b[47]+b[54] <= 1.0)
@constraint(m, e209, b[41]-b[48]+b[55] <= 1.0)
@constraint(m, e210, b[42]-b[49]+b[56] <= 1.0)
@constraint(m, e211, b[43]-b[50]+b[57] <= 1.0)
@constraint(m, e212, b[37]-b[44]+b[51] >= 0.0)
@constraint(m, e213, b[38]-b[45]+b[52] >= 0.0)
@constraint(m, e214, b[39]-b[46]+b[53] >= 0.0)
@constraint(m, e215, b[40]-b[47]+b[54] >= 0.0)
@constraint(m, e216, b[41]-b[48]+b[55] >= 0.0)
@constraint(m, e217, b[42]-b[49]+b[56] >= 0.0)
@constraint(m, e218, b[43]-b[50]+b[57] >= 0.0)
@constraint(m, e219, -b[30]-b[37]+b[44]-b[51] <= 0.0)
@constraint(m, e220, -b[31]-b[38]+b[45]-b[52] <= 0.0)
@constraint(m, e221, -b[32]-b[39]+b[46]-b[53] <= 0.0)
@constraint(m, e222, -b[33]-b[40]+b[47]-b[54] <= 0.0)
@constraint(m, e223, -b[34]-b[41]+b[48]-b[55] <= 0.0)
@constraint(m, e224, -b[35]-b[42]+b[49]-b[56] <= 0.0)
@constraint(m, e225, -b[36]-b[43]+b[50]-b[57] <= 0.0)
@constraint(m, e226, -b[30]-b[37]+b[44]-b[51] >= -1.0)
@constraint(m, e227, -b[31]-b[38]+b[45]-b[52] >= -1.0)
@constraint(m, e228, -b[32]-b[39]+b[46]-b[53] >= -1.0)
@constraint(m, e229, -b[33]-b[40]+b[47]-b[54] >= -1.0)
@constraint(m, e230, -b[34]-b[41]+b[48]-b[55] >= -1.0)
@constraint(m, e231, -b[35]-b[42]+b[49]-b[56] >= -1.0)
@constraint(m, e232, -b[36]-b[43]+b[50]-b[57] >= -1.0)
@constraint(m, e233, b[30]+b[37]-b[44] <= 1.0)
@constraint(m, e234, b[31]+b[38]-b[45] <= 1.0)
@constraint(m, e235, b[32]+b[39]-b[46] <= 1.0)
@constraint(m, e236, b[33]+b[40]-b[47] <= 1.0)
@constraint(m, e237, b[34]+b[41]-b[48] <= 1.0)
@constraint(m, e238, b[35]+b[42]-b[49] <= 1.0)
@constraint(m, e239, b[36]+b[43]-b[50] <= 1.0)
@constraint(m, e240, b[30]+b[37]-b[44] >= 0.0)
@constraint(m, e241, b[31]+b[38]-b[45] >= 0.0)
@constraint(m, e242, b[32]+b[39]-b[46] >= 0.0)
@constraint(m, e243, b[33]+b[40]-b[47] >= 0.0)
@constraint(m, e244, b[34]+b[41]-b[48] >= 0.0)
@constraint(m, e245, b[35]+b[42]-b[49] >= 0.0)
@constraint(m, e246, b[36]+b[43]-b[50] >= 0.0)
@NLconstraint(m, e247, -x[22]*x[24]*x[26] == -4.0)
@NLconstraint(m, e248, -x[23]*x[25]*x[27] == -16.0)
@constraint(m, e249, x[22] <= 5.48)
@constraint(m, e250, x[23] <= 10.6)
@constraint(m, e251, x[22] >= 4.62)
@constraint(m, e252, x[23] >= 8.0)
@constraint(m, e253, x[24] <= 2.115)
@constraint(m, e254, x[25] <= 4.535)
@constraint(m, e255, x[24] >= 1.34)
@constraint(m, e256, x[25] >= 3.625)
@constraint(m, e257, x[26] <= 0.54)
@constraint(m, e258, x[27] <= 0.655)
@constraint(m, e259, x[26] >= 0.54)
@constraint(m, e260, x[27] >= 0.655)


# ----- Objective ----- #
@objective(m, Min, x[29])

 
