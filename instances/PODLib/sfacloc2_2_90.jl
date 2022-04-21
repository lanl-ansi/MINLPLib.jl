using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184]
@variable(m, x[x_Idx])
b_Idx = Any[46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[146], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[76], 0.0)
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
set_lower_bound(x[131], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[108], 0.0)
set_upper_bound(x[1], 0.26351883)
set_upper_bound(x[2], 0.26351883)
set_upper_bound(x[3], 0.22891574)
set_upper_bound(x[4], 0.22891574)
set_upper_bound(x[5], 0.21464835)
set_upper_bound(x[6], 0.21464835)
set_upper_bound(x[7], 0.17964414)
set_upper_bound(x[8], 0.17964414)
set_upper_bound(x[9], 0.17402843)
set_upper_bound(x[10], 0.17402843)
set_upper_bound(x[11], 0.15355962)
set_upper_bound(x[12], 0.15355962)
set_upper_bound(x[13], 0.1942283)
set_upper_bound(x[14], 0.1942283)
set_upper_bound(x[15], 0.25670555)
set_upper_bound(x[16], 0.25670555)
set_upper_bound(x[17], 0.27088619)
set_upper_bound(x[18], 0.27088619)
set_upper_bound(x[19], 0.28985675)
set_upper_bound(x[20], 0.28985675)
set_upper_bound(x[21], 0.25550303)
set_upper_bound(x[22], 0.25550303)
set_upper_bound(x[23], 0.19001726)
set_upper_bound(x[24], 0.19001726)
set_upper_bound(x[25], 0.23803143)
set_upper_bound(x[26], 0.23803143)
set_upper_bound(x[27], 0.23312962)
set_upper_bound(x[28], 0.23312962)
set_upper_bound(x[29], 0.27705307)
set_upper_bound(x[30], 0.27705307)
set_lower_bound(x[31], 1.92)
set_upper_bound(x[31], 2.02)
set_lower_bound(x[32], 3.82)
set_upper_bound(x[32], 4.01333333333333)
set_lower_bound(x[33], 4.53333333333333)
set_upper_bound(x[33], 4.76)
set_lower_bound(x[34], 5.39333333333333)
set_upper_bound(x[34], 5.96)
set_lower_bound(x[35], 36.3533333333333)
set_upper_bound(x[35], 42.0933333333333)
set_lower_bound(x[36], 85.7466666666667)
set_upper_bound(x[36], 99.28)
set_lower_bound(x[37], 6.28)
set_upper_bound(x[37], 6.59333333333333)
set_lower_bound(x[38], 53.4333333333333)
set_upper_bound(x[38], 61.8666666666667)
set_lower_bound(x[39], 48.6133333333333)
set_upper_bound(x[39], 56.2866666666667)
set_lower_bound(x[40], 33.9533333333333)
set_upper_bound(x[40], 41.5)
set_lower_bound(x[41], 53.9666666666667)
set_upper_bound(x[41], 62.4933333333333)
set_lower_bound(x[42], 77.0533333333333)
set_upper_bound(x[42], 80.9066666666667)
set_lower_bound(x[43], 24.9066666666667)
set_upper_bound(x[43], 26.1466666666667)
set_lower_bound(x[44], 36.1866666666667)
set_upper_bound(x[44], 38.0)
set_lower_bound(x[45], 56.3133333333333)
set_upper_bound(x[45], 62.24)
set_upper_bound(x[76], 0.5323080366)
set_upper_bound(x[77], 0.918715169866666)
set_upper_bound(x[78], 1.021726146)
set_upper_bound(x[79], 1.0706790744)
set_upper_bound(x[80], 7.32543671346667)
set_upper_bound(x[81], 15.2453990736)
set_upper_bound(x[82], 1.28061192466667)
set_upper_bound(x[83], 15.8815166933333)
set_upper_bound(x[84], 15.2472806811333)
set_upper_bound(x[85], 12.029055125)
set_upper_bound(x[86], 15.9672360214667)
set_upper_bound(x[87], 15.3736631157333)
set_upper_bound(x[88], 6.2237284564)
set_upper_bound(x[89], 8.85892556)
set_upper_bound(x[90], 17.2437830768)
set_lower_bound(x[91], 0.25788969)
set_upper_bound(x[91], 0.35227087)
set_lower_bound(x[92], 0.25788969)
set_upper_bound(x[92], 0.35227087)
set_lower_bound(x[93], -0.98493628)
set_upper_bound(x[93], -0.7794471)
set_lower_bound(x[94], -0.98493628)
set_upper_bound(x[94], -0.7794471)
set_upper_bound(x[95], 0.0580296499999999)
set_upper_bound(x[96], 0.0580296499999999)
set_upper_bound(x[97], 0.0546689399999999)
set_upper_bound(x[98], 0.0546689399999999)
set_upper_bound(x[99], 0.09360565)
set_upper_bound(x[100], 0.09360565)
set_upper_bound(x[101], 0.0476880399999999)
set_upper_bound(x[102], 0.0476880399999999)
set_upper_bound(x[103], 0.05276021)
set_upper_bound(x[104], 0.05276021)
set_upper_bound(x[105], 0.04905388)
set_upper_bound(x[106], 0.04905388)
set_upper_bound(x[107], 0.07731692)
set_upper_bound(x[108], 0.07731692)
set_upper_bound(x[109], 0.08211741)
set_upper_bound(x[110], 0.08211741)
set_upper_bound(x[111], 0.09438118)
set_upper_bound(x[112], 0.09438118)
set_upper_bound(x[113], 0.08436757)
set_upper_bound(x[114], 0.08436757)
set_upper_bound(x[115], 0.06987597)
set_upper_bound(x[116], 0.06987597)
set_upper_bound(x[117], 0.04788831)
set_upper_bound(x[118], 0.04788831)
set_upper_bound(x[119], 0.0668875099999999)
set_upper_bound(x[120], 0.0668875099999999)
set_upper_bound(x[121], 0.07276512)
set_upper_bound(x[122], 0.07276512)
set_upper_bound(x[123], 0.09438118)
set_upper_bound(x[124], 0.09438118)
set_upper_bound(x[125], 0.20548918)
set_upper_bound(x[126], 0.20548918)
set_upper_bound(x[127], 0.1742468)
set_upper_bound(x[128], 0.1742468)
set_upper_bound(x[129], 0.1210427)
set_upper_bound(x[130], 0.1210427)
set_upper_bound(x[131], 0.1319561)
set_upper_bound(x[132], 0.1319561)
set_upper_bound(x[133], 0.12126822)
set_upper_bound(x[134], 0.12126822)
set_upper_bound(x[135], 0.10450574)
set_upper_bound(x[136], 0.10450574)
set_upper_bound(x[137], 0.11691138)
set_upper_bound(x[138], 0.11691138)
set_upper_bound(x[139], 0.17458814)
set_upper_bound(x[140], 0.17458814)
set_upper_bound(x[141], 0.17650501)
set_upper_bound(x[142], 0.17650501)
set_upper_bound(x[143], 0.20548918)
set_upper_bound(x[144], 0.20548918)
set_upper_bound(x[145], 0.18562706)
set_upper_bound(x[146], 0.18562706)
set_upper_bound(x[147], 0.14212895)
set_upper_bound(x[148], 0.14212895)
set_upper_bound(x[149], 0.17114392)
set_upper_bound(x[150], 0.17114392)
set_upper_bound(x[151], 0.1603645)
set_upper_bound(x[152], 0.1603645)
set_upper_bound(x[153], 0.18267189)
set_upper_bound(x[154], 0.18267189)
set_upper_bound(x[155], 0.5323080366)
set_upper_bound(x[156], 0.5323080366)
set_upper_bound(x[157], 0.918715169866666)
set_upper_bound(x[158], 0.918715169866666)
set_upper_bound(x[159], 1.021726146)
set_upper_bound(x[160], 1.021726146)
set_upper_bound(x[161], 1.0706790744)
set_upper_bound(x[162], 1.0706790744)
set_upper_bound(x[163], 7.32543671346667)
set_upper_bound(x[164], 7.32543671346667)
set_upper_bound(x[165], 15.2453990736)
set_upper_bound(x[166], 15.2453990736)
set_upper_bound(x[167], 1.28061192466667)
set_upper_bound(x[168], 1.28061192466667)
set_upper_bound(x[169], 15.8815166933333)
set_upper_bound(x[170], 15.8815166933333)
set_upper_bound(x[171], 15.2472806811333)
set_upper_bound(x[172], 15.2472806811333)
set_upper_bound(x[173], 12.029055125)
set_upper_bound(x[174], 12.029055125)
set_upper_bound(x[175], 15.9672360214667)
set_upper_bound(x[176], 15.9672360214667)
set_upper_bound(x[177], 15.3736631157333)
set_upper_bound(x[178], 15.3736631157333)
set_upper_bound(x[179], 6.2237284564)
set_upper_bound(x[180], 6.2237284564)
set_upper_bound(x[181], 8.85892556)
set_upper_bound(x[182], 8.85892556)
set_upper_bound(x[183], 17.2437830768)
set_upper_bound(x[184], 17.2437830768)


