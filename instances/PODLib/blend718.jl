using JuMP

m = Model()

@variable(m, x[1:222])
for i=136:222
  setcategory(x[i], :Bin)
end

# Bounds Constraints
for i=1:111
  setlowerbound(x[i], 0)
  setupperbound(x[i], 1)
end
for i=112:135
  setlowerbound(x[i], 0)
  setupperbound(x[i], 2)
end

@objective(m, Max, - 0.33*x[1] - 0.33*x[2] - 0.33*x[3] - 0.37*x[4] - 0.37*x[5] - 0.37*x[6] - 0.76*x[7] - 0.76*x[8] - 0.76*x[9] + 7.23*x[10] + 7.23*x[11] + 7.23*x[12] + 5.23*x[13] + 5.23*x[14] + 5.23*x[15] - 1.18*x[16] - 1.18*x[17] - 1.18*x[18] - 1.06*x[19] - 1.06*x[20] - 1.06*x[21] - 0.58*x[22] - 0.58*x[23] - 0.58*x[24] + 7.47*x[25]     + 7.47*x[26] + 7.47*x[27] + 5.48*x[28] + 5.48*x[29] + 5.48*x[30] - 0.23*x[31] - 0.23*x[32] - 0.23*x[33] - 0.58*x[34] - 0.58*x[35] - 0.58*x[36] - 0.29*x[37] - 0.29*x[38] - 0.29*x[39] + 7.83*x[40] + 7.83*x[41] + 7.83*x[42] + 4.82*x[43]     + 4.82*x[44] + 4.82*x[45] - 0.34*x[46] - 0.34*x[47] - 0.34*x[48] - 0.11*x[49] - 0.11*x[50] - 0.11*x[51] + 7.22*x[52] + 7.22*x[53] + 7.22*x[54] + 5.54*x[55]     + 5.54*x[56] + 5.54*x[57] - 0.02*x[58] - 0.02*x[59] - 0.02*x[60] - 0.31*x[61]     - 0.31*x[62] - 0.31*x[63] - 0.18*x[64] - 0.18*x[65] - 0.18*x[66] + 8.01*x[67]     + 8.01*x[68] + 8.01*x[69] + 5.33*x[70] + 5.33*x[71] + 5.33*x[72] - 0.7*x[73] - 0.7*x[74] - 0.7*x[75] - 0.03*x[76] - 0.03*x[77] - 0.03*x[78] - 0.32*x[79] - 0.32*x[80]     - 0.32*x[81] + 7.45*x[82] + 7.45*x[83] + 7.45*x[84] + 4.98*x[85] + 4.98*x[86] + 4.98*x[87] - 0.18*x[136] - 0.18*x[137] - 0.18*x[138] - x[139] - x[140] - x[141]     - 0.03*x[142] - 0.03*x[143] - 0.03*x[144] - 0.88*x[145] - 0.88*x[146] - 0.88*x[147]     - 0.19*x[148] - 0.19*x[149] - 0.19*x[150] - 0.46*x[151] - 0.46*x[152] - 0.46*x[153]     - 0.16*x[154] - 0.16*x[155] - 0.16*x[156] - 0.64*x[157] - 0.64*x[158] - 0.64*x[159] - 0.19*x[160] - 0.19*x[161] - 0.19*x[162] - 0.48*x[163] - 0.48*x[164] - 0.48*x[165]     - 0.59*x[166] - 0.59*x[167] - 0.59*x[168] - 0.38*x[169] - 0.38*x[170] - 0.38*x[171]     - 0.25*x[172] - 0.25*x[173] - 0.25*x[174] - 0.62*x[175] - 0.62*x[176] - 0.62*x[177]     - 0.82*x[178] - 0.82*x[179] - 0.82*x[180] - 0.73*x[181] - 0.73*x[182] - 0.73*x[183]     - 0.58*x[184] - 0.58*x[185] - 0.58*x[186] - 0.91*x[187] - 0.91*x[188] - 0.91*x[189]     - 0.82*x[190] - 0.82*x[191] - 0.82*x[192] - 0.59*x[193] - 0.59*x[194] - 0.59*x[195] - 0.43*x[196] - 0.43*x[197] - 0.43*x[198] - 0.16*x[199] - 0.16*x[200] - 0.16*x[201] - 0.42*x[202] - 0.42*x[203] - 0.42*x[204] - 0.6*x[205] - 0.6*x[206] - 0.6*x[207]     - 0.7*x[208] - 0.7*x[209] - 0.7*x[210] - 0.64*x[211] - 0.64*x[212] - 0.64*x[213]     - 0.07*x[214] - 0.07*x[215] - 0.07*x[216] - 0.53*x[217] - 0.53*x[218] - 0.53*x[219]     - 0.41*x[220] - 0.41*x[221] - 0.41*x[222])
@NLconstraint(m, x[88]*x[118]-0.7*x[16]+0.1*x[31]+0.1*x[34]+0.1*x[37]+0.1*x[40]+0.1*x[43]-0.5*x[58]-0.8*x[73] ==0.1)  #= e10: =#
@NLconstraint(m, x[91]*x[121]-0.7*x[1]-0.7*x[19]-0.1*x[31]-0.5*x[61]-0.8*x[76] ==0)  #= e11: =#
@NLconstraint(m, x[94]*x[124]-0.7*x[4]-0.1*x[34]+0.5*x[58]+0.5*x[61]+0.5*x[64]+0.5*x[67]+0.5*x[70]-0.8*x[79] ==0.9)  #= e12: =#
@NLconstraint(m, x[97]*x[127]-0.7*x[7]-0.7*x[22]-0.1*x[37]-0.5*x[64]+0.8*x[73]+0.8*x[76]+0.8*x[79]+0.8*x[82]+0.8*x[85] ==0.96)  #= e13: =#
@NLconstraint(m, x[100]*x[118]-0.5*x[16]+0.7*x[31]+0.7*x[34]+0.7*x[37]+0.7*x[40]+0.7*x[43]-0.1*x[46]-0.1*x[58]-0.8*x[73] ==0.7)  #= e14: =#
@NLconstraint(m, x[103]*x[121]-0.1*x[1]-0.5*x[19]-0.7*x[31]+0.1*x[46]+0.1*x[49]+0.1*x[52]+0.1*x[55]-0.1*x[61]-0.8*x[76] ==0.1)  #= e15: =#
@NLconstraint(m, x[106]*x[124]-0.1*x[4]-0.7*x[34]+0.1*x[58]+0.1*x[61]+0.1*x[64]+0.1*x[67]+0.1*x[70]-0.8*x[79] ==0.18)  #= e16: =#
@NLconstraint(m, x[109]*x[127]-0.1*x[7]-0.5*x[22]-0.7*x[37]-0.1*x[49]-0.1*x[64]+0.8*x[73]+0.8*x[76]+0.8*x[79]+0.8*x[82]+0.8*x[85] ==0.96)  #= e17: =#
@NLconstraint(m, x[89]*x[119]-(x[88]*x[118]+x[91]*x[47]+x[94]*x[59]+x[97]*x[74]-(x[88]*x[32]+x[88]*x[35]+x[88]*x[38]+x[88]*x[41]+x[88]*x[44]))-0.7*x[17] ==0)  #= e34: =#
@NLconstraint(m, x[90]*x[120]-(x[89]*x[119]+x[92]*x[48]+x[95]*x[60]+x[98]*x[75]-(x[89]*x[33]+x[89]*x[36]+x[89]*x[39]+x[89]*x[42]+x[89]*x[45]))-0.7*x[18] ==0)  #= e35: =#
@NLconstraint(m, x[92]*x[122]-(x[91]*x[121]+x[88]*x[32]+x[94]*x[62]+x[97]*x[77]-(x[91]*x[47]+x[91]*x[50]+x[91]*x[53]+x[91]*x[56]))-0.7*x[2]-0.7*x[20] ==0)  #= e36: =#
@NLconstraint(m, x[93]*x[123]-(x[92]*x[122]+x[89]*x[33]+x[95]*x[63]+x[98]*x[78]-(x[92]*x[48]+x[92]*x[51]+x[92]*x[54]+x[92]*x[57]))-0.7*x[3]-0.7*x[21] ==0)  #= e37: =#
@NLconstraint(m, x[95]*x[125]-(x[94]*x[124]+x[88]*x[35]+x[97]*x[80]-(x[94]*x[59]+x[94]*x[62]+x[94]*x[65]+x[94]*x[68]+x[94]*x[71]))-0.7*x[5] ==0)  #= e38: =#
@NLconstraint(m, x[96]*x[126]-(x[95]*x[125]+x[89]*x[36]+x[98]*x[81]-(x[95]*x[60]+x[95]*x[63]+x[95]*x[66]+x[95]*x[69]+x[95]*x[72]))-0.7*x[6] ==0)  #= e39: =#
@NLconstraint(m, x[98]*x[128]-(x[97]*x[127]+x[88]*x[38]+x[91]*x[50]+x[94]*x[65]-(x[97]*x[74]+x[97]*x[77]+x[97]*x[80]+x[97]*x[83]+x[97]*x[86]))-0.7*x[8]-0.7*x[23] ==0)  #= e40: =#
@NLconstraint(m, x[99]*x[129]-(x[98]*x[128]+x[89]*x[39]+x[92]*x[51]+x[95]*x[66]-(x[98]*x[75]+x[98]*x[78]+x[98]*x[81]+x[98]*x[84]+x[98]*x[87]))-0.7*x[9]-0.7*x[24] ==0)  #= e41: =#
@NLconstraint(m, x[101]*x[119]-(x[100]*x[118]+x[103]*x[47]+x[106]*x[59]+x[109]*x[74]-(x[100]*x[32]+x[100]*x[35]+x[100]*x[38]+x[100]*x[41]+x[100]*x[44]))-0.5*x[17] ==0)  #= e42: =#
@NLconstraint(m, x[102]*x[120]-(x[101]*x[119]+x[104]*x[48]+x[107]*x[60]+x[110]*x[75]-(x[101]*x[33]+x[101]*x[36]+x[101]*x[39]+x[101]*x[42]+x[101]*x[45]))-0.5*x[18] ==0)  #= e43: =#
@NLconstraint(m, x[104]*x[122]-(x[103]*x[121]+x[100]*x[32]+x[106]*x[62]+x[109]*x[77]-(x[103]*x[47]+x[103]*x[50]+x[103]*x[53]+x[103]*x[56]))-0.1*x[2]-0.5*x[20] ==0)  #= e44: =#
@NLconstraint(m, x[105]*x[123]-(x[104]*x[122]+x[101]*x[33]+x[107]*x[63]+x[110]*x[78]-(x[104]*x[48]+x[104]*x[51]+x[104]*x[54]+x[104]*x[57]))-0.1*x[3]-0.5*x[21] ==0)  #= e45: =#
@NLconstraint(m, x[107]*x[125]-(x[106]*x[124]+x[100]*x[35]+x[109]*x[80]-(x[106]*x[59]+x[106]*x[62]+x[106]*x[65]+x[106]*x[68]+x[106]*x[71]))-0.1*x[5] ==0)  #= e46: =#
@NLconstraint(m, x[108]*x[126]-(x[107]*x[125]+x[101]*x[36]+x[110]*x[81]-(x[107]*x[60]+x[107]*x[63]+x[107]*x[66]+x[107]*x[69]+x[107]*x[72]))-0.1*x[6] ==0)  #= e47: =#
@NLconstraint(m, x[110]*x[128]-(x[109]*x[127]+x[100]*x[38]+x[103]*x[50]+x[106]*x[65]-(x[109]*x[74]+x[109]*x[77]+x[109]*x[80]+x[109]*x[83]+x[109]*x[86]))-0.1*x[8]-0.5*x[23] ==0)  #= e48: =#
@NLconstraint(m, x[111]*x[129]-(x[110]*x[128]+x[101]*x[39]+x[104]*x[51]+x[107]*x[66]-(x[110]*x[75]+x[110]*x[78]+x[110]*x[81]+x[110]*x[84]+x[110]*x[87]))-0.1*x[9]-0.5*x[24] ==0)  #= e49: =#

