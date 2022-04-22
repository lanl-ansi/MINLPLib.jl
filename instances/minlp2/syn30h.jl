using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199]
@variable(m, x[x_Idx])
b_Idx = Any[200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[108], 0.0)
set_upper_bound(x[2], 40.0)
set_upper_bound(x[13], 30.0)
set_upper_bound(x[30], 20.0)
set_upper_bound(x[31], 20.0)
set_upper_bound(x[58], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+x[2]-5*x[8]+2*x[13]+10*x[30]+5*x[31]-40*x[38]-15*x[39]-10*x[40]-30*x[41]-35*x[42]-20*x[43]-25*x[44]-15*x[45]-30*x[53]+x[58]-80*x[66]-285*x[67]-290*x[68]-280*x[69]-290*x[70]-350*x[71]+5*b[200]+8*b[201]+6*b[202]+10*b[203]+6*b[204]+7*b[205]+4*b[206]+5*b[207]+2*b[208]+4*b[209]+3*b[210]+7*b[211]+3*b[212]+2*b[213]+4*b[214]+2*b[215]+3*b[216]+5*b[217]+2*b[218]+b[219]+2*b[220]+9*b[221]+5*b[222]+2*b[223]+10*b[224]+4*b[225]+7*b[226]+4*b[227]+2*b[228]+8*b[229] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@constraint(m, e6, x[14]-x[17]-x[18] == 0.0)
@constraint(m, e7, x[16]-x[19]-x[20]-x[21] == 0.0)
@constraint(m, e8, x[24]-x[28]-x[29] == 0.0)
@constraint(m, e9, -x[25]-x[31]+x[32] == 0.0)
@constraint(m, e10, x[26]-x[33]-x[34] == 0.0)
@constraint(m, e11, x[27]-x[35]-x[36]-x[37] == 0.0)
@constraint(m, e12, x[46]-x[47] == 0.0)
@constraint(m, e13, x[47]-x[48]-x[49] == 0.0)
@constraint(m, e14, -x[50]-x[51]+x[52] == 0.0)
@constraint(m, e15, x[52]-x[53]-x[54] == 0.0)
@constraint(m, e16, x[54]-x[55]-x[56]-x[57] == 0.0)
@constraint(m, e17, x[59]-x[62]-x[63] == 0.0)
@constraint(m, e18, x[61]-x[64]-x[65]-x[66] == 0.0)
@NLconstraint(m, e19, (x[76]/(1e-6+b[200])-log(1+x[72]/(1e-6+b[200])))*(1e-6+b[200]) <= 0.0)
@constraint(m, e20, x[73] == 0.0)
@constraint(m, e21, x[77] == 0.0)
@constraint(m, e22, x[3]-x[72]-x[73] == 0.0)
@constraint(m, e23, x[5]-x[76]-x[77] == 0.0)
@constraint(m, e24, x[72]-40*b[200] <= 0.0)
@constraint(m, e25, x[73]+40*b[200] <= 40.0)
@constraint(m, e26, x[76]-3.71357206670431*b[200] <= 0.0)
@constraint(m, e27, x[77]+3.71357206670431*b[200] <= 3.71357206670431)
@NLconstraint(m, e28, (x[78]/(1e-6+b[201])-1.2*log(1+x[74]/(1e-6+b[201])))*(1e-6+b[201]) <= 0.0)
@constraint(m, e29, x[75] == 0.0)
@constraint(m, e30, x[79] == 0.0)
@constraint(m, e31, x[4]-x[74]-x[75] == 0.0)
@constraint(m, e32, x[6]-x[78]-x[79] == 0.0)
@constraint(m, e33, x[74]-40*b[201] <= 0.0)
@constraint(m, e34, x[75]+40*b[201] <= 40.0)
@constraint(m, e35, x[78]-4.45628648004517*b[201] <= 0.0)
@constraint(m, e36, x[79]+4.45628648004517*b[201] <= 4.45628648004517)
@constraint(m, e37, -0.75*x[80]+x[88] == 0.0)
@constraint(m, e38, x[81] == 0.0)
@constraint(m, e39, x[89] == 0.0)
@constraint(m, e40, x[10]-x[80]-x[81] == 0.0)
@constraint(m, e41, x[14]-x[88]-x[89] == 0.0)
@constraint(m, e42, x[80]-4.45628648004517*b[202] <= 0.0)
@constraint(m, e43, x[81]+4.45628648004517*b[202] <= 4.45628648004517)
@constraint(m, e44, x[88]-3.34221486003388*b[202] <= 0.0)
@constraint(m, e45, x[89]+3.34221486003388*b[202] <= 3.34221486003388)
@NLconstraint(m, e46, (x[90]/(1e-6+b[203])-1.5*log(1+x[82]/(1e-6+b[203])))*(1e-6+b[203]) <= 0.0)
@constraint(m, e47, x[83] == 0.0)
@constraint(m, e48, x[92] == 0.0)
@constraint(m, e49, x[11]-x[82]-x[83] == 0.0)
@constraint(m, e50, x[15]-x[90]-x[92] == 0.0)
@constraint(m, e51, x[82]-4.45628648004517*b[203] <= 0.0)
@constraint(m, e52, x[83]+4.45628648004517*b[203] <= 4.45628648004517)
@constraint(m, e53, x[90]-2.54515263975353*b[203] <= 0.0)
@constraint(m, e54, x[92]+2.54515263975353*b[203] <= 2.54515263975353)
@constraint(m, e55, -x[84]+x[94] == 0.0)
@constraint(m, e56, -0.5*x[86]+x[94] == 0.0)
@constraint(m, e57, x[85] == 0.0)
@constraint(m, e58, x[87] == 0.0)
@constraint(m, e59, x[95] == 0.0)
@constraint(m, e60, x[12]-x[84]-x[85] == 0.0)
@constraint(m, e61, x[13]-x[86]-x[87] == 0.0)
@constraint(m, e62, x[16]-x[94]-x[95] == 0.0)
@constraint(m, e63, x[84]-4.45628648004517*b[204] <= 0.0)
@constraint(m, e64, x[85]+4.45628648004517*b[204] <= 4.45628648004517)
@constraint(m, e65, x[86]-30*b[204] <= 0.0)
@constraint(m, e66, x[87]+30*b[204] <= 30.0)
@constraint(m, e67, x[94]-15*b[204] <= 0.0)
@constraint(m, e68, x[95]+15*b[204] <= 15.0)
@NLconstraint(m, e69, (x[106]/(1e-6+b[205])-1.25*log(1+x[96]/(1e-6+b[205])))*(1e-6+b[205]) <= 0.0)
@constraint(m, e70, x[97] == 0.0)
@constraint(m, e71, x[108] == 0.0)
@constraint(m, e72, x[17]-x[96]-x[97] == 0.0)
@constraint(m, e73, x[22]-x[106]-x[108] == 0.0)
@constraint(m, e74, x[96]-3.34221486003388*b[205] <= 0.0)
@constraint(m, e75, x[97]+3.34221486003388*b[205] <= 3.34221486003388)
@constraint(m, e76, x[106]-1.83548069293539*b[205] <= 0.0)
@constraint(m, e77, x[108]+1.83548069293539*b[205] <= 1.83548069293539)
@NLconstraint(m, e78, (x[110]/(1e-6+b[206])-0.9*log(1+x[98]/(1e-6+b[206])))*(1e-6+b[206]) <= 0.0)
@constraint(m, e79, x[99] == 0.0)
@constraint(m, e80, x[112] == 0.0)
@constraint(m, e81, x[18]-x[98]-x[99] == 0.0)
@constraint(m, e82, x[23]-x[110]-x[112] == 0.0)
@constraint(m, e83, x[98]-3.34221486003388*b[206] <= 0.0)
@constraint(m, e84, x[99]+3.34221486003388*b[206] <= 3.34221486003388)
@constraint(m, e85, x[110]-1.32154609891348*b[206] <= 0.0)
@constraint(m, e86, x[112]+1.32154609891348*b[206] <= 1.32154609891348)
@NLconstraint(m, e87, (x[114]/(1e-6+b[207])-log(1+x[91]/(1e-6+b[207])))*(1e-6+b[207]) <= 0.0)
@constraint(m, e88, x[93] == 0.0)
@constraint(m, e89, x[115] == 0.0)
@constraint(m, e90, x[15]-x[91]-x[93] == 0.0)
@constraint(m, e91, x[24]-x[114]-x[115] == 0.0)
@constraint(m, e92, x[91]-2.54515263975353*b[207] <= 0.0)
@constraint(m, e93, x[93]+2.54515263975353*b[207] <= 2.54515263975353)
@constraint(m, e94, x[114]-1.26558121681553*b[207] <= 0.0)
@constraint(m, e95, x[115]+1.26558121681553*b[207] <= 1.26558121681553)
@constraint(m, e96, -0.9*x[100]+x[116] == 0.0)
@constraint(m, e97, x[101] == 0.0)
@constraint(m, e98, x[117] == 0.0)
@constraint(m, e99, x[19]-x[100]-x[101] == 0.0)
@constraint(m, e100, x[25]-x[116]-x[117] == 0.0)
@constraint(m, e101, x[100]-15*b[208] <= 0.0)
@constraint(m, e102, x[101]+15*b[208] <= 15.0)
@constraint(m, e103, x[116]-13.5*b[208] <= 0.0)
@constraint(m, e104, x[117]+13.5*b[208] <= 13.5)
@constraint(m, e105, -0.6*x[102]+x[118] == 0.0)
@constraint(m, e106, x[103] == 0.0)
@constraint(m, e107, x[119] == 0.0)
@constraint(m, e108, x[20]-x[102]-x[103] == 0.0)
@constraint(m, e109, x[26]-x[118]-x[119] == 0.0)
@constraint(m, e110, x[102]-15*b[209] <= 0.0)
@constraint(m, e111, x[103]+15*b[209] <= 15.0)
@constraint(m, e112, x[118]-9*b[209] <= 0.0)
@constraint(m, e113, x[119]+9*b[209] <= 9.0)
@NLconstraint(m, e114, (x[120]/(1e-6+b[210])-1.1*log(1+x[104]/(1e-6+b[210])))*(1e-6+b[210]) <= 0.0)
@constraint(m, e115, x[105] == 0.0)
@constraint(m, e116, x[121] == 0.0)
@constraint(m, e117, x[21]-x[104]-x[105] == 0.0)
@constraint(m, e118, x[27]-x[120]-x[121] == 0.0)
@constraint(m, e119, x[104]-15*b[210] <= 0.0)
@constraint(m, e120, x[105]+15*b[210] <= 15.0)
@constraint(m, e121, x[120]-3.04984759446376*b[210] <= 0.0)
@constraint(m, e122, x[121]+3.04984759446376*b[210] <= 3.04984759446376)
@constraint(m, e123, -0.9*x[107]+x[140] == 0.0)
@constraint(m, e124, -x[126]+x[140] == 0.0)
@constraint(m, e125, x[109] == 0.0)
@constraint(m, e126, x[127] == 0.0)
@constraint(m, e127, x[141] == 0.0)
@constraint(m, e128, x[22]-x[107]-x[109] == 0.0)
@constraint(m, e129, x[30]-x[126]-x[127] == 0.0)
@constraint(m, e130, x[38]-x[140]-x[141] == 0.0)
@constraint(m, e131, x[107]-1.83548069293539*b[211] <= 0.0)
@constraint(m, e132, x[109]+1.83548069293539*b[211] <= 1.83548069293539)
@constraint(m, e133, x[126]-20*b[211] <= 0.0)
@constraint(m, e134, x[127]+20*b[211] <= 20.0)
@constraint(m, e135, x[140]-20*b[211] <= 0.0)
@constraint(m, e136, x[141]+20*b[211] <= 20.0)
@NLconstraint(m, e137, (x[142]/(1e-6+b[212])-log(1+x[111]/(1e-6+b[212])))*(1e-6+b[212]) <= 0.0)
@constraint(m, e138, x[113] == 0.0)
@constraint(m, e139, x[143] == 0.0)
@constraint(m, e140, x[23]-x[111]-x[113] == 0.0)
@constraint(m, e141, x[39]-x[142]-x[143] == 0.0)
@constraint(m, e142, x[111]-1.32154609891348*b[212] <= 0.0)
@constraint(m, e143, x[113]+1.32154609891348*b[212] <= 1.32154609891348)
@constraint(m, e144, x[142]-0.842233385663186*b[212] <= 0.0)
@constraint(m, e145, x[143]+0.842233385663186*b[212] <= 0.842233385663186)
@NLconstraint(m, e146, (x[144]/(1e-6+b[213])-0.7*log(1+x[122]/(1e-6+b[213])))*(1e-6+b[213]) <= 0.0)
@constraint(m, e147, x[123] == 0.0)
@constraint(m, e148, x[145] == 0.0)
@constraint(m, e149, x[28]-x[122]-x[123] == 0.0)
@constraint(m, e150, x[40]-x[144]-x[145] == 0.0)
@constraint(m, e151, x[122]-1.26558121681553*b[213] <= 0.0)
@constraint(m, e152, x[123]+1.26558121681553*b[213] <= 1.26558121681553)
@constraint(m, e153, x[144]-0.572481933717686*b[213] <= 0.0)
@constraint(m, e154, x[145]+0.572481933717686*b[213] <= 0.572481933717686)
@NLconstraint(m, e155, (x[146]/(1e-6+b[214])-0.65*log(1+x[124]/(1e-6+b[214])))*(1e-6+b[214]) <= 0.0)
@NLconstraint(m, e156, (x[146]/(1e-6+b[214])-0.65*log(1+x[128]/(1e-6+b[214])))*(1e-6+b[214]) <= 0.0)
@constraint(m, e157, x[125] == 0.0)
@constraint(m, e158, x[129] == 0.0)
@constraint(m, e159, x[147] == 0.0)
@constraint(m, e160, x[29]-x[124]-x[125] == 0.0)
@constraint(m, e161, x[32]-x[128]-x[129] == 0.0)
@constraint(m, e162, x[41]-x[146]-x[147] == 0.0)
@constraint(m, e163, x[124]-1.26558121681553*b[214] <= 0.0)
@constraint(m, e164, x[125]+1.26558121681553*b[214] <= 1.26558121681553)
@constraint(m, e165, x[128]-33.5*b[214] <= 0.0)
@constraint(m, e166, x[129]+33.5*b[214] <= 33.5)
@constraint(m, e167, x[146]-2.30162356062425*b[214] <= 0.0)
@constraint(m, e168, x[147]+2.30162356062425*b[214] <= 2.30162356062425)
@constraint(m, e169, -x[130]+x[148] == 0.0)
@constraint(m, e170, x[131] == 0.0)
@constraint(m, e171, x[149] == 0.0)
@constraint(m, e172, x[33]-x[130]-x[131] == 0.0)
@constraint(m, e173, x[42]-x[148]-x[149] == 0.0)
@constraint(m, e174, x[130]-9*b[215] <= 0.0)
@constraint(m, e175, x[131]+9*b[215] <= 9.0)
@constraint(m, e176, x[148]-9*b[215] <= 0.0)
@constraint(m, e177, x[149]+9*b[215] <= 9.0)
@constraint(m, e178, -x[132]+x[150] == 0.0)
@constraint(m, e179, x[133] == 0.0)
@constraint(m, e180, x[151] == 0.0)
@constraint(m, e181, x[34]-x[132]-x[133] == 0.0)
@constraint(m, e182, x[43]-x[150]-x[151] == 0.0)
@constraint(m, e183, x[132]-9*b[216] <= 0.0)
@constraint(m, e184, x[133]+9*b[216] <= 9.0)
@constraint(m, e185, x[150]-9*b[216] <= 0.0)
@constraint(m, e186, x[151]+9*b[216] <= 9.0)
@NLconstraint(m, e187, (x[152]/(1e-6+b[217])-0.75*log(1+x[134]/(1e-6+b[217])))*(1e-6+b[217]) <= 0.0)
@constraint(m, e188, x[135] == 0.0)
@constraint(m, e189, x[153] == 0.0)
@constraint(m, e190, x[35]-x[134]-x[135] == 0.0)
@constraint(m, e191, x[44]-x[152]-x[153] == 0.0)
@constraint(m, e192, x[134]-3.04984759446376*b[217] <= 0.0)
@constraint(m, e193, x[135]+3.04984759446376*b[217] <= 3.04984759446376)
@constraint(m, e194, x[152]-1.04900943706034*b[217] <= 0.0)
@constraint(m, e195, x[153]+1.04900943706034*b[217] <= 1.04900943706034)
@NLconstraint(m, e196, (x[154]/(1e-6+b[218])-0.8*log(1+x[136]/(1e-6+b[218])))*(1e-6+b[218]) <= 0.0)
@constraint(m, e197, x[137] == 0.0)
@constraint(m, e198, x[155] == 0.0)
@constraint(m, e199, x[36]-x[136]-x[137] == 0.0)
@constraint(m, e200, x[45]-x[154]-x[155] == 0.0)
@constraint(m, e201, x[136]-3.04984759446376*b[218] <= 0.0)
@constraint(m, e202, x[137]+3.04984759446376*b[218] <= 3.04984759446376)
@constraint(m, e203, x[154]-1.11894339953103*b[218] <= 0.0)
@constraint(m, e204, x[155]+1.11894339953103*b[218] <= 1.11894339953103)
@NLconstraint(m, e205, (x[156]/(1e-6+b[219])-0.85*log(1+x[138]/(1e-6+b[219])))*(1e-6+b[219]) <= 0.0)
@constraint(m, e206, x[139] == 0.0)
@constraint(m, e207, x[157] == 0.0)
@constraint(m, e208, x[37]-x[138]-x[139] == 0.0)
@constraint(m, e209, x[46]-x[156]-x[157] == 0.0)
@constraint(m, e210, x[138]-3.04984759446376*b[219] <= 0.0)
@constraint(m, e211, x[139]+3.04984759446376*b[219] <= 3.04984759446376)
@constraint(m, e212, x[156]-1.18887736200171*b[219] <= 0.0)
@constraint(m, e213, x[157]+1.18887736200171*b[219] <= 1.18887736200171)
@NLconstraint(m, e214, (x[162]/(1e-6+b[220])-log(1+x[158]/(1e-6+b[220])))*(1e-6+b[220]) <= 0.0)
@constraint(m, e215, x[159] == 0.0)
@constraint(m, e216, x[163] == 0.0)
@constraint(m, e217, x[48]-x[158]-x[159] == 0.0)
@constraint(m, e218, x[50]-x[162]-x[163] == 0.0)
@constraint(m, e219, x[158]-1.18887736200171*b[220] <= 0.0)
@constraint(m, e220, x[159]+1.18887736200171*b[220] <= 1.18887736200171)
@constraint(m, e221, x[162]-0.78338879230327*b[220] <= 0.0)
@constraint(m, e222, x[163]+0.78338879230327*b[220] <= 0.78338879230327)
@NLconstraint(m, e223, (x[164]/(1e-6+b[221])-1.2*log(1+x[160]/(1e-6+b[221])))*(1e-6+b[221]) <= 0.0)
@constraint(m, e224, x[161] == 0.0)
@constraint(m, e225, x[165] == 0.0)
@constraint(m, e226, x[49]-x[160]-x[161] == 0.0)
@constraint(m, e227, x[51]-x[164]-x[165] == 0.0)
@constraint(m, e228, x[160]-1.18887736200171*b[221] <= 0.0)
@constraint(m, e229, x[161]+1.18887736200171*b[221] <= 1.18887736200171)
@constraint(m, e230, x[164]-0.940066550763924*b[221] <= 0.0)
@constraint(m, e231, x[165]+0.940066550763924*b[221] <= 0.940066550763924)
@constraint(m, e232, -0.75*x[166]+x[174] == 0.0)
@constraint(m, e233, x[167] == 0.0)
@constraint(m, e234, x[175] == 0.0)
@constraint(m, e235, x[55]-x[166]-x[167] == 0.0)
@constraint(m, e236, x[59]-x[174]-x[175] == 0.0)
@constraint(m, e237, x[166]-0.940066550763924*b[222] <= 0.0)
@constraint(m, e238, x[167]+0.940066550763924*b[222] <= 0.940066550763924)
@constraint(m, e239, x[174]-0.705049913072943*b[222] <= 0.0)
@constraint(m, e240, x[175]+0.705049913072943*b[222] <= 0.705049913072943)
@NLconstraint(m, e241, (x[176]/(1e-6+b[223])-1.5*log(1+x[168]/(1e-6+b[223])))*(1e-6+b[223]) <= 0.0)
@constraint(m, e242, x[169] == 0.0)
@constraint(m, e243, x[178] == 0.0)
@constraint(m, e244, x[56]-x[168]-x[169] == 0.0)
@constraint(m, e245, x[60]-x[176]-x[178] == 0.0)
@constraint(m, e246, x[168]-0.940066550763924*b[223] <= 0.0)
@constraint(m, e247, x[169]+0.940066550763924*b[223] <= 0.940066550763924)
@constraint(m, e248, x[176]-0.994083415506506*b[223] <= 0.0)
@constraint(m, e249, x[178]+0.994083415506506*b[223] <= 0.994083415506506)
@constraint(m, e250, -x[170]+x[180] == 0.0)
@constraint(m, e251, -0.5*x[172]+x[180] == 0.0)
@constraint(m, e252, x[171] == 0.0)
@constraint(m, e253, x[173] == 0.0)
@constraint(m, e254, x[181] == 0.0)
@constraint(m, e255, x[57]-x[170]-x[171] == 0.0)
@constraint(m, e256, x[58]-x[172]-x[173] == 0.0)
@constraint(m, e257, x[61]-x[180]-x[181] == 0.0)
@constraint(m, e258, x[170]-0.940066550763924*b[224] <= 0.0)
@constraint(m, e259, x[171]+0.940066550763924*b[224] <= 0.940066550763924)
@constraint(m, e260, x[172]-30*b[224] <= 0.0)
@constraint(m, e261, x[173]+30*b[224] <= 30.0)
@constraint(m, e262, x[180]-15*b[224] <= 0.0)
@constraint(m, e263, x[181]+15*b[224] <= 15.0)
@NLconstraint(m, e264, (x[190]/(1e-6+b[225])-1.25*log(1+x[182]/(1e-6+b[225])))*(1e-6+b[225]) <= 0.0)
@constraint(m, e265, x[183] == 0.0)
@constraint(m, e266, x[191] == 0.0)
@constraint(m, e267, x[62]-x[182]-x[183] == 0.0)
@constraint(m, e268, x[67]-x[190]-x[191] == 0.0)
@constraint(m, e269, x[182]-0.705049913072943*b[225] <= 0.0)
@constraint(m, e270, x[183]+0.705049913072943*b[225] <= 0.705049913072943)
@constraint(m, e271, x[190]-0.666992981045719*b[225] <= 0.0)
@constraint(m, e272, x[191]+0.666992981045719*b[225] <= 0.666992981045719)
@NLconstraint(m, e273, (x[192]/(1e-6+b[226])-0.9*log(1+x[184]/(1e-6+b[226])))*(1e-6+b[226]) <= 0.0)
@constraint(m, e274, x[185] == 0.0)
@constraint(m, e275, x[193] == 0.0)
@constraint(m, e276, x[63]-x[184]-x[185] == 0.0)
@constraint(m, e277, x[68]-x[192]-x[193] == 0.0)
@constraint(m, e278, x[184]-0.705049913072943*b[226] <= 0.0)
@constraint(m, e279, x[185]+0.705049913072943*b[226] <= 0.705049913072943)
@constraint(m, e280, x[192]-0.480234946352917*b[226] <= 0.0)
@constraint(m, e281, x[193]+0.480234946352917*b[226] <= 0.480234946352917)
@NLconstraint(m, e282, (x[194]/(1e-6+b[227])-log(1+x[177]/(1e-6+b[227])))*(1e-6+b[227]) <= 0.0)
@constraint(m, e283, x[179] == 0.0)
@constraint(m, e284, x[195] == 0.0)
@constraint(m, e285, x[60]-x[177]-x[179] == 0.0)
@constraint(m, e286, x[69]-x[194]-x[195] == 0.0)
@constraint(m, e287, x[177]-0.994083415506506*b[227] <= 0.0)
@constraint(m, e288, x[179]+0.994083415506506*b[227] <= 0.994083415506506)
@constraint(m, e289, x[194]-0.690184503917672*b[227] <= 0.0)
@constraint(m, e290, x[195]+0.690184503917672*b[227] <= 0.690184503917672)
@constraint(m, e291, -0.9*x[186]+x[196] == 0.0)
@constraint(m, e292, x[187] == 0.0)
@constraint(m, e293, x[197] == 0.0)
@constraint(m, e294, x[64]-x[186]-x[187] == 0.0)
@constraint(m, e295, x[70]-x[196]-x[197] == 0.0)
@constraint(m, e296, x[186]-15*b[228] <= 0.0)
@constraint(m, e297, x[187]+15*b[228] <= 15.0)
@constraint(m, e298, x[196]-13.5*b[228] <= 0.0)
@constraint(m, e299, x[197]+13.5*b[228] <= 13.5)
@constraint(m, e300, -0.6*x[188]+x[198] == 0.0)
@constraint(m, e301, x[189] == 0.0)
@constraint(m, e302, x[199] == 0.0)
@constraint(m, e303, x[65]-x[188]-x[189] == 0.0)
@constraint(m, e304, x[71]-x[198]-x[199] == 0.0)
@constraint(m, e305, x[188]-15*b[229] <= 0.0)
@constraint(m, e306, x[189]+15*b[229] <= 15.0)
@constraint(m, e307, x[198]-9*b[229] <= 0.0)
@constraint(m, e308, x[199]+9*b[229] <= 9.0)
@constraint(m, e309, b[200]+b[201] == 1.0)
@constraint(m, e310, -b[202]+b[205]+b[206] >= 0.0)
@constraint(m, e311, -b[205]+b[211] >= 0.0)
@constraint(m, e312, -b[206]+b[212] >= 0.0)
@constraint(m, e313, -b[203]+b[207] >= 0.0)
@constraint(m, e314, -b[207]+b[213]+b[214] >= 0.0)
@constraint(m, e315, -b[204]+b[208]+b[209]+b[210] >= 0.0)
@constraint(m, e316, -b[208]+b[214] >= 0.0)
@constraint(m, e317, -b[209]+b[215]+b[216] >= 0.0)
@constraint(m, e318, -b[210]+b[217]+b[218]+b[219] >= 0.0)
@constraint(m, e319, b[200]+b[201]-b[202] >= 0.0)
@constraint(m, e320, b[200]+b[201]-b[203] >= 0.0)
@constraint(m, e321, b[200]+b[201]-b[204] >= 0.0)
@constraint(m, e322, b[202]-b[205] >= 0.0)
@constraint(m, e323, b[202]-b[206] >= 0.0)
@constraint(m, e324, b[203]-b[207] >= 0.0)
@constraint(m, e325, b[204]-b[208] >= 0.0)
@constraint(m, e326, b[204]-b[209] >= 0.0)
@constraint(m, e327, b[204]-b[210] >= 0.0)
@constraint(m, e328, b[205]-b[211] >= 0.0)
@constraint(m, e329, b[206]-b[212] >= 0.0)
@constraint(m, e330, b[207]-b[213] >= 0.0)
@constraint(m, e331, b[207]-b[214] >= 0.0)
@constraint(m, e332, b[209]-b[215] >= 0.0)
@constraint(m, e333, b[209]-b[216] >= 0.0)
@constraint(m, e334, b[210]-b[217] >= 0.0)
@constraint(m, e335, b[210]-b[218] >= 0.0)
@constraint(m, e336, b[210]-b[219] >= 0.0)
@constraint(m, e337, -b[219]+b[220]+b[221] >= 0.0)
@constraint(m, e338, -b[222]+b[225]+b[226] >= 0.0)
@constraint(m, e339, -b[223]+b[227] >= 0.0)
@constraint(m, e340, b[219]-b[220] >= 0.0)
@constraint(m, e341, b[219]-b[221] >= 0.0)
@constraint(m, e342, b[222]-b[225] >= 0.0)
@constraint(m, e343, b[222]-b[226] >= 0.0)
@constraint(m, e344, b[223]-b[227] >= 0.0)
@constraint(m, e345, b[224]-b[228] >= 0.0)
@constraint(m, e346, b[224]-b[229] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

 