# ----- Constraints ----- #
@constraint(m, e1, x[76]+x[77]+x[78]+x[79]+x[80]+x[81]+x[82]+x[83]+x[84]+x[85]+x[86]+x[87]+x[88]+x[89]+x[90]-objvar == 0.0)
@NLconstraint(m, e2, -x[31]*x[1]*b[46]+x[155] >= 0.0)
@NLconstraint(m, e3, -x[31]*x[2]*b[47]+x[156] >= 0.0)
@NLconstraint(m, e4, -x[32]*x[3]*b[48]+x[157] >= 0.0)
@NLconstraint(m, e5, -x[32]*x[4]*b[49]+x[158] >= 0.0)
@NLconstraint(m, e6, -x[33]*x[5]*b[50]+x[159] >= 0.0)
@NLconstraint(m, e7, -x[33]*x[6]*b[51]+x[160] >= 0.0)
@NLconstraint(m, e8, -x[34]*x[7]*b[52]+x[161] >= 0.0)
@NLconstraint(m, e9, -x[34]*x[8]*b[53]+x[162] >= 0.0)
@NLconstraint(m, e10, -x[35]*x[9]*b[54]+x[163] >= 0.0)
@NLconstraint(m, e11, -x[35]*x[10]*b[55]+x[164] >= 0.0)
@NLconstraint(m, e12, -x[36]*x[11]*b[56]+x[165] >= 0.0)
@NLconstraint(m, e13, -x[36]*x[12]*b[57]+x[166] >= 0.0)
@NLconstraint(m, e14, -x[37]*x[13]*b[58]+x[167] >= 0.0)
@NLconstraint(m, e15, -x[37]*x[14]*b[59]+x[168] >= 0.0)
@NLconstraint(m, e16, -x[38]*x[15]*b[60]+x[169] >= 0.0)
@NLconstraint(m, e17, -x[38]*x[16]*b[61]+x[170] >= 0.0)
@NLconstraint(m, e18, -x[39]*x[17]*b[62]+x[171] >= 0.0)
@NLconstraint(m, e19, -x[39]*x[18]*b[63]+x[172] >= 0.0)
@NLconstraint(m, e20, -x[40]*x[19]*b[64]+x[173] >= 0.0)
@NLconstraint(m, e21, -x[40]*x[20]*b[65]+x[174] >= 0.0)
@NLconstraint(m, e22, -x[41]*x[21]*b[66]+x[175] >= 0.0)
@NLconstraint(m, e23, -x[41]*x[22]*b[67]+x[176] >= 0.0)
@NLconstraint(m, e24, -x[42]*x[23]*b[68]+x[177] >= 0.0)
@NLconstraint(m, e25, -x[42]*x[24]*b[69]+x[178] >= 0.0)
@NLconstraint(m, e26, -x[43]*x[25]*b[70]+x[179] >= 0.0)
@NLconstraint(m, e27, -x[43]*x[26]*b[71]+x[180] >= 0.0)
@NLconstraint(m, e28, -x[44]*x[27]*b[72]+x[181] >= 0.0)
@NLconstraint(m, e29, -x[44]*x[28]*b[73]+x[182] >= 0.0)
@NLconstraint(m, e30, -x[45]*x[29]*b[74]+x[183] >= 0.0)
@NLconstraint(m, e31, -x[45]*x[30]*b[75]+x[184] >= 0.0)
@constraint(m, e32, b[46]+b[47] == 1.0)
@constraint(m, e33, b[48]+b[49] == 1.0)
@constraint(m, e34, b[50]+b[51] == 1.0)
@constraint(m, e35, b[52]+b[53] == 1.0)
@constraint(m, e36, b[54]+b[55] == 1.0)
@constraint(m, e37, b[56]+b[57] == 1.0)
@constraint(m, e38, b[58]+b[59] == 1.0)
@constraint(m, e39, b[60]+b[61] == 1.0)
@constraint(m, e40, b[62]+b[63] == 1.0)
@constraint(m, e41, b[64]+b[65] == 1.0)
@constraint(m, e42, b[66]+b[67] == 1.0)
@constraint(m, e43, b[68]+b[69] == 1.0)
@constraint(m, e44, b[70]+b[71] == 1.0)
@constraint(m, e45, b[72]+b[73] == 1.0)
@constraint(m, e46, b[74]+b[75] == 1.0)
@constraint(m, e47, 2.02*b[46]+4.01333333333333*b[48]+4.76*b[50]+5.96*b[52]+42.0933333333333*b[54]+99.28*b[56]+6.59333333333333*b[58]+61.8666666666667*b[60]+56.2866666666667*b[62]+41.5*b[64]+62.4933333333333*b[66]+80.9066666666667*b[68]+26.1466666666667*b[70]+38*b[72]+62.24*b[74] <= 302.08)
@constraint(m, e48, 2.02*b[47]+4.01333333333333*b[49]+4.76*b[51]+5.96*b[53]+42.0933333333333*b[55]+99.28*b[57]+6.59333333333333*b[59]+61.8666666666667*b[61]+56.2866666666667*b[63]+41.5*b[65]+62.4933333333333*b[67]+80.9066666666667*b[69]+26.1466666666667*b[71]+38*b[73]+62.24*b[75] <= 302.08)
@constraint(m, e49, x[91]+x[95] >= 0.29424122)
@constraint(m, e50, x[92]+x[96] >= 0.29424122)
@constraint(m, e51, x[91]+x[97] >= 0.29760193)
@constraint(m, e52, x[92]+x[98] >= 0.29760193)
@constraint(m, e53, x[91]+x[99] >= 0.35149534)
@constraint(m, e54, x[92]+x[100] >= 0.35149534)
@constraint(m, e55, x[91]+x[101] >= 0.30458283)
@constraint(m, e56, x[92]+x[102] >= 0.30458283)
@constraint(m, e57, x[91]+x[103] >= 0.29951066)
@constraint(m, e58, x[92]+x[104] >= 0.29951066)
@constraint(m, e59, x[91]+x[105] >= 0.30694357)
@constraint(m, e60, x[92]+x[106] >= 0.30694357)
@constraint(m, e61, x[91]+x[107] >= 0.33520661)
@constraint(m, e62, x[92]+x[108] >= 0.33520661)
@constraint(m, e63, x[91]+x[109] >= 0.3400071)
@constraint(m, e64, x[92]+x[110] >= 0.3400071)
@constraint(m, e65, x[91]+x[111] >= 0.35227087)
@constraint(m, e66, x[92]+x[112] >= 0.35227087)
@constraint(m, e67, x[91]+x[113] >= 0.34225726)
@constraint(m, e68, x[92]+x[114] >= 0.34225726)
@constraint(m, e69, x[91]+x[115] >= 0.32776566)
@constraint(m, e70, x[92]+x[116] >= 0.32776566)
@constraint(m, e71, x[91]+x[117] >= 0.30438256)
@constraint(m, e72, x[92]+x[118] >= 0.30438256)
@constraint(m, e73, x[91]+x[119] >= 0.28538336)
@constraint(m, e74, x[92]+x[120] >= 0.28538336)
@constraint(m, e75, x[91]+x[121] >= 0.27950575)
@constraint(m, e76, x[92]+x[122] >= 0.27950575)
@constraint(m, e77, -x[91]+x[95] >= -0.29424122)
@constraint(m, e78, -x[92]+x[96] >= -0.29424122)
@constraint(m, e79, -x[91]+x[97] >= -0.29760193)
@constraint(m, e80, -x[92]+x[98] >= -0.29760193)
@constraint(m, e81, -x[91]+x[99] >= -0.35149534)
@constraint(m, e82, -x[92]+x[100] >= -0.35149534)
@constraint(m, e83, -x[91]+x[101] >= -0.30458283)
@constraint(m, e84, -x[92]+x[102] >= -0.30458283)
@constraint(m, e85, -x[91]+x[103] >= -0.29951066)
@constraint(m, e86, -x[92]+x[104] >= -0.29951066)
@constraint(m, e87, -x[91]+x[105] >= -0.30694357)
@constraint(m, e88, -x[92]+x[106] >= -0.30694357)
@constraint(m, e89, -x[91]+x[107] >= -0.33520661)
@constraint(m, e90, -x[92]+x[108] >= -0.33520661)
@constraint(m, e91, -x[91]+x[109] >= -0.3400071)
@constraint(m, e92, -x[92]+x[110] >= -0.3400071)
@constraint(m, e93, -x[91]+x[113] >= -0.34225726)
@constraint(m, e94, -x[92]+x[114] >= -0.34225726)
@constraint(m, e95, -x[91]+x[115] >= -0.32776566)
@constraint(m, e96, -x[92]+x[116] >= -0.32776566)
@constraint(m, e97, -x[91]+x[117] >= -0.30438256)
@constraint(m, e98, -x[92]+x[118] >= -0.30438256)
@constraint(m, e99, -x[91]+x[119] >= -0.28538336)
@constraint(m, e100, -x[92]+x[120] >= -0.28538336)
@constraint(m, e101, -x[91]+x[121] >= -0.27950575)
@constraint(m, e102, -x[92]+x[122] >= -0.27950575)
@constraint(m, e103, -x[91]+x[123] >= -0.25788969)
@constraint(m, e104, -x[92]+x[124] >= -0.25788969)
@constraint(m, e105, x[93]+x[127] >= -0.9536939)
@constraint(m, e106, x[94]+x[128] >= -0.9536939)
@constraint(m, e107, x[93]+x[129] >= -0.9004898)
@constraint(m, e108, x[94]+x[130] >= -0.9004898)
@constraint(m, e109, x[93]+x[131] >= -0.9114032)
@constraint(m, e110, x[94]+x[132] >= -0.9114032)
@constraint(m, e111, x[93]+x[133] >= -0.90071532)
@constraint(m, e112, x[94]+x[134] >= -0.90071532)
@constraint(m, e113, x[93]+x[135] >= -0.88043054)
@constraint(m, e114, x[94]+x[136] >= -0.88043054)
@constraint(m, e115, x[93]+x[137] >= -0.8680249)
@constraint(m, e116, x[94]+x[138] >= -0.8680249)
@constraint(m, e117, x[93]+x[139] >= -0.81034814)
@constraint(m, e118, x[94]+x[140] >= -0.81034814)
@constraint(m, e119, x[93]+x[141] >= -0.80843127)
@constraint(m, e120, x[94]+x[142] >= -0.80843127)
@constraint(m, e121, x[93]+x[143] >= -0.7794471)
@constraint(m, e122, x[94]+x[144] >= -0.7794471)
@constraint(m, e123, x[93]+x[145] >= -0.79930922)
@constraint(m, e124, x[94]+x[146] >= -0.79930922)
@constraint(m, e125, x[93]+x[147] >= -0.84280733)
@constraint(m, e126, x[94]+x[148] >= -0.84280733)
@constraint(m, e127, x[93]+x[149] >= -0.81379236)
@constraint(m, e128, x[94]+x[150] >= -0.81379236)
@constraint(m, e129, x[93]+x[151] >= -0.82457178)
@constraint(m, e130, x[94]+x[152] >= -0.82457178)
@constraint(m, e131, x[93]+x[153] >= -0.80226439)
@constraint(m, e132, x[94]+x[154] >= -0.80226439)
@constraint(m, e133, -x[93]+x[125] >= 0.98493628)
@constraint(m, e134, -x[94]+x[126] >= 0.98493628)
@constraint(m, e135, -x[93]+x[127] >= 0.9536939)
@constraint(m, e136, -x[94]+x[128] >= 0.9536939)
@constraint(m, e137, -x[93]+x[129] >= 0.9004898)
@constraint(m, e138, -x[94]+x[130] >= 0.9004898)
@constraint(m, e139, -x[93]+x[131] >= 0.9114032)
@constraint(m, e140, -x[94]+x[132] >= 0.9114032)
@constraint(m, e141, -x[93]+x[133] >= 0.90071532)
@constraint(m, e142, -x[94]+x[134] >= 0.90071532)
@constraint(m, e143, -x[93]+x[135] >= 0.88043054)
@constraint(m, e144, -x[94]+x[136] >= 0.88043054)
@constraint(m, e145, -x[93]+x[137] >= 0.8680249)
@constraint(m, e146, -x[94]+x[138] >= 0.8680249)
@constraint(m, e147, -x[93]+x[139] >= 0.81034814)
@constraint(m, e148, -x[94]+x[140] >= 0.81034814)
@constraint(m, e149, -x[93]+x[141] >= 0.80843127)
@constraint(m, e150, -x[94]+x[142] >= 0.80843127)
@constraint(m, e151, -x[93]+x[145] >= 0.79930922)
@constraint(m, e152, -x[94]+x[146] >= 0.79930922)
@constraint(m, e153, -x[93]+x[147] >= 0.84280733)
@constraint(m, e154, -x[94]+x[148] >= 0.84280733)
@constraint(m, e155, -x[93]+x[149] >= 0.81379236)
@constraint(m, e156, -x[94]+x[150] >= 0.81379236)
@constraint(m, e157, -x[93]+x[151] >= 0.82457178)
@constraint(m, e158, -x[94]+x[152] >= 0.82457178)
@constraint(m, e159, -x[93]+x[153] >= 0.80226439)
@constraint(m, e160, -x[94]+x[154] >= 0.80226439)
@constraint(m, e161, x[1]-x[95]-x[125] == 0.0)
@constraint(m, e162, x[2]-x[96]-x[126] == 0.0)
@constraint(m, e163, x[3]-x[97]-x[127] == 0.0)
@constraint(m, e164, x[4]-x[98]-x[128] == 0.0)
@constraint(m, e165, x[5]-x[99]-x[129] == 0.0)
@constraint(m, e166, x[6]-x[100]-x[130] == 0.0)
@constraint(m, e167, x[7]-x[101]-x[131] == 0.0)
@constraint(m, e168, x[8]-x[102]-x[132] == 0.0)
@constraint(m, e169, x[9]-x[103]-x[133] == 0.0)
@constraint(m, e170, x[10]-x[104]-x[134] == 0.0)
@constraint(m, e171, x[11]-x[105]-x[135] == 0.0)
@constraint(m, e172, x[12]-x[106]-x[136] == 0.0)
@constraint(m, e173, x[13]-x[107]-x[137] == 0.0)
@constraint(m, e174, x[14]-x[108]-x[138] == 0.0)
@constraint(m, e175, x[15]-x[109]-x[139] == 0.0)
@constraint(m, e176, x[16]-x[110]-x[140] == 0.0)
@constraint(m, e177, x[17]-x[111]-x[141] == 0.0)
@constraint(m, e178, x[18]-x[112]-x[142] == 0.0)
@constraint(m, e179, x[19]-x[113]-x[143] == 0.0)
@constraint(m, e180, x[20]-x[114]-x[144] == 0.0)
@constraint(m, e181, x[21]-x[115]-x[145] == 0.0)
@constraint(m, e182, x[22]-x[116]-x[146] == 0.0)
@constraint(m, e183, x[23]-x[117]-x[147] == 0.0)
@constraint(m, e184, x[24]-x[118]-x[148] == 0.0)
@constraint(m, e185, x[25]-x[119]-x[149] == 0.0)
@constraint(m, e186, x[26]-x[120]-x[150] == 0.0)
@constraint(m, e187, x[27]-x[121]-x[151] == 0.0)
@constraint(m, e188, x[28]-x[122]-x[152] == 0.0)
@constraint(m, e189, x[29]-x[123]-x[153] == 0.0)
@constraint(m, e190, x[30]-x[124]-x[154] == 0.0)
@constraint(m, e191, b[192]+b[193] >= 1.0)
@constraint(m, e192, b[190]+b[195] >= 1.0)
@constraint(m, e193, b[189]+b[193] >= 1.0)
@constraint(m, e194, b[189]+b[192]+b[194] >= 1.0)
@constraint(m, e195, b[189]+b[191]+b[195] >= 1.0)
@constraint(m, e196, b[189]+b[190] >= 1.0)
@constraint(m, e197, b[188]+b[195] >= 1.0)
@constraint(m, e198, b[188]+b[192] >= 1.0)
@constraint(m, e199, b[187]+b[194] >= 1.0)
@constraint(m, e200, b[187]+b[192]+b[195] >= 1.0)
@constraint(m, e201, b[187]+b[191] >= 1.0)
@constraint(m, e202, b[187]+b[189]+b[195] >= 1.0)
@constraint(m, e203, b[187]+b[189]+b[192] >= 1.0)
@constraint(m, e204, b[187]+b[188] >= 1.0)
@constraint(m, e205, b[186]+b[194] >= 1.0)
@constraint(m, e206, b[186]+b[192]+b[195] >= 1.0)
@constraint(m, e207, b[186]+b[191] >= 1.0)
@constraint(m, e208, b[186]+b[189] >= 1.0)
@constraint(m, e209, b[186]+b[187] >= 1.0)
@constraint(m, e210, b[185]+b[194] >= 1.0)
@constraint(m, e211, b[185]+b[192]+b[195] >= 1.0)
@constraint(m, e212, b[185]+b[191] >= 1.0)
@constraint(m, e213, b[185]+b[189]+b[195] >= 1.0)
@constraint(m, e214, b[185]+b[189]+b[192] >= 1.0)
@constraint(m, e215, b[185]+b[188] >= 1.0)
@constraint(m, e216, b[185]+b[187] >= 1.0)
@constraint(m, e217, b[185]+b[186] >= 1.0)
@constraint(m, e218, b[195]+b[200] >= 1.0)
@constraint(m, e219, b[195]+b[199]+b[201] >= 1.0)
@constraint(m, e220, b[195]+b[198]+b[202] >= 1.0)
@constraint(m, e221, b[195]+b[197] >= 1.0)
@constraint(m, e222, b[195]+b[196]+b[202] >= 1.0)
@constraint(m, e223, b[195]+b[196]+b[199] >= 1.0)
@constraint(m, e224, b[194]+b[201] >= 1.0)
@constraint(m, e225, b[194]+b[199]+b[202] >= 1.0)
@constraint(m, e226, b[194]+b[198] >= 1.0)
@constraint(m, e227, b[194]+b[196] >= 1.0)
@constraint(m, e228, b[193]+b[202] >= 1.0)
@constraint(m, e229, b[193]+b[199] >= 1.0)
@constraint(m, e230, b[193]+b[196] >= 1.0)
@constraint(m, e231, b[192]+b[200] >= 1.0)
@constraint(m, e232, b[192]+b[199]+b[201] >= 1.0)
@constraint(m, e233, b[192]+b[198]+b[202] >= 1.0)
@constraint(m, e234, b[192]+b[197] >= 1.0)
@constraint(m, e235, b[192]+b[196]+b[202] >= 1.0)
@constraint(m, e236, b[192]+b[196]+b[199] >= 1.0)
@constraint(m, e237, b[192]+b[195]+b[201] >= 1.0)
@constraint(m, e238, b[192]+b[195]+b[199]+b[202] >= 1.0)
@constraint(m, e239, b[192]+b[195]+b[198] >= 1.0)
@constraint(m, e240, b[192]+b[195]+b[196] >= 1.0)
@constraint(m, e241, b[192]+b[194]+b[202] >= 1.0)
@constraint(m, e242, b[192]+b[194]+b[199] >= 1.0)
@constraint(m, e243, b[192]+b[194]+b[196] >= 1.0)
@constraint(m, e244, b[191]+b[201] >= 1.0)
@constraint(m, e245, b[191]+b[199]+b[202] >= 1.0)
@constraint(m, e246, b[191]+b[198] >= 1.0)
@constraint(m, e247, b[191]+b[196] >= 1.0)
@constraint(m, e248, b[191]+b[195]+b[202] >= 1.0)
@constraint(m, e249, b[191]+b[195]+b[199] >= 1.0)
@constraint(m, e250, b[191]+b[195]+b[196] >= 1.0)
@constraint(m, e251, b[191]+b[194]+b[202] >= 1.0)
@constraint(m, e252, b[191]+b[194]+b[199] >= 1.0)
@constraint(m, e253, b[191]+b[194]+b[196] >= 1.0)
@constraint(m, e254, b[190]+b[202] >= 1.0)
@constraint(m, e255, b[190]+b[199] >= 1.0)
@constraint(m, e256, b[190]+b[196] >= 1.0)
@constraint(m, e257, b[189]+b[200] >= 1.0)
@constraint(m, e258, b[189]+b[199]+b[201] >= 1.0)
@constraint(m, e259, b[189]+b[198]+b[202] >= 1.0)
@constraint(m, e260, b[189]+b[197] >= 1.0)
@constraint(m, e261, b[189]+b[196]+b[202] >= 1.0)
@constraint(m, e262, b[189]+b[196]+b[199] >= 1.0)
@constraint(m, e263, b[189]+b[195]+b[201] >= 1.0)
@constraint(m, e264, b[189]+b[195]+b[199]+b[202] >= 1.0)
@constraint(m, e265, b[189]+b[195]+b[198] >= 1.0)
@constraint(m, e266, b[189]+b[195]+b[196] >= 1.0)
@constraint(m, e267, b[189]+b[194]+b[202] >= 1.0)
@constraint(m, e268, b[189]+b[194]+b[199] >= 1.0)
@constraint(m, e269, b[189]+b[194]+b[196] >= 1.0)
@constraint(m, e270, b[189]+b[192]+b[201] >= 1.0)
@constraint(m, e271, b[189]+b[192]+b[199]+b[202] >= 1.0)
@constraint(m, e272, b[189]+b[192]+b[198] >= 1.0)
@constraint(m, e273, b[189]+b[192]+b[196] >= 1.0)
@constraint(m, e274, b[189]+b[192]+b[195]+b[202] >= 1.0)
@constraint(m, e275, b[189]+b[192]+b[195]+b[199] >= 1.0)
@constraint(m, e276, b[189]+b[192]+b[195]+b[196] >= 1.0)
@constraint(m, e277, b[189]+b[191]+b[202] >= 1.0)
@constraint(m, e278, b[189]+b[191]+b[199] >= 1.0)
@constraint(m, e279, b[189]+b[191]+b[196] >= 1.0)
@constraint(m, e280, b[188]+b[202] >= 1.0)
@constraint(m, e281, b[188]+b[199] >= 1.0)
@constraint(m, e282, b[188]+b[196] >= 1.0)
@constraint(m, e283, b[187]+b[201] >= 1.0)
@constraint(m, e284, b[187]+b[199]+b[202] >= 1.0)
@constraint(m, e285, b[187]+b[198] >= 1.0)
@constraint(m, e286, b[187]+b[196] >= 1.0)
@constraint(m, e287, b[187]+b[195]+b[202] >= 1.0)
@constraint(m, e288, b[187]+b[195]+b[199] >= 1.0)
@constraint(m, e289, b[187]+b[195]+b[196] >= 1.0)
@constraint(m, e290, b[187]+b[192]+b[202] >= 1.0)
@constraint(m, e291, b[187]+b[192]+b[199] >= 1.0)
@constraint(m, e292, b[187]+b[192]+b[196] >= 1.0)
@constraint(m, e293, b[187]+b[189]+b[202] >= 1.0)
@constraint(m, e294, b[187]+b[189]+b[199] >= 1.0)
@constraint(m, e295, b[187]+b[189]+b[196] >= 1.0)
@constraint(m, e296, b[186]+b[201] >= 1.0)
@constraint(m, e297, b[186]+b[199]+b[202] >= 1.0)
@constraint(m, e298, b[186]+b[198] >= 1.0)
@constraint(m, e299, b[186]+b[196] >= 1.0)
@constraint(m, e300, b[186]+b[195]+b[202] >= 1.0)
@constraint(m, e301, b[186]+b[195]+b[199] >= 1.0)
@constraint(m, e302, b[186]+b[195]+b[196] >= 1.0)
@constraint(m, e303, b[186]+b[192]+b[202] >= 1.0)
@constraint(m, e304, b[186]+b[192]+b[199] >= 1.0)
@constraint(m, e305, b[186]+b[192]+b[196] >= 1.0)
@constraint(m, e306, b[185]+b[201] >= 1.0)
@constraint(m, e307, b[185]+b[199]+b[202] >= 1.0)
@constraint(m, e308, b[185]+b[198] >= 1.0)
@constraint(m, e309, b[185]+b[196] >= 1.0)
@constraint(m, e310, b[185]+b[195]+b[202] >= 1.0)
@constraint(m, e311, b[185]+b[195]+b[199] >= 1.0)
@constraint(m, e312, b[185]+b[195]+b[196] >= 1.0)
@constraint(m, e313, b[185]+b[192]+b[202] >= 1.0)
@constraint(m, e314, b[185]+b[192]+b[199] >= 1.0)
@constraint(m, e315, b[185]+b[192]+b[196] >= 1.0)
@constraint(m, e316, b[185]+b[189]+b[202] >= 1.0)
@constraint(m, e317, b[185]+b[189]+b[199] >= 1.0)
@constraint(m, e318, b[185]+b[189]+b[196] >= 1.0)
@constraint(m, e319, x[31]-2.02*b[185] >= 0.0)
@constraint(m, e320, x[32]-4.01333333333333*b[186] >= 0.0)
@constraint(m, e321, x[33]-4.76*b[187] >= 0.0)
@constraint(m, e322, x[34]-5.68*b[188] >= 0.0)
@constraint(m, e323, x[34]-5.96*b[189] >= 0.0)
@constraint(m, e324, x[35]-38.2666666666667*b[190] >= 0.0)
@constraint(m, e325, x[35]-40.18*b[191] >= 0.0)
@constraint(m, e326, x[35]-42.0933333333333*b[192] >= 0.0)
@constraint(m, e327, x[36]-90.2533333333333*b[193] >= 0.0)
@constraint(m, e328, x[36]-94.7666666666667*b[194] >= 0.0)
@constraint(m, e329, x[36]-99.28*b[195] >= 0.0)
@constraint(m, e330, x[37]-6.59333333333333*b[196] >= 0.0)
@constraint(m, e331, x[38]-56.24*b[197] >= 0.0)
@constraint(m, e332, x[38]-59.0533333333333*b[198] >= 0.0)
@constraint(m, e333, x[38]-61.8666666666667*b[199] >= 0.0)
@constraint(m, e334, x[39]-51.1733333333333*b[200] >= 0.0)
@constraint(m, e335, x[39]-53.7333333333333*b[201] >= 0.0)
@constraint(m, e336, x[39]-56.2866666666667*b[202] >= 0.0)
@constraint(m, e337, x[40]-35.84*b[203] >= 0.0)
@constraint(m, e338, x[40]-37.7266666666667*b[204] >= 0.0)
@constraint(m, e339, x[40]-39.6133333333333*b[205] >= 0.0)
@constraint(m, e340, x[40]-41.5*b[206] >= 0.0)
@constraint(m, e341, x[41]-56.8066666666667*b[207] >= 0.0)
@constraint(m, e342, x[41]-59.6466666666667*b[208] >= 0.0)
@constraint(m, e343, x[41]-62.4933333333333*b[209] >= 0.0)
@constraint(m, e344, x[42]-80.9066666666667*b[210] >= 0.0)
@constraint(m, e345, x[43]-26.1466666666667*b[211] >= 0.0)
@constraint(m, e346, x[44]-38*b[212] >= 0.0)
@constraint(m, e347, x[45]-59.2733333333333*b[213] >= 0.0)
@constraint(m, e348, x[45]-62.24*b[214] >= 0.0)
@constraint(m, e349, -x[76]+x[155] <= 0.0)
@constraint(m, e350, -x[76]+x[156] <= 0.0)
@constraint(m, e351, -x[77]+x[157] <= 0.0)
@constraint(m, e352, -x[77]+x[158] <= 0.0)
@constraint(m, e353, -x[78]+x[159] <= 0.0)
@constraint(m, e354, -x[78]+x[160] <= 0.0)
@constraint(m, e355, -x[79]+x[161] <= 0.0)
@constraint(m, e356, -x[79]+x[162] <= 0.0)
@constraint(m, e357, -x[80]+x[163] <= 0.0)
@constraint(m, e358, -x[80]+x[164] <= 0.0)
@constraint(m, e359, -x[81]+x[165] <= 0.0)
@constraint(m, e360, -x[81]+x[166] <= 0.0)
@constraint(m, e361, -x[82]+x[167] <= 0.0)
@constraint(m, e362, -x[82]+x[168] <= 0.0)
@constraint(m, e363, -x[83]+x[169] <= 0.0)
@constraint(m, e364, -x[83]+x[170] <= 0.0)
@constraint(m, e365, -x[84]+x[171] <= 0.0)
@constraint(m, e366, -x[84]+x[172] <= 0.0)
@constraint(m, e367, -x[85]+x[173] <= 0.0)
@constraint(m, e368, -x[85]+x[174] <= 0.0)
@constraint(m, e369, -x[86]+x[175] <= 0.0)
@constraint(m, e370, -x[86]+x[176] <= 0.0)
@constraint(m, e371, -x[87]+x[177] <= 0.0)
@constraint(m, e372, -x[87]+x[178] <= 0.0)
@constraint(m, e373, -x[88]+x[179] <= 0.0)
@constraint(m, e374, -x[88]+x[180] <= 0.0)
@constraint(m, e375, -x[89]+x[181] <= 0.0)
@constraint(m, e376, -x[89]+x[182] <= 0.0)
@constraint(m, e377, -x[90]+x[183] <= 0.0)
@constraint(m, e378, -x[90]+x[184] <= 0.0)
@constraint(m, e379, b[188]-b[189] >= 0.0)
@constraint(m, e380, b[190]-b[191] >= 0.0)
@constraint(m, e381, b[191]-b[192] >= 0.0)
@constraint(m, e382, b[193]-b[194] >= 0.0)
@constraint(m, e383, b[194]-b[195] >= 0.0)
@constraint(m, e384, b[197]-b[198] >= 0.0)
@constraint(m, e385, b[198]-b[199] >= 0.0)
@constraint(m, e386, b[200]-b[201] >= 0.0)
@constraint(m, e387, b[201]-b[202] >= 0.0)
@constraint(m, e388, b[203]-b[204] >= 0.0)
@constraint(m, e389, b[204]-b[205] >= 0.0)
@constraint(m, e390, b[205]-b[206] >= 0.0)
@constraint(m, e391, b[207]-b[208] >= 0.0)
@constraint(m, e392, b[208]-b[209] >= 0.0)
@constraint(m, e393, b[213]-b[214] >= 0.0)
@constraint(m, e394, x[93]-x[94] >= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 