@constraint(m, x[1]+x[4]+x[7]+x[10]+x[13]+x[112] ==1.1)  #= e2: =#
@constraint(m, x[16]+x[19]+x[22]+x[25]+x[28]+x[115] ==2.1)  #= e3: =#
@constraint(m, -x[16]+x[31]+x[34]+x[37]+x[40]+x[43]-x[46]-x[58]-x[73]+x[118] ==1)  #= e4: =#
@constraint(m, -x[1]-x[19]-x[31]+x[46]+x[49]+x[52]+x[55]-x[61]-x[76]+x[121] ==1)  #= e5: =#
@constraint(m, -x[4]-x[34]+x[58]+x[61]+x[64]+x[67]+x[70]-x[79]+x[124] ==1.8)  #= e6: =#
@constraint(m, -x[7]-x[22]-x[37]-x[49]-x[64]+x[73]+x[76]+x[79]+x[82]+x[85]+x[127] ==1.2)  #= e7: =#
@constraint(m, -x[10]-x[25]-x[40]-x[52]-x[67]-x[82]+x[130] ==1.12)  #= e8: =#
@constraint(m, -x[13]-x[28]-x[43]-x[55]-x[70]-x[85]+x[133] ==1.57)  #= e9: =#
@constraint(m, x[2]+x[5]+x[8]+x[11]+x[14]-x[112]+x[113] ==0.8)  #= e18: =#
@constraint(m, x[3]+x[6]+x[9]+x[12]+x[15]-x[113]+x[114] ==0.4)  #= e19: =#
@constraint(m, x[17]+x[20]+x[23]+x[26]+x[29]-x[115]+x[116] ==0.5)  #= e20: =#
@constraint(m, x[18]+x[21]+x[24]+x[27]+x[30]-x[116]+x[117] ==0.8)  #= e21: =#
@constraint(m, -x[17]+x[32]+x[35]+x[38]+x[41]+x[44]-x[47]-x[59]-x[74]-x[118]+x[119] ==0)  #= e22: =#
@constraint(m, -x[18]+x[33]+x[36]+x[39]+x[42]+x[45]-x[48]-x[60]-x[75]-x[119]+x[120] ==0)  #= e23: =#
@constraint(m, -x[2]-x[20]-x[32]+x[47]+x[50]+x[53]+x[56]-x[62]-x[77]-x[121]+x[122] ==0)  #= e24: =#
@constraint(m, -x[3]-x[21]-x[33]+x[48]+x[51]+x[54]+x[57]-x[63]-x[78]-x[122]+x[123] ==0)  #= e25: =#
@constraint(m, -x[5]-x[35]+x[59]+x[62]+x[65]+x[68]+x[71]-x[80]-x[124]+x[125] ==0)  #= e26: =#
@constraint(m, -x[6]-x[36]+x[60]+x[63]+x[66]+x[69]+x[72]-x[81]-x[125]+x[126] ==0)  #= e27: =#
@constraint(m, -x[8]-x[23]-x[38]-x[50]-x[65]+x[74]+x[77]+x[80]+x[83]+x[86]-x[127]+x[128] ==0)  #= e28: =#
@constraint(m, -x[9]-x[24]-x[39]-x[51]-x[66]+x[75]+x[78]+x[81]+x[84]+x[87]-x[128]+x[129] ==0)  #= e29: =#
@constraint(m, -x[11]-x[26]-x[41]-x[53]-x[68]-x[83]-x[130]+x[131] ==-0.17)  #= e30: =#
@constraint(m, -x[12]-x[27]-x[42]-x[54]-x[69]-x[84]-x[131]+x[132] ==-0.83)  #= e31: =#
@constraint(m, -x[14]-x[29]-x[44]-x[56]-x[71]-x[86]-x[133]+x[134] ==-0.39)  #= e32: =#
@constraint(m, -x[15]-x[30]-x[45]-x[57]-x[72]-x[87]-x[134]+x[135] ==-0.8)  #= e33: =#
@constraint(m, x[1]-x[136]<=0)  #= e50: =#
@constraint(m, x[2]-x[137]<=0)  #= e51: =#
@constraint(m, x[3]-x[138]<=0)  #= e52: =#
@constraint(m, x[4]-x[139]<=0)  #= e53: =#
@constraint(m, x[5]-x[140]<=0)  #= e54: =#
@constraint(m, x[6]-x[141]<=0)  #= e55: =#
@constraint(m, x[7]-x[142]<=0)  #= e56: =#
@constraint(m, x[8]-x[143]<=0)  #= e57: =#
@constraint(m, x[9]-x[144]<=0)  #= e58: =#
@constraint(m, x[10]-x[145]<=0)  #= e59: =#
@constraint(m, x[11]-x[146]<=0)  #= e60: =#
@constraint(m, x[12]-x[147]<=0)  #= e61: =#
@constraint(m, x[13]-x[148]<=0)  #= e62: =#
@constraint(m, x[14]-x[149]<=0)  #= e63: =#
@constraint(m, x[15]-x[150]<=0)  #= e64: =#
@constraint(m, x[16]-x[151]<=0)  #= e65: =#
@constraint(m, x[17]-x[152]<=0)  #= e66: =#
@constraint(m, x[18]-x[153]<=0)  #= e67: =#
@constraint(m, x[19]-x[154]<=0)  #= e68: =#
@constraint(m, x[20]-x[155]<=0)  #= e69: =#
@constraint(m, x[21]-x[156]<=0)  #= e70: =#
@constraint(m, x[22]-x[157]<=0)  #= e71: =#
@constraint(m, x[23]-x[158]<=0)  #= e72: =#
@constraint(m, x[24]-x[159]<=0)  #= e73: =#
@constraint(m, x[25]-x[160]<=0)  #= e74: =#
@constraint(m, x[26]-x[161]<=0)  #= e75: =#
@constraint(m, x[27]-x[162]<=0)  #= e76: =#
@constraint(m, x[28]-x[163]<=0)  #= e77: =#
@constraint(m, x[29]-x[164]<=0)  #= e78: =#
@constraint(m, x[30]-x[165]<=0)  #= e79: =#
@constraint(m, x[31]-x[166]<=0)  #= e80: =#
@constraint(m, x[32]-x[167]<=0)  #= e81: =#
@constraint(m, x[33]-x[168]<=0)  #= e82: =#
@constraint(m, x[34]-x[169]<=0)  #= e83: =#
@constraint(m, x[35]-x[170]<=0)  #= e84: =#
@constraint(m, x[36]-x[171]<=0)  #= e85: =#
@constraint(m, x[37]-x[172]<=0)  #= e86: =#
@constraint(m, x[38]-x[173]<=0)  #= e87: =#
@constraint(m, x[39]-x[174]<=0)  #= e88: =#
@constraint(m, x[40]-x[175]<=0)  #= e89: =#
@constraint(m, x[41]-x[176]<=0)  #= e90: =#
@constraint(m, x[42]-x[177]<=0)  #= e91: =#
@constraint(m, x[43]-x[178]<=0)  #= e92: =#
@constraint(m, x[44]-x[179]<=0)  #= e93: =#
@constraint(m, x[45]-x[180]<=0)  #= e94: =#
@constraint(m, x[46]-x[181]<=0)  #= e95: =#
@constraint(m, x[47]-x[182]<=0)  #= e96: =#
@constraint(m, x[48]-x[183]<=0)  #= e97: =#
@constraint(m, x[49]-x[184]<=0)  #= e98: =#
@constraint(m, x[50]-x[185]<=0)  #= e99: =#
@constraint(m, x[51]-x[186]<=0)  #= e100: =#
@constraint(m, x[52]-x[187]<=0)  #= e101: =#
@constraint(m, x[53]-x[188]<=0)  #= e102: =#
@constraint(m, x[54]-x[189]<=0)  #= e103: =#
@constraint(m, x[55]-x[190]<=0)  #= e104: =#
@constraint(m, x[56]-x[191]<=0)  #= e105: =#
@constraint(m, x[57]-x[192]<=0)  #= e106: =#
@constraint(m, x[58]-x[193]<=0)  #= e107: =#
@constraint(m, x[59]-x[194]<=0)  #= e108: =#
@constraint(m, x[60]-x[195]<=0)  #= e109: =#
@constraint(m, x[61]-x[196]<=0)  #= e110: =#
@constraint(m, x[62]-x[197]<=0)  #= e111: =#
@constraint(m, x[63]-x[198]<=0)  #= e112: =#
@constraint(m, x[64]-x[199]<=0)  #= e113: =#
@constraint(m, x[65]-x[200]<=0)  #= e114: =#
@constraint(m, x[66]-x[201]<=0)  #= e115: =#
@constraint(m, x[67]-x[202]<=0)  #= e116: =#
@constraint(m, x[68]-x[203]<=0)  #= e117: =#
@constraint(m, x[69]-x[204]<=0)  #= e118: =#
@constraint(m, x[70]-x[205]<=0)  #= e119: =#
@constraint(m, x[71]-x[206]<=0)  #= e120: =#
@constraint(m, x[72]-x[207]<=0)  #= e121: =#
@constraint(m, x[73]-x[208]<=0)  #= e122: =#
@constraint(m, x[74]-x[209]<=0)  #= e123: =#
@constraint(m, x[75]-x[210]<=0)  #= e124: =#
@constraint(m, x[76]-x[211]<=0)  #= e125: =#
@constraint(m, x[77]-x[212]<=0)  #= e126: =#
@constraint(m, x[78]-x[213]<=0)  #= e127: =#
@constraint(m, x[79]-x[214]<=0)  #= e128: =#
@constraint(m, x[80]-x[215]<=0)  #= e129: =#
@constraint(m, x[81]-x[216]<=0)  #= e130: =#
@constraint(m, x[82]-x[217]<=0)  #= e131: =#
@constraint(m, x[83]-x[218]<=0)  #= e132: =#
@constraint(m, x[84]-x[219]<=0)  #= e133: =#
@constraint(m, x[85]-x[220]<=0)  #= e134: =#
@constraint(m, x[86]-x[221]<=0)  #= e135: =#
@constraint(m, x[87]-x[222]<=0)  #= e136: =#
@constraint(m, x[145]<=0.8)  #= e224: =#
@constraint(m, x[146]<=0.8)  #= e225: =#
@constraint(m, x[147]<=0.8)  #= e226: =#
@constraint(m, x[148]<=1.2)  #= e227: =#
@constraint(m, x[149]<=1.2)  #= e228: =#
@constraint(m, x[150]<=1.2)  #= e229: =#
@constraint(m, x[160]<=0.8)  #= e230: =#
@constraint(m, x[161]<=0.8)  #= e231: =#
@constraint(m, x[162]<=0.8)  #= e232: =#
@constraint(m, x[163]<=1.2)  #= e233: =#
@constraint(m, x[164]<=1.2)  #= e234: =#
@constraint(m, x[165]<=1.2)  #= e235: =#
@constraint(m, x[145]<=1.1)  #= e236: =#
@constraint(m, x[146]<=1.1)  #= e237: =#
@constraint(m, x[147]<=1.1)  #= e238: =#
@constraint(m, x[148]<=0.9)  #= e239: =#
@constraint(m, x[149]<=0.9)  #= e240: =#
@constraint(m, x[150]<=0.9)  #= e241: =#
@constraint(m, x[160]<=1.5)  #= e242: =#
@constraint(m, x[161]<=1.5)  #= e243: =#
@constraint(m, x[162]<=1.5)  #= e244: =#
@constraint(m, x[163]<=1.3)  #= e245: =#
@constraint(m, x[164]<=1.3)  #= e246: =#
@constraint(m, x[165]<=1.3)  #= e247: =#
@constraint(m, -x[145]>=-1.3)  #= e248: =#
@constraint(m, -x[146]>=-1.3)  #= e249: =#
@constraint(m, -x[147]>=-1.3)  #= e250: =#
@constraint(m, -x[148]>=-1.2)  #= e251: =#
@constraint(m, -x[149]>=-1.2)  #= e252: =#
@constraint(m, -x[150]>=-1.2)  #= e253: =#
@constraint(m, -x[160]>=-1.3)  #= e254: =#
@constraint(m, -x[161]>=-1.3)  #= e255: =#
@constraint(m, -x[162]>=-1.3)  #= e256: =#
@constraint(m, -x[163]>=-1.2)  #= e257: =#
@constraint(m, -x[164]>=-1.2)  #= e258: =#
@constraint(m, -x[165]>=-1.2)  #= e259: =#
@constraint(m, -x[145]>=-1.4)  #= e260: =#
@constraint(m, -x[146]>=-1.4)  #= e261: =#
@constraint(m, -x[147]>=-1.4)  #= e262: =#
@constraint(m, -x[148]>=-1.5)  #= e263: =#
@constraint(m, -x[149]>=-1.5)  #= e264: =#
@constraint(m, -x[150]>=-1.5)  #= e265: =#
@constraint(m, -x[160]>=-1)  #= e266: =#
@constraint(m, -x[161]>=-1)  #= e267: =#
@constraint(m, -x[162]>=-1)  #= e268: =#
@constraint(m, -x[163]>=-1.1)  #= e269: =#
@constraint(m, -x[164]>=-1.1)  #= e270: =#
@constraint(m, -x[165]>=-1.1)  #= e271: =#
@constraint(m, -x[88]+x[176]<=0.1)  #= e272: =#
@constraint(m, -x[89]+x[177]<=0.1)  #= e273: =#
@constraint(m, -x[88]+x[179]<=0.5)  #= e274: =#
@constraint(m, -x[89]+x[180]<=0.5)  #= e275: =#
@constraint(m, -x[91]+x[188]<=0.1)  #= e276: =#
@constraint(m, -x[92]+x[189]<=0.1)  #= e277: =#
@constraint(m, -x[91]+x[191]<=0.5)  #= e278: =#
@constraint(m, -x[92]+x[192]<=0.5)  #= e279: =#
@constraint(m, -x[94]+x[203]<=0.1)  #= e280: =#
@constraint(m, -x[95]+x[204]<=0.1)  #= e281: =#
@constraint(m, -x[94]+x[206]<=0.5)  #= e282: =#
@constraint(m, -x[95]+x[207]<=0.5)  #= e283: =#
@constraint(m, -x[97]+x[218]<=0.1)  #= e284: =#
@constraint(m, -x[98]+x[219]<=0.1)  #= e285: =#
@constraint(m, -x[97]+x[221]<=0.5)  #= e286: =#
@constraint(m, -x[98]+x[222]<=0.5)  #= e287: =#
@constraint(m, -x[100]+x[176]<=1)  #= e288: =#
@constraint(m, -x[101]+x[177]<=1)  #= e289: =#
@constraint(m, -x[100]+x[179]<=0.8)  #= e290: =#
@constraint(m, -x[101]+x[180]<=0.8)  #= e291: =#
@constraint(m, -x[103]+x[188]<=1)  #= e292: =#
@constraint(m, -x[104]+x[189]<=1)  #= e293: =#
@constraint(m, -x[103]+x[191]<=0.8)  #= e294: =#
@constraint(m, -x[104]+x[192]<=0.8)  #= e295: =#
@constraint(m, -x[106]+x[203]<=1)  #= e296: =#
@constraint(m, -x[107]+x[204]<=1)  #= e297: =#
@constraint(m, -x[106]+x[206]<=0.8)  #= e298: =#
@constraint(m, -x[107]+x[207]<=0.8)  #= e299: =#
@constraint(m, -x[109]+x[218]<=1)  #= e300: =#
@constraint(m, -x[110]+x[219]<=1)  #= e301: =#
@constraint(m, -x[109]+x[221]<=0.8)  #= e302: =#
@constraint(m, -x[110]+x[222]<=0.8)  #= e303: =#
@constraint(m, -x[88]-x[176]>=-2)  #= e304: =#
@constraint(m, -x[89]-x[177]>=-2)  #= e305: =#
@constraint(m, -x[88]-x[179]>=-1.9)  #= e306: =#
@constraint(m, -x[89]-x[180]>=-1.9)  #= e307: =#
@constraint(m, -x[91]-x[188]>=-2)  #= e308: =#
@constraint(m, -x[92]-x[189]>=-2)  #= e309: =#
@constraint(m, -x[91]-x[191]>=-1.9)  #= e310: =#
@constraint(m, -x[92]-x[192]>=-1.9)  #= e311: =#
@constraint(m, -x[94]-x[203]>=-2)  #= e312: =#
@constraint(m, -x[95]-x[204]>=-2)  #= e313: =#
@constraint(m, -x[94]-x[206]>=-1.9)  #= e314: =#
@constraint(m, -x[95]-x[207]>=-1.9)  #= e315: =#
@constraint(m, -x[97]-x[218]>=-2)  #= e316: =#
@constraint(m, -x[98]-x[219]>=-2)  #= e317: =#
@constraint(m, -x[97]-x[221]>=-1.9)  #= e318: =#
@constraint(m, -x[98]-x[222]>=-1.9)  #= e319: =#
@constraint(m, -x[100]-x[176]>=-1.5)  #= e320: =#
@constraint(m, -x[101]-x[177]>=-1.5)  #= e321: =#
@constraint(m, -x[100]-x[179]>=-1.6)  #= e322: =#
@constraint(m, -x[101]-x[180]>=-1.6)  #= e323: =#
@constraint(m, -x[103]-x[188]>=-1.5)  #= e324: =#
@constraint(m, -x[104]-x[189]>=-1.5)  #= e325: =#
@constraint(m, -x[103]-x[191]>=-1.6)  #= e326: =#
@constraint(m, -x[104]-x[192]>=-1.6)  #= e327: =#
@constraint(m, -x[106]-x[203]>=-1.5)  #= e328: =#
@constraint(m, -x[107]-x[204]>=-1.5)  #= e329: =#
@constraint(m, -x[106]-x[206]>=-1.6)  #= e330: =#
@constraint(m, -x[107]-x[207]>=-1.6)  #= e331: =#
@constraint(m, -x[109]-x[218]>=-1.5)  #= e332: =#
@constraint(m, -x[110]-x[219]>=-1.5)  #= e333: =#
@constraint(m, -x[109]-x[221]>=-1.6)  #= e334: =#
@constraint(m, -x[110]-x[222]>=-1.6)  #= e335: =#
@constraint(m, x[175]<=0.2)  #= e336: =#
@constraint(m, x[178]<=0.6)  #= e337: =#
@constraint(m, x[187]<=0.1)  #= e338: =#
@constraint(m, x[190]<=0.5)  #= e339: =#
@constraint(m, x[202]<=0.6)  #= e340: =#
@constraint(m, x[205]<=1)  #= e341: =#
@constraint(m, x[217]<=0.9)  #= e342: =#
@constraint(m, x[220]<=1.3)  #= e343: =#
@constraint(m, x[175]<=1.7)  #= e344: =#
@constraint(m, x[178]<=1.5)  #= e345: =#
@constraint(m, x[187]<=1.1)  #= e346: =#
@constraint(m, x[190]<=0.9)  #= e347: =#
@constraint(m, x[202]<=1.1)  #= e348: =#
@constraint(m, x[205]<=0.9)  #= e349: =#
@constraint(m, x[217]<=1.8)  #= e350: =#
@constraint(m, x[220]<=1.6)  #= e351: =#
@constraint(m, -x[175]>=-1.9)  #= e352: =#
@constraint(m, -x[178]>=-1.8)  #= e353: =#
@constraint(m, -x[187]>=-2)  #= e354: =#
@constraint(m, -x[190]>=-1.9)  #= e355: =#
@constraint(m, -x[202]>=-1.5)  #= e356: =#
@constraint(m, -x[205]>=-1.4)  #= e357: =#
@constraint(m, -x[217]>=-1.2)  #= e358: =#
@constraint(m, -x[220]>=-1.1)  #= e359: =#
@constraint(m, -x[175]>=-0.8)  #= e360: =#
@constraint(m, -x[178]>=-0.9)  #= e361: =#
@constraint(m, -x[187]>=-1.4)  #= e362: =#
@constraint(m, -x[190]>=-1.5)  #= e363: =#
@constraint(m, -x[202]>=-1.4)  #= e364: =#
@constraint(m, -x[205]>=-1.5)  #= e365: =#
@constraint(m, -x[217]>=-0.7)  #= e366: =#
@constraint(m, -x[220]>=-0.8)  #= e367: =#
@constraint(m, x[151]+x[166]<=1)  #= e368: =#
@constraint(m, x[152]+x[167]<=1)  #= e369: =#
@constraint(m, x[153]+x[168]<=1)  #= e370: =#
@constraint(m, x[151]+x[169]<=1)  #= e371: =#
@constraint(m, x[152]+x[170]<=1)  #= e372: =#
@constraint(m, x[153]+x[171]<=1)  #= e373: =#
@constraint(m, x[151]+x[172]<=1)  #= e374: =#
@constraint(m, x[152]+x[173]<=1)  #= e375: =#
@constraint(m, x[153]+x[174]<=1)  #= e376: =#
@constraint(m, x[151]+x[175]<=1)  #= e377: =#
@constraint(m, x[152]+x[176]<=1)  #= e378: =#
@constraint(m, x[153]+x[177]<=1)  #= e379: =#
@constraint(m, x[151]+x[178]<=1)  #= e380: =#
@constraint(m, x[152]+x[179]<=1)  #= e381: =#
@constraint(m, x[153]+x[180]<=1)  #= e382: =#
@constraint(m, x[166]+x[181]<=1)  #= e383: =#
@constraint(m, x[167]+x[182]<=1)  #= e384: =#
@constraint(m, x[168]+x[183]<=1)  #= e385: =#
@constraint(m, x[169]+x[181]<=1)  #= e386: =#
@constraint(m, x[170]+x[182]<=1)  #= e387: =#
@constraint(m, x[171]+x[183]<=1)  #= e388: =#
@constraint(m, x[172]+x[181]<=1)  #= e389: =#
@constraint(m, x[173]+x[182]<=1)  #= e390: =#
@constraint(m, x[174]+x[183]<=1)  #= e391: =#
@constraint(m, x[175]+x[181]<=1)  #= e392: =#
@constraint(m, x[176]+x[182]<=1)  #= e393: =#
@constraint(m, x[177]+x[183]<=1)  #= e394: =#
@constraint(m, x[178]+x[181]<=1)  #= e395: =#
@constraint(m, x[179]+x[182]<=1)  #= e396: =#
@constraint(m, x[180]+x[183]<=1)  #= e397: =#
@constraint(m, x[166]+x[193]<=1)  #= e398: =#
@constraint(m, x[167]+x[194]<=1)  #= e399: =#
@constraint(m, x[168]+x[195]<=1)  #= e400: =#
@constraint(m, x[169]+x[193]<=1)  #= e401: =#
@constraint(m, x[170]+x[194]<=1)  #= e402: =#
@constraint(m, x[171]+x[195]<=1)  #= e403: =#
@constraint(m, x[172]+x[193]<=1)  #= e404: =#
@constraint(m, x[173]+x[194]<=1)  #= e405: =#
@constraint(m, x[174]+x[195]<=1)  #= e406: =#
@constraint(m, x[175]+x[193]<=1)  #= e407: =#
@constraint(m, x[176]+x[194]<=1)  #= e408: =#
@constraint(m, x[177]+x[195]<=1)  #= e409: =#
@constraint(m, x[178]+x[193]<=1)  #= e410: =#
@constraint(m, x[179]+x[194]<=1)  #= e411: =#
@constraint(m, x[180]+x[195]<=1)  #= e412: =#
@constraint(m, x[166]+x[208]<=1)  #= e413: =#
@constraint(m, x[167]+x[209]<=1)  #= e414: =#
@constraint(m, x[168]+x[210]<=1)  #= e415: =#
@constraint(m, x[169]+x[208]<=1)  #= e416: =#
@constraint(m, x[170]+x[209]<=1)  #= e417: =#
@constraint(m, x[171]+x[210]<=1)  #= e418: =#
@constraint(m, x[172]+x[208]<=1)  #= e419: =#
@constraint(m, x[173]+x[209]<=1)  #= e420: =#
@constraint(m, x[174]+x[210]<=1)  #= e421: =#
@constraint(m, x[175]+x[208]<=1)  #= e422: =#
@constraint(m, x[176]+x[209]<=1)  #= e423: =#
@constraint(m, x[177]+x[210]<=1)  #= e424: =#
@constraint(m, x[178]+x[208]<=1)  #= e425: =#
@constraint(m, x[179]+x[209]<=1)  #= e426: =#
@constraint(m, x[180]+x[210]<=1)  #= e427: =#
@constraint(m, x[136]+x[181]<=1)  #= e428: =#
@constraint(m, x[137]+x[182]<=1)  #= e429: =#
@constraint(m, x[138]+x[183]<=1)  #= e430: =#
@constraint(m, x[136]+x[184]<=1)  #= e431: =#
@constraint(m, x[137]+x[185]<=1)  #= e432: =#
@constraint(m, x[138]+x[186]<=1)  #= e433: =#
@constraint(m, x[136]+x[187]<=1)  #= e434: =#
@constraint(m, x[137]+x[188]<=1)  #= e435: =#
@constraint(m, x[138]+x[189]<=1)  #= e436: =#
@constraint(m, x[136]+x[190]<=1)  #= e437: =#
@constraint(m, x[137]+x[191]<=1)  #= e438: =#
@constraint(m, x[138]+x[192]<=1)  #= e439: =#
@constraint(m, x[154]+x[181]<=1)  #= e440: =#
@constraint(m, x[155]+x[182]<=1)  #= e441: =#
@constraint(m, x[156]+x[183]<=1)  #= e442: =#
@constraint(m, x[154]+x[184]<=1)  #= e443: =#
@constraint(m, x[155]+x[185]<=1)  #= e444: =#
@constraint(m, x[156]+x[186]<=1)  #= e445: =#
@constraint(m, x[154]+x[187]<=1)  #= e446: =#
@constraint(m, x[155]+x[188]<=1)  #= e447: =#
@constraint(m, x[156]+x[189]<=1)  #= e448: =#
@constraint(m, x[154]+x[190]<=1)  #= e449: =#
@constraint(m, x[155]+x[191]<=1)  #= e450: =#
@constraint(m, x[156]+x[192]<=1)  #= e451: =#
@constraint(m, x[166]+x[181]<=1)  #= e452: =#
@constraint(m, x[167]+x[182]<=1)  #= e453: =#
@constraint(m, x[168]+x[183]<=1)  #= e454: =#
@constraint(m, x[166]+x[184]<=1)  #= e455: =#
@constraint(m, x[167]+x[185]<=1)  #= e456: =#
@constraint(m, x[168]+x[186]<=1)  #= e457: =#
@constraint(m, x[166]+x[187]<=1)  #= e458: =#
@constraint(m, x[167]+x[188]<=1)  #= e459: =#
@constraint(m, x[168]+x[189]<=1)  #= e460: =#
@constraint(m, x[166]+x[190]<=1)  #= e461: =#
@constraint(m, x[167]+x[191]<=1)  #= e462: =#
@constraint(m, x[168]+x[192]<=1)  #= e463: =#
@constraint(m, x[181]+x[196]<=1)  #= e464: =#
@constraint(m, x[182]+x[197]<=1)  #= e465: =#
@constraint(m, x[183]+x[198]<=1)  #= e466: =#
@constraint(m, x[184]+x[196]<=1)  #= e467: =#
@constraint(m, x[185]+x[197]<=1)  #= e468: =#
@constraint(m, x[186]+x[198]<=1)  #= e469: =#
@constraint(m, x[187]+x[196]<=1)  #= e470: =#
@constraint(m, x[188]+x[197]<=1)  #= e471: =#
@constraint(m, x[189]+x[198]<=1)  #= e472: =#
@constraint(m, x[190]+x[196]<=1)  #= e473: =#
@constraint(m, x[191]+x[197]<=1)  #= e474: =#
@constraint(m, x[192]+x[198]<=1)  #= e475: =#
@constraint(m, x[181]+x[211]<=1)  #= e476: =#
@constraint(m, x[182]+x[212]<=1)  #= e477: =#
@constraint(m, x[183]+x[213]<=1)  #= e478: =#
@constraint(m, x[184]+x[211]<=1)  #= e479: =#
@constraint(m, x[185]+x[212]<=1)  #= e480: =#
@constraint(m, x[186]+x[213]<=1)  #= e481: =#
@constraint(m, x[187]+x[211]<=1)  #= e482: =#
@constraint(m, x[188]+x[212]<=1)  #= e483: =#
@constraint(m, x[189]+x[213]<=1)  #= e484: =#
@constraint(m, x[190]+x[211]<=1)  #= e485: =#
@constraint(m, x[191]+x[212]<=1)  #= e486: =#
@constraint(m, x[192]+x[213]<=1)  #= e487: =#
@constraint(m, x[139]+x[193]<=1)  #= e488: =#
@constraint(m, x[140]+x[194]<=1)  #= e489: =#
@constraint(m, x[141]+x[195]<=1)  #= e490: =#
@constraint(m, x[139]+x[196]<=1)  #= e491: =#
@constraint(m, x[140]+x[197]<=1)  #= e492: =#
@constraint(m, x[141]+x[198]<=1)  #= e493: =#
@constraint(m, x[139]+x[199]<=1)  #= e494: =#
@constraint(m, x[140]+x[200]<=1)  #= e495: =#
@constraint(m, x[141]+x[201]<=1)  #= e496: =#
@constraint(m, x[139]+x[202]<=1)  #= e497: =#
@constraint(m, x[140]+x[203]<=1)  #= e498: =#
@constraint(m, x[141]+x[204]<=1)  #= e499: =#
@constraint(m, x[139]+x[205]<=1)  #= e500: =#
@constraint(m, x[140]+x[206]<=1)  #= e501: =#
@constraint(m, x[141]+x[207]<=1)  #= e502: =#
@constraint(m, x[169]+x[193]<=1)  #= e503: =#
@constraint(m, x[170]+x[194]<=1)  #= e504: =#
@constraint(m, x[171]+x[195]<=1)  #= e505: =#
@constraint(m, x[169]+x[196]<=1)  #= e506: =#
@constraint(m, x[170]+x[197]<=1)  #= e507: =#
@constraint(m, x[171]+x[198]<=1)  #= e508: =#
@constraint(m, x[169]+x[199]<=1)  #= e509: =#
@constraint(m, x[170]+x[200]<=1)  #= e510: =#
@constraint(m, x[171]+x[201]<=1)  #= e511: =#
@constraint(m, x[169]+x[202]<=1)  #= e512: =#
@constraint(m, x[170]+x[203]<=1)  #= e513: =#
@constraint(m, x[171]+x[204]<=1)  #= e514: =#
@constraint(m, x[169]+x[205]<=1)  #= e515: =#
@constraint(m, x[170]+x[206]<=1)  #= e516: =#
@constraint(m, x[171]+x[207]<=1)  #= e517: =#
@constraint(m, x[193]+x[214]<=1)  #= e518: =#
@constraint(m, x[194]+x[215]<=1)  #= e519: =#
@constraint(m, x[195]+x[216]<=1)  #= e520: =#
@constraint(m, x[196]+x[214]<=1)  #= e521: =#
@constraint(m, x[197]+x[215]<=1)  #= e522: =#
@constraint(m, x[198]+x[216]<=1)  #= e523: =#
@constraint(m, x[199]+x[214]<=1)  #= e524: =#
@constraint(m, x[200]+x[215]<=1)  #= e525: =#
@constraint(m, x[201]+x[216]<=1)  #= e526: =#
@constraint(m, x[202]+x[214]<=1)  #= e527: =#
@constraint(m, x[203]+x[215]<=1)  #= e528: =#
@constraint(m, x[204]+x[216]<=1)  #= e529: =#
@constraint(m, x[205]+x[214]<=1)  #= e530: =#
@constraint(m, x[206]+x[215]<=1)  #= e531: =#
@constraint(m, x[207]+x[216]<=1)  #= e532: =#
@constraint(m, x[142]+x[208]<=1)  #= e533: =#
@constraint(m, x[143]+x[209]<=1)  #= e534: =#
@constraint(m, x[144]+x[210]<=1)  #= e535: =#
@constraint(m, x[142]+x[211]<=1)  #= e536: =#
@constraint(m, x[143]+x[212]<=1)  #= e537: =#
@constraint(m, x[144]+x[213]<=1)  #= e538: =#
@constraint(m, x[142]+x[214]<=1)  #= e539: =#
@constraint(m, x[143]+x[215]<=1)  #= e540: =#
@constraint(m, x[144]+x[216]<=1)  #= e541: =#
@constraint(m, x[142]+x[217]<=1)  #= e542: =#
@constraint(m, x[143]+x[218]<=1)  #= e543: =#
@constraint(m, x[144]+x[219]<=1)  #= e544: =#
@constraint(m, x[142]+x[220]<=1)  #= e545: =#
@constraint(m, x[143]+x[221]<=1)  #= e546: =#
@constraint(m, x[144]+x[222]<=1)  #= e547: =#
@constraint(m, x[157]+x[208]<=1)  #= e548: =#
@constraint(m, x[158]+x[209]<=1)  #= e549: =#
@constraint(m, x[159]+x[210]<=1)  #= e550: =#
@constraint(m, x[157]+x[211]<=1)  #= e551: =#
@constraint(m, x[158]+x[212]<=1)  #= e552: =#
@constraint(m, x[159]+x[213]<=1)  #= e553: =#
@constraint(m, x[157]+x[214]<=1)  #= e554: =#
@constraint(m, x[158]+x[215]<=1)  #= e555: =#
@constraint(m, x[159]+x[216]<=1)  #= e556: =#
@constraint(m, x[157]+x[217]<=1)  #= e557: =#
@constraint(m, x[158]+x[218]<=1)  #= e558: =#
@constraint(m, x[159]+x[219]<=1)  #= e559: =#
@constraint(m, x[157]+x[220]<=1)  #= e560: =#
@constraint(m, x[158]+x[221]<=1)  #= e561: =#
@constraint(m, x[159]+x[222]<=1)  #= e562: =#
@constraint(m, x[172]+x[208]<=1)  #= e563: =#
@constraint(m, x[173]+x[209]<=1)  #= e564: =#
@constraint(m, x[174]+x[210]<=1)  #= e565: =#
@constraint(m, x[172]+x[211]<=1)  #= e566: =#
@constraint(m, x[173]+x[212]<=1)  #= e567: =#
@constraint(m, x[174]+x[213]<=1)  #= e568: =#
@constraint(m, x[172]+x[214]<=1)  #= e569: =#
@constraint(m, x[173]+x[215]<=1)  #= e570: =#
@constraint(m, x[174]+x[216]<=1)  #= e571: =#
@constraint(m, x[172]+x[217]<=1)  #= e572: =#
@constraint(m, x[173]+x[218]<=1)  #= e573: =#
@constraint(m, x[174]+x[219]<=1)  #= e574: =#
@constraint(m, x[172]+x[220]<=1)  #= e575: =#
@constraint(m, x[173]+x[221]<=1)  #= e576: =#
@constraint(m, x[174]+x[222]<=1)  #= e577: =#
@constraint(m, x[184]+x[208]<=1)  #= e578: =#
@constraint(m, x[185]+x[209]<=1)  #= e579: =#
@constraint(m, x[186]+x[210]<=1)  #= e580: =#
@constraint(m, x[184]+x[211]<=1)  #= e581: =#
@constraint(m, x[185]+x[212]<=1)  #= e582: =#
@constraint(m, x[186]+x[213]<=1)  #= e583: =#
@constraint(m, x[184]+x[214]<=1)  #= e584: =#
@constraint(m, x[185]+x[215]<=1)  #= e585: =#
@constraint(m, x[186]+x[216]<=1)  #= e586: =#
@constraint(m, x[184]+x[217]<=1)  #= e587: =#
@constraint(m, x[185]+x[218]<=1)  #= e588: =#
@constraint(m, x[186]+x[219]<=1)  #= e589: =#
@constraint(m, x[184]+x[220]<=1)  #= e590: =#
@constraint(m, x[185]+x[221]<=1)  #= e591: =#
@constraint(m, x[186]+x[222]<=1)  #= e592: =#
@constraint(m, x[199]+x[208]<=1)  #= e593: =#
@constraint(m, x[200]+x[209]<=1)  #= e594: =#
@constraint(m, x[201]+x[210]<=1)  #= e595: =#
@constraint(m, x[199]+x[211]<=1)  #= e596: =#
@constraint(m, x[200]+x[212]<=1)  #= e597: =#
@constraint(m, x[201]+x[213]<=1)  #= e598: =#
@constraint(m, x[199]+x[214]<=1)  #= e599: =#
@constraint(m, x[200]+x[215]<=1)  #= e600: =#
@constraint(m, x[201]+x[216]<=1)  #= e601: =#
@constraint(m, x[199]+x[217]<=1)  #= e602: =#
@constraint(m, x[200]+x[218]<=1)  #= e603: =#
@constraint(m, x[201]+x[219]<=1)  #= e604: =#
@constraint(m, x[199]+x[220]<=1)  #= e605: =#
@constraint(m, x[200]+x[221]<=1)  #= e606: =#
@constraint(m, x[201]+x[222]<=1)  #= e607: =#

m = m
