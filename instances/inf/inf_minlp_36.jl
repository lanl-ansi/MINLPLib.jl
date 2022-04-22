using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -x[223]+x[224] == 0.0)
@NLconstraint(m, e2, -36/(1+b[1]) <= -1.0)
@NLconstraint(m, e3, -36/(1+b[2]) <= -2.0)
@NLconstraint(m, e4, -36/(1+b[3]) <= -3.0)
@NLconstraint(m, e5, -36/(1+b[4]) <= -4.0)
@NLconstraint(m, e6, -36/(1+b[5]) <= -5.0)
@NLconstraint(m, e7, -36/(1+b[6]) <= -6.0)
@NLconstraint(m, e8, -36/(1+b[7]) <= -7.0)
@NLconstraint(m, e9, -36/(1+b[8]) <= -8.0)
@NLconstraint(m, e10, -36/(1+b[9]) <= -9.0)
@NLconstraint(m, e11, -36/(1+b[10]) <= -10.0)
@NLconstraint(m, e12, -36/(1+b[11]) <= -11.0)
@NLconstraint(m, e13, -36/(1+b[12]) <= -12.0)
@NLconstraint(m, e14, -36/(1+b[13]) <= -13.0)
@NLconstraint(m, e15, -36/(1+b[14]) <= -14.0)
@NLconstraint(m, e16, -36/(1+b[15]) <= -15.0)
@NLconstraint(m, e17, -36/(1+b[16]) <= -16.0)
@NLconstraint(m, e18, -36/(1+b[17]) <= -17.0)
@NLconstraint(m, e19, -36/(1+b[18]) <= -18.0)
@NLconstraint(m, e20, -36/(1+b[19]) <= -19.0)
@NLconstraint(m, e21, -36/(1+b[20]) <= -20.0)
@NLconstraint(m, e22, -36/(1+b[21]) <= -21.0)
@NLconstraint(m, e23, -36/(1+b[22]) <= -22.0)
@NLconstraint(m, e24, -36/(1+b[23]) <= -23.0)
@NLconstraint(m, e25, -36/(1+b[24]) <= -24.0)
@NLconstraint(m, e26, -36/(1+b[25]) <= -25.0)
@NLconstraint(m, e27, -36/(1+b[26]) <= -26.0)
@NLconstraint(m, e28, -36/(1+b[27]) <= -27.0)
@NLconstraint(m, e29, -36/(1+b[28]) <= -28.0)
@NLconstraint(m, e30, -36/(1+b[29]) <= -29.0)
@NLconstraint(m, e31, -36/(1+b[30]) <= -30.0)
@NLconstraint(m, e32, -36/(1+b[31]) <= -31.0)
@NLconstraint(m, e33, -36/(1+b[32]) <= -32.0)
@NLconstraint(m, e34, -36/(1+b[33]) <= -33.0)
@NLconstraint(m, e35, -36/(1+b[34]) <= -34.0)
@NLconstraint(m, e36, -36/(1+b[35]) <= -35.0)
@NLconstraint(m, e37, -36/(1+b[36]) <= -36.0)
@NLconstraint(m, e38, -36/(1+b[37]) <= -37.0)
@NLconstraint(m, e39, -36/(1+b[38]) <= -1.0)
@NLconstraint(m, e40, -36/(1+b[39]) <= -2.0)
@NLconstraint(m, e41, -36/(1+b[40]) <= -3.0)
@NLconstraint(m, e42, -36/(1+b[41]) <= -4.0)
@NLconstraint(m, e43, -36/(1+b[42]) <= -5.0)
@NLconstraint(m, e44, -36/(1+b[43]) <= -6.0)
@NLconstraint(m, e45, -36/(1+b[44]) <= -7.0)
@NLconstraint(m, e46, -36/(1+b[45]) <= -8.0)
@NLconstraint(m, e47, -36/(1+b[46]) <= -9.0)
@NLconstraint(m, e48, -36/(1+b[47]) <= -10.0)
@NLconstraint(m, e49, -36/(1+b[48]) <= -11.0)
@NLconstraint(m, e50, -36/(1+b[49]) <= -12.0)
@NLconstraint(m, e51, -36/(1+b[50]) <= -13.0)
@NLconstraint(m, e52, -36/(1+b[51]) <= -14.0)
@NLconstraint(m, e53, -36/(1+b[52]) <= -15.0)
@NLconstraint(m, e54, -36/(1+b[53]) <= -16.0)
@NLconstraint(m, e55, -36/(1+b[54]) <= -17.0)
@NLconstraint(m, e56, -36/(1+b[55]) <= -18.0)
@NLconstraint(m, e57, -36/(1+b[56]) <= -19.0)
@NLconstraint(m, e58, -36/(1+b[57]) <= -20.0)
@NLconstraint(m, e59, -36/(1+b[58]) <= -21.0)
@NLconstraint(m, e60, -36/(1+b[59]) <= -22.0)
@NLconstraint(m, e61, -36/(1+b[60]) <= -23.0)
@NLconstraint(m, e62, -36/(1+b[61]) <= -24.0)
@NLconstraint(m, e63, -36/(1+b[62]) <= -25.0)
@NLconstraint(m, e64, -36/(1+b[63]) <= -26.0)
@NLconstraint(m, e65, -36/(1+b[64]) <= -27.0)
@NLconstraint(m, e66, -36/(1+b[65]) <= -28.0)
@NLconstraint(m, e67, -36/(1+b[66]) <= -29.0)
@NLconstraint(m, e68, -36/(1+b[67]) <= -30.0)
@NLconstraint(m, e69, -36/(1+b[68]) <= -31.0)
@NLconstraint(m, e70, -36/(1+b[69]) <= -32.0)
@NLconstraint(m, e71, -36/(1+b[70]) <= -33.0)
@NLconstraint(m, e72, -36/(1+b[71]) <= -34.0)
@NLconstraint(m, e73, -36/(1+b[72]) <= -35.0)
@NLconstraint(m, e74, -36/(1+b[73]) <= -36.0)
@NLconstraint(m, e75, -36/(1+b[74]) <= -37.0)
@NLconstraint(m, e76, -36/(1+b[75]) <= -1.0)
@NLconstraint(m, e77, -36/(1+b[76]) <= -2.0)
@NLconstraint(m, e78, -36/(1+b[77]) <= -3.0)
@NLconstraint(m, e79, -36/(1+b[78]) <= -4.0)
@NLconstraint(m, e80, -36/(1+b[79]) <= -5.0)
@NLconstraint(m, e81, -36/(1+b[80]) <= -6.0)
@NLconstraint(m, e82, -36/(1+b[81]) <= -7.0)
@NLconstraint(m, e83, -36/(1+b[82]) <= -8.0)
@NLconstraint(m, e84, -36/(1+b[83]) <= -9.0)
@NLconstraint(m, e85, -36/(1+b[84]) <= -10.0)
@NLconstraint(m, e86, -36/(1+b[85]) <= -11.0)
@NLconstraint(m, e87, -36/(1+b[86]) <= -12.0)
@NLconstraint(m, e88, -36/(1+b[87]) <= -13.0)
@NLconstraint(m, e89, -36/(1+b[88]) <= -14.0)
@NLconstraint(m, e90, -36/(1+b[89]) <= -15.0)
@NLconstraint(m, e91, -36/(1+b[90]) <= -16.0)
@NLconstraint(m, e92, -36/(1+b[91]) <= -17.0)
@NLconstraint(m, e93, -36/(1+b[92]) <= -18.0)
@NLconstraint(m, e94, -36/(1+b[93]) <= -19.0)
@NLconstraint(m, e95, -36/(1+b[94]) <= -20.0)
@NLconstraint(m, e96, -36/(1+b[95]) <= -21.0)
@NLconstraint(m, e97, -36/(1+b[96]) <= -22.0)
@NLconstraint(m, e98, -36/(1+b[97]) <= -23.0)
@NLconstraint(m, e99, -36/(1+b[98]) <= -24.0)
@NLconstraint(m, e100, -36/(1+b[99]) <= -25.0)
@NLconstraint(m, e101, -36/(1+b[100]) <= -26.0)
@NLconstraint(m, e102, -36/(1+b[101]) <= -27.0)
@NLconstraint(m, e103, -36/(1+b[102]) <= -28.0)
@NLconstraint(m, e104, -36/(1+b[103]) <= -29.0)
@NLconstraint(m, e105, -36/(1+b[104]) <= -30.0)
@NLconstraint(m, e106, -36/(1+b[105]) <= -31.0)
@NLconstraint(m, e107, -36/(1+b[106]) <= -32.0)
@NLconstraint(m, e108, -36/(1+b[107]) <= -33.0)
@NLconstraint(m, e109, -36/(1+b[108]) <= -34.0)
@NLconstraint(m, e110, -36/(1+b[109]) <= -35.0)
@NLconstraint(m, e111, -36/(1+b[110]) <= -36.0)
@NLconstraint(m, e112, -36/(1+b[111]) <= -37.0)
@NLconstraint(m, e113, -36/(1+b[112]) <= -1.0)
@NLconstraint(m, e114, -36/(1+b[113]) <= -2.0)
@NLconstraint(m, e115, -36/(1+b[114]) <= -3.0)
@NLconstraint(m, e116, -36/(1+b[115]) <= -4.0)
@NLconstraint(m, e117, -36/(1+b[116]) <= -5.0)
@NLconstraint(m, e118, -36/(1+b[117]) <= -6.0)
@NLconstraint(m, e119, -36/(1+b[118]) <= -7.0)
@NLconstraint(m, e120, -36/(1+b[119]) <= -8.0)
@NLconstraint(m, e121, -36/(1+b[120]) <= -9.0)
@NLconstraint(m, e122, -36/(1+b[121]) <= -10.0)
@NLconstraint(m, e123, -36/(1+b[122]) <= -11.0)
@NLconstraint(m, e124, -36/(1+b[123]) <= -12.0)
@NLconstraint(m, e125, -36/(1+b[124]) <= -13.0)
@NLconstraint(m, e126, -36/(1+b[125]) <= -14.0)
@NLconstraint(m, e127, -36/(1+b[126]) <= -15.0)
@NLconstraint(m, e128, -36/(1+b[127]) <= -16.0)
@NLconstraint(m, e129, -36/(1+b[128]) <= -17.0)
@NLconstraint(m, e130, -36/(1+b[129]) <= -18.0)
@NLconstraint(m, e131, -36/(1+b[130]) <= -19.0)
@NLconstraint(m, e132, -36/(1+b[131]) <= -20.0)
@NLconstraint(m, e133, -36/(1+b[132]) <= -21.0)
@NLconstraint(m, e134, -36/(1+b[133]) <= -22.0)
@NLconstraint(m, e135, -36/(1+b[134]) <= -23.0)
@NLconstraint(m, e136, -36/(1+b[135]) <= -24.0)
@NLconstraint(m, e137, -36/(1+b[136]) <= -25.0)
@NLconstraint(m, e138, -36/(1+b[137]) <= -26.0)
@NLconstraint(m, e139, -36/(1+b[138]) <= -27.0)
@NLconstraint(m, e140, -36/(1+b[139]) <= -28.0)
@NLconstraint(m, e141, -36/(1+b[140]) <= -29.0)
@NLconstraint(m, e142, -36/(1+b[141]) <= -30.0)
@NLconstraint(m, e143, -36/(1+b[142]) <= -31.0)
@NLconstraint(m, e144, -36/(1+b[143]) <= -32.0)
@NLconstraint(m, e145, -36/(1+b[144]) <= -33.0)
@NLconstraint(m, e146, -36/(1+b[145]) <= -34.0)
@NLconstraint(m, e147, -36/(1+b[146]) <= -35.0)
@NLconstraint(m, e148, -36/(1+b[147]) <= -36.0)
@NLconstraint(m, e149, -36/(1+b[148]) <= -37.0)
@NLconstraint(m, e150, -36/(1+b[149]) <= -1.0)
@NLconstraint(m, e151, -36/(1+b[150]) <= -2.0)
@NLconstraint(m, e152, -36/(1+b[151]) <= -3.0)
@NLconstraint(m, e153, -36/(1+b[152]) <= -4.0)
@NLconstraint(m, e154, -36/(1+b[153]) <= -5.0)
@NLconstraint(m, e155, -36/(1+b[154]) <= -6.0)
@NLconstraint(m, e156, -36/(1+b[155]) <= -7.0)
@NLconstraint(m, e157, -36/(1+b[156]) <= -8.0)
@NLconstraint(m, e158, -36/(1+b[157]) <= -9.0)
@NLconstraint(m, e159, -36/(1+b[158]) <= -10.0)
@NLconstraint(m, e160, -36/(1+b[159]) <= -11.0)
@NLconstraint(m, e161, -36/(1+b[160]) <= -12.0)
@NLconstraint(m, e162, -36/(1+b[161]) <= -13.0)
@NLconstraint(m, e163, -36/(1+b[162]) <= -14.0)
@NLconstraint(m, e164, -36/(1+b[163]) <= -15.0)
@NLconstraint(m, e165, -36/(1+b[164]) <= -16.0)
@NLconstraint(m, e166, -36/(1+b[165]) <= -17.0)
@NLconstraint(m, e167, -36/(1+b[166]) <= -18.0)
@NLconstraint(m, e168, -36/(1+b[167]) <= -19.0)
@NLconstraint(m, e169, -36/(1+b[168]) <= -20.0)
@NLconstraint(m, e170, -36/(1+b[169]) <= -21.0)
@NLconstraint(m, e171, -36/(1+b[170]) <= -22.0)
@NLconstraint(m, e172, -36/(1+b[171]) <= -23.0)
@NLconstraint(m, e173, -36/(1+b[172]) <= -24.0)
@NLconstraint(m, e174, -36/(1+b[173]) <= -25.0)
@NLconstraint(m, e175, -36/(1+b[174]) <= -26.0)
@NLconstraint(m, e176, -36/(1+b[175]) <= -27.0)
@NLconstraint(m, e177, -36/(1+b[176]) <= -28.0)
@NLconstraint(m, e178, -36/(1+b[177]) <= -29.0)
@NLconstraint(m, e179, -36/(1+b[178]) <= -30.0)
@NLconstraint(m, e180, -36/(1+b[179]) <= -31.0)
@NLconstraint(m, e181, -36/(1+b[180]) <= -32.0)
@NLconstraint(m, e182, -36/(1+b[181]) <= -33.0)
@NLconstraint(m, e183, -36/(1+b[182]) <= -34.0)
@NLconstraint(m, e184, -36/(1+b[183]) <= -35.0)
@NLconstraint(m, e185, -36/(1+b[184]) <= -36.0)
@NLconstraint(m, e186, -36/(1+b[185]) <= -37.0)
@constraint(m, e187, 18*b[1] >= 17.0)
@constraint(m, e188, 18*b[2] >= 16.0)
@constraint(m, e189, 18*b[3] >= 15.0)
@constraint(m, e190, 18*b[4] >= 14.0)
@constraint(m, e191, 18*b[5] >= 13.0)
@constraint(m, e192, 18*b[6] >= 12.0)
@constraint(m, e193, 18*b[7] >= 11.0)
@constraint(m, e194, 18*b[8] >= 10.0)
@constraint(m, e195, 18*b[9] >= 9.0)
@constraint(m, e196, 18*b[10] >= 8.0)
@constraint(m, e197, 18*b[11] >= 7.0)
@constraint(m, e198, 18*b[12] >= 6.0)
@constraint(m, e199, 18*b[13] >= 5.0)
@constraint(m, e200, 18*b[14] >= 4.0)
@constraint(m, e201, 18*b[15] >= 3.0)
@constraint(m, e202, 18*b[16] >= 2.0)
@constraint(m, e203, 18*b[17] >= 1.0)
@constraint(m, e204, 18*b[18] >= 0.0)
@constraint(m, e205, 18*b[19] >= -1.0)
@constraint(m, e206, 18*b[20] >= -2.0)
@constraint(m, e207, 18*b[21] >= -3.0)
@constraint(m, e208, 18*b[22] >= -4.0)
@constraint(m, e209, 18*b[23] >= -5.0)
@constraint(m, e210, 18*b[24] >= -6.0)
@constraint(m, e211, 18*b[25] >= -7.0)
@constraint(m, e212, 18*b[26] >= -8.0)
@constraint(m, e213, 18*b[27] >= -9.0)
@constraint(m, e214, 18*b[28] >= -10.0)
@constraint(m, e215, 18*b[29] >= -11.0)
@constraint(m, e216, 18*b[30] >= -12.0)
@constraint(m, e217, 18*b[31] >= -13.0)
@constraint(m, e218, 18*b[32] >= -14.0)
@constraint(m, e219, 18*b[33] >= -15.0)
@constraint(m, e220, 18*b[34] >= -16.0)
@constraint(m, e221, 18*b[35] >= -17.0)
@constraint(m, e222, 18*b[36] >= -18.0)
@constraint(m, e223, 18*b[37] >= -19.0)
@constraint(m, e224, 18*b[38] >= 17.0)
@constraint(m, e225, 18*b[39] >= 16.0)
@constraint(m, e226, 18*b[40] >= 15.0)
@constraint(m, e227, 18*b[41] >= 14.0)
@constraint(m, e228, 18*b[42] >= 13.0)
@constraint(m, e229, 18*b[43] >= 12.0)
@constraint(m, e230, 18*b[44] >= 11.0)
@constraint(m, e231, 18*b[45] >= 10.0)
@constraint(m, e232, 18*b[46] >= 9.0)
@constraint(m, e233, 18*b[47] >= 8.0)
@constraint(m, e234, 18*b[48] >= 7.0)
@constraint(m, e235, 18*b[49] >= 6.0)
@constraint(m, e236, 18*b[50] >= 5.0)
@constraint(m, e237, 18*b[51] >= 4.0)
@constraint(m, e238, 18*b[52] >= 3.0)
@constraint(m, e239, 18*b[53] >= 2.0)
@constraint(m, e240, 18*b[54] >= 1.0)
@constraint(m, e241, 18*b[55] >= 0.0)
@constraint(m, e242, 18*b[56] >= -1.0)
@constraint(m, e243, 18*b[57] >= -2.0)
@constraint(m, e244, 18*b[58] >= -3.0)
@constraint(m, e245, 18*b[59] >= -4.0)
@constraint(m, e246, 18*b[60] >= -5.0)
@constraint(m, e247, 18*b[61] >= -6.0)
@constraint(m, e248, 18*b[62] >= -7.0)
@constraint(m, e249, 18*b[63] >= -8.0)
@constraint(m, e250, 18*b[64] >= -9.0)
@constraint(m, e251, 18*b[65] >= -10.0)
@constraint(m, e252, 18*b[66] >= -11.0)
@constraint(m, e253, 18*b[67] >= -12.0)
@constraint(m, e254, 18*b[68] >= -13.0)
@constraint(m, e255, 18*b[69] >= -14.0)
@constraint(m, e256, 18*b[70] >= -15.0)
@constraint(m, e257, 18*b[71] >= -16.0)
@constraint(m, e258, 18*b[72] >= -17.0)
@constraint(m, e259, 18*b[73] >= -18.0)
@constraint(m, e260, 18*b[74] >= -19.0)
@constraint(m, e261, 18*b[75] >= 17.0)
@constraint(m, e262, 18*b[76] >= 16.0)
@constraint(m, e263, 18*b[77] >= 15.0)
@constraint(m, e264, 18*b[78] >= 14.0)
@constraint(m, e265, 18*b[79] >= 13.0)
@constraint(m, e266, 18*b[80] >= 12.0)
@constraint(m, e267, 18*b[81] >= 11.0)
@constraint(m, e268, 18*b[82] >= 10.0)
@constraint(m, e269, 18*b[83] >= 9.0)
@constraint(m, e270, 18*b[84] >= 8.0)
@constraint(m, e271, 18*b[85] >= 7.0)
@constraint(m, e272, 18*b[86] >= 6.0)
@constraint(m, e273, 18*b[87] >= 5.0)
@constraint(m, e274, 18*b[88] >= 4.0)
@constraint(m, e275, 18*b[89] >= 3.0)
@constraint(m, e276, 18*b[90] >= 2.0)
@constraint(m, e277, 18*b[91] >= 1.0)
@constraint(m, e278, 18*b[92] >= 0.0)
@constraint(m, e279, 18*b[93] >= -1.0)
@constraint(m, e280, 18*b[94] >= -2.0)
@constraint(m, e281, 18*b[95] >= -3.0)
@constraint(m, e282, 18*b[96] >= -4.0)
@constraint(m, e283, 18*b[97] >= -5.0)
@constraint(m, e284, 18*b[98] >= -6.0)
@constraint(m, e285, 18*b[99] >= -7.0)
@constraint(m, e286, 18*b[100] >= -8.0)
@constraint(m, e287, 18*b[101] >= -9.0)
@constraint(m, e288, 18*b[102] >= -10.0)
@constraint(m, e289, 18*b[103] >= -11.0)
@constraint(m, e290, 18*b[104] >= -12.0)
@constraint(m, e291, 18*b[105] >= -13.0)
@constraint(m, e292, 18*b[106] >= -14.0)
@constraint(m, e293, 18*b[107] >= -15.0)
@constraint(m, e294, 18*b[108] >= -16.0)
@constraint(m, e295, 18*b[109] >= -17.0)
@constraint(m, e296, 18*b[110] >= -18.0)
@constraint(m, e297, 18*b[111] >= -19.0)
@constraint(m, e298, 18*b[112] >= 17.0)
@constraint(m, e299, 18*b[113] >= 16.0)
@constraint(m, e300, 18*b[114] >= 15.0)
@constraint(m, e301, 18*b[115] >= 14.0)
@constraint(m, e302, 18*b[116] >= 13.0)
@constraint(m, e303, 18*b[117] >= 12.0)
@constraint(m, e304, 18*b[118] >= 11.0)
@constraint(m, e305, 18*b[119] >= 10.0)
@constraint(m, e306, 18*b[120] >= 9.0)
@constraint(m, e307, 18*b[121] >= 8.0)
@constraint(m, e308, 18*b[122] >= 7.0)
@constraint(m, e309, 18*b[123] >= 6.0)
@constraint(m, e310, 18*b[124] >= 5.0)
@constraint(m, e311, 18*b[125] >= 4.0)
@constraint(m, e312, 18*b[126] >= 3.0)
@constraint(m, e313, 18*b[127] >= 2.0)
@constraint(m, e314, 18*b[128] >= 1.0)
@constraint(m, e315, 18*b[129] >= 0.0)
@constraint(m, e316, 18*b[130] >= -1.0)
@constraint(m, e317, 18*b[131] >= -2.0)
@constraint(m, e318, 18*b[132] >= -3.0)
@constraint(m, e319, 18*b[133] >= -4.0)
@constraint(m, e320, 18*b[134] >= -5.0)
@constraint(m, e321, 18*b[135] >= -6.0)
@constraint(m, e322, 18*b[136] >= -7.0)
@constraint(m, e323, 18*b[137] >= -8.0)
@constraint(m, e324, 18*b[138] >= -9.0)
@constraint(m, e325, 18*b[139] >= -10.0)
@constraint(m, e326, 18*b[140] >= -11.0)
@constraint(m, e327, 18*b[141] >= -12.0)
@constraint(m, e328, 18*b[142] >= -13.0)
@constraint(m, e329, 18*b[143] >= -14.0)
@constraint(m, e330, 18*b[144] >= -15.0)
@constraint(m, e331, 18*b[145] >= -16.0)
@constraint(m, e332, 18*b[146] >= -17.0)
@constraint(m, e333, 18*b[147] >= -18.0)
@constraint(m, e334, 18*b[148] >= -19.0)
@constraint(m, e335, 18*b[149] >= 17.0)
@constraint(m, e336, 18*b[150] >= 16.0)
@constraint(m, e337, 18*b[151] >= 15.0)
@constraint(m, e338, 18*b[152] >= 14.0)
@constraint(m, e339, 18*b[153] >= 13.0)
@constraint(m, e340, 18*b[154] >= 12.0)
@constraint(m, e341, 18*b[155] >= 11.0)
@constraint(m, e342, 18*b[156] >= 10.0)
@constraint(m, e343, 18*b[157] >= 9.0)
@constraint(m, e344, 18*b[158] >= 8.0)
@constraint(m, e345, 18*b[159] >= 7.0)
@constraint(m, e346, 18*b[160] >= 6.0)
@constraint(m, e347, 18*b[161] >= 5.0)
@constraint(m, e348, 18*b[162] >= 4.0)
@constraint(m, e349, 18*b[163] >= 3.0)
@constraint(m, e350, 18*b[164] >= 2.0)
@constraint(m, e351, 18*b[165] >= 1.0)
@constraint(m, e352, 18*b[166] >= 0.0)
@constraint(m, e353, 18*b[167] >= -1.0)
@constraint(m, e354, 18*b[168] >= -2.0)
@constraint(m, e355, 18*b[169] >= -3.0)
@constraint(m, e356, 18*b[170] >= -4.0)
@constraint(m, e357, 18*b[171] >= -5.0)
@constraint(m, e358, 18*b[172] >= -6.0)
@constraint(m, e359, 18*b[173] >= -7.0)
@constraint(m, e360, 18*b[174] >= -8.0)
@constraint(m, e361, 18*b[175] >= -9.0)
@constraint(m, e362, 18*b[176] >= -10.0)
@constraint(m, e363, 18*b[177] >= -11.0)
@constraint(m, e364, 18*b[178] >= -12.0)
@constraint(m, e365, 18*b[179] >= -13.0)
@constraint(m, e366, 18*b[180] >= -14.0)
@constraint(m, e367, 18*b[181] >= -15.0)
@constraint(m, e368, 18*b[182] >= -16.0)
@constraint(m, e369, 18*b[183] >= -17.0)
@constraint(m, e370, 18*b[184] >= -18.0)
@constraint(m, e371, 18*b[185] >= -19.0)
@constraint(m, e372, x[186] == 0.0)
@constraint(m, e373, -3.53708011290576*b[2]+x[187] == 3.53708011290576)
@constraint(m, e374, -6.87917432320026*b[3]+x[188] == 6.87917432320026)
@constraint(m, e375, -9.22800717956726*b[4]+x[189] == 9.22800717956726)
@constraint(m, e376, -10.4925489387063*b[5]+x[190] == 10.4925489387063)
@constraint(m, e377, -0.585983058340091*b[6]+x[191] == 0.585983058340091)
@constraint(m, e378, -4.66140114477876*b[7]+x[192] == 4.66140114477876)
@constraint(m, e379, -14.7583712181443*b[8]+x[193] == 14.7583712181443)
@constraint(m, e380, -28.7873558146336*b[9]+x[194] == 28.7873558146336)
@constraint(m, e381, -5.6930448866516E16*b[10]+x[195] == 5.6930448866516e16)
@constraint(m, e382, 13.5955013607237*b[11]+x[196] == -13.5955013607237)
@constraint(m, e383, 5.22962460495239*b[12]+x[197] == -5.22962460495239)
@constraint(m, e384, 3.08912507837422*b[13]+x[198] == -3.08912507837422)
@constraint(m, e385, 2.3125803459773*b[14]+x[199] == -2.3125803459773)
@constraint(m, e386, 2.13435323593956*b[15]+x[200] == -2.13435323593956)
@constraint(m, e387, 1.94325329156233*b[16]+x[201] == -1.94325329156233)
@constraint(m, e388, 1.73471152946488*b[17]+x[202] == -1.73471152946488)
@constraint(m, e389, 1.10635842729435*b[18]+x[203] == -1.10635842729435)
@constraint(m, e390, 8.77977416315269E-16*b[19]+x[204] == -8.77977416315269e-16)
@constraint(m, e391, -1.36926407073162*b[20]+x[205] == 1.36926407073162)
@constraint(m, e392, -2.90704083980577*b[21]+x[206] == 2.90704083980577)
@constraint(m, e393, -4.20126375635538*b[22]+x[207] == 4.20126375635538)
@constraint(m, e394, -5.55621527729624*b[23]+x[208] == 5.55621527729624)
@constraint(m, e395, -7.26696744185352*b[24]+x[209] == 7.26696744185352)
@constraint(m, e396, -10.3222374972817*b[25]+x[210] == 10.3222374972817)
@constraint(m, e397, -16.497897856034*b[26]+x[211] == 16.497897856034)
@constraint(m, e398, -36.8250705791833*b[27]+x[212] == 36.8250705791833)
@constraint(m, e399, -6.92598642794314E15*b[28]+x[213] == 6.92598642794314e15)
@constraint(m, e400, 45.0401999715503*b[29]+x[214] == -45.0401999715503)
@constraint(m, e401, 26.5024010982514*b[30]+x[215] == -26.5024010982514)
@constraint(m, e402, 21.8288127789189*b[31]+x[216] == -21.8288127789189)
@constraint(m, e403, 18.8577856286339*b[32]+x[217] == -18.8577856286339)
@constraint(m, e404, 16.5719268784346*b[33]+x[218] == -16.5719268784346)
@constraint(m, e405, 14.6949222351651*b[34]+x[219] == -14.6949222351651)
@constraint(m, e406, 11.2626749266227*b[35]+x[220] == -11.2626749266227)
@constraint(m, e407, 6.02450366808*b[36]+x[221] == -6.02450366808)
@constraint(m, e408, 6.37753833692151E-15*b[37]+x[222] == -6.37753833692151e-15)
@constraint(m, e409, x[186] == 0.0)
@constraint(m, e410, -3.53708011290576*b[39]+x[187] == 3.53708011290576)
@constraint(m, e411, -6.87917432320026*b[40]+x[188] == 6.87917432320026)
@constraint(m, e412, -9.22800717956726*b[41]+x[189] == 9.22800717956726)
@constraint(m, e413, -10.4925489387063*b[42]+x[190] == 10.4925489387063)
@constraint(m, e414, -0.585983058340091*b[43]+x[191] == 0.585983058340091)
@constraint(m, e415, -4.66140114477876*b[44]+x[192] == 4.66140114477876)
@constraint(m, e416, -14.7583712181443*b[45]+x[193] == 14.7583712181443)
@constraint(m, e417, -28.7873558146336*b[46]+x[194] == 28.7873558146336)
@constraint(m, e418, -5.6930448866516E16*b[47]+x[195] == 5.6930448866516e16)
@constraint(m, e419, 13.5955013607237*b[48]+x[196] == -13.5955013607237)
@constraint(m, e420, 5.22962460495239*b[49]+x[197] == -5.22962460495239)
@constraint(m, e421, 3.08912507837422*b[50]+x[198] == -3.08912507837422)
@constraint(m, e422, 2.3125803459773*b[51]+x[199] == -2.3125803459773)
@constraint(m, e423, 2.13435323593956*b[52]+x[200] == -2.13435323593956)
@constraint(m, e424, 1.94325329156233*b[53]+x[201] == -1.94325329156233)
@constraint(m, e425, 1.73471152946488*b[54]+x[202] == -1.73471152946488)
@constraint(m, e426, 1.10635842729435*b[55]+x[203] == -1.10635842729435)
@constraint(m, e427, 8.77977416315269E-16*b[56]+x[204] == -8.77977416315269e-16)
@constraint(m, e428, -1.36926407073162*b[57]+x[205] == 1.36926407073162)
@constraint(m, e429, -2.90704083980577*b[58]+x[206] == 2.90704083980577)
@constraint(m, e430, -4.20126375635538*b[59]+x[207] == 4.20126375635538)
@constraint(m, e431, -5.55621527729624*b[60]+x[208] == 5.55621527729624)
@constraint(m, e432, -7.26696744185352*b[61]+x[209] == 7.26696744185352)
@constraint(m, e433, -10.3222374972817*b[62]+x[210] == 10.3222374972817)
@constraint(m, e434, -16.497897856034*b[63]+x[211] == 16.497897856034)
@constraint(m, e435, -36.8250705791833*b[64]+x[212] == 36.8250705791833)
@constraint(m, e436, -6.92598642794314E15*b[65]+x[213] == 6.92598642794314e15)
@constraint(m, e437, 45.0401999715503*b[66]+x[214] == -45.0401999715503)
@constraint(m, e438, 26.5024010982514*b[67]+x[215] == -26.5024010982514)
@constraint(m, e439, 21.8288127789189*b[68]+x[216] == -21.8288127789189)
@constraint(m, e440, 18.8577856286339*b[69]+x[217] == -18.8577856286339)
@constraint(m, e441, 16.5719268784346*b[70]+x[218] == -16.5719268784346)
@constraint(m, e442, 14.6949222351651*b[71]+x[219] == -14.6949222351651)
@constraint(m, e443, 11.2626749266227*b[72]+x[220] == -11.2626749266227)
@constraint(m, e444, 6.02450366808*b[73]+x[221] == -6.02450366808)
@constraint(m, e445, 6.37753833692151E-15*b[74]+x[222] == -6.37753833692151e-15)
@constraint(m, e446, x[186] == 0.0)
@constraint(m, e447, -3.53708011290576*b[76]+x[187] == 3.53708011290576)
@constraint(m, e448, -6.87917432320026*b[77]+x[188] == 6.87917432320026)
@constraint(m, e449, -9.22800717956726*b[78]+x[189] == 9.22800717956726)
@constraint(m, e450, -10.4925489387063*b[79]+x[190] == 10.4925489387063)
@constraint(m, e451, -0.585983058340091*b[80]+x[191] == 0.585983058340091)
@constraint(m, e452, -4.66140114477876*b[81]+x[192] == 4.66140114477876)
@constraint(m, e453, -14.7583712181443*b[82]+x[193] == 14.7583712181443)
@constraint(m, e454, -28.7873558146336*b[83]+x[194] == 28.7873558146336)
@constraint(m, e455, -5.6930448866516E16*b[84]+x[195] == 5.6930448866516e16)
@constraint(m, e456, 13.5955013607237*b[85]+x[196] == -13.5955013607237)
@constraint(m, e457, 5.22962460495239*b[86]+x[197] == -5.22962460495239)
@constraint(m, e458, 3.08912507837422*b[87]+x[198] == -3.08912507837422)
@constraint(m, e459, 2.3125803459773*b[88]+x[199] == -2.3125803459773)
@constraint(m, e460, 2.13435323593956*b[89]+x[200] == -2.13435323593956)
@constraint(m, e461, 1.94325329156233*b[90]+x[201] == -1.94325329156233)
@constraint(m, e462, 1.73471152946488*b[91]+x[202] == -1.73471152946488)
@constraint(m, e463, 1.10635842729435*b[92]+x[203] == -1.10635842729435)
@constraint(m, e464, 8.77977416315269E-16*b[93]+x[204] == -8.77977416315269e-16)
@constraint(m, e465, -1.36926407073162*b[94]+x[205] == 1.36926407073162)
@constraint(m, e466, -2.90704083980577*b[95]+x[206] == 2.90704083980577)
@constraint(m, e467, -4.20126375635538*b[96]+x[207] == 4.20126375635538)
@constraint(m, e468, -5.55621527729624*b[97]+x[208] == 5.55621527729624)
@constraint(m, e469, -7.26696744185352*b[98]+x[209] == 7.26696744185352)
@constraint(m, e470, -10.3222374972817*b[99]+x[210] == 10.3222374972817)
@constraint(m, e471, -16.497897856034*b[100]+x[211] == 16.497897856034)
@constraint(m, e472, -36.8250705791833*b[101]+x[212] == 36.8250705791833)
@constraint(m, e473, -6.92598642794314E15*b[102]+x[213] == 6.92598642794314e15)
@constraint(m, e474, 45.0401999715503*b[103]+x[214] == -45.0401999715503)
@constraint(m, e475, 26.5024010982514*b[104]+x[215] == -26.5024010982514)
@constraint(m, e476, 21.8288127789189*b[105]+x[216] == -21.8288127789189)
@constraint(m, e477, 18.8577856286339*b[106]+x[217] == -18.8577856286339)
@constraint(m, e478, 16.5719268784346*b[107]+x[218] == -16.5719268784346)
@constraint(m, e479, 14.6949222351651*b[108]+x[219] == -14.6949222351651)
@constraint(m, e480, 11.2626749266227*b[109]+x[220] == -11.2626749266227)
@constraint(m, e481, 6.02450366808*b[110]+x[221] == -6.02450366808)
@constraint(m, e482, 6.37753833692151E-15*b[111]+x[222] == -6.37753833692151e-15)
@constraint(m, e483, x[186] == 0.0)
@constraint(m, e484, -3.53708011290576*b[113]+x[187] == 3.53708011290576)
@constraint(m, e485, -6.87917432320026*b[114]+x[188] == 6.87917432320026)
@constraint(m, e486, -9.22800717956726*b[115]+x[189] == 9.22800717956726)
@constraint(m, e487, -10.4925489387063*b[116]+x[190] == 10.4925489387063)
@constraint(m, e488, -0.585983058340091*b[117]+x[191] == 0.585983058340091)
@constraint(m, e489, -4.66140114477876*b[118]+x[192] == 4.66140114477876)
@constraint(m, e490, -14.7583712181443*b[119]+x[193] == 14.7583712181443)
@constraint(m, e491, -28.7873558146336*b[120]+x[194] == 28.7873558146336)
@constraint(m, e492, -5.6930448866516E16*b[121]+x[195] == 5.6930448866516e16)
@constraint(m, e493, 13.5955013607237*b[122]+x[196] == -13.5955013607237)
@constraint(m, e494, 5.22962460495239*b[123]+x[197] == -5.22962460495239)
@constraint(m, e495, 3.08912507837422*b[124]+x[198] == -3.08912507837422)
@constraint(m, e496, 2.3125803459773*b[125]+x[199] == -2.3125803459773)
@constraint(m, e497, 2.13435323593956*b[126]+x[200] == -2.13435323593956)
@constraint(m, e498, 1.94325329156233*b[127]+x[201] == -1.94325329156233)
@constraint(m, e499, 1.73471152946488*b[128]+x[202] == -1.73471152946488)
@constraint(m, e500, 1.10635842729435*b[129]+x[203] == -1.10635842729435)
@constraint(m, e501, 8.77977416315269E-16*b[130]+x[204] == -8.77977416315269e-16)
@constraint(m, e502, -1.36926407073162*b[131]+x[205] == 1.36926407073162)
@constraint(m, e503, -2.90704083980577*b[132]+x[206] == 2.90704083980577)
@constraint(m, e504, -4.20126375635538*b[133]+x[207] == 4.20126375635538)
@constraint(m, e505, -5.55621527729624*b[134]+x[208] == 5.55621527729624)
@constraint(m, e506, -7.26696744185352*b[135]+x[209] == 7.26696744185352)
@constraint(m, e507, -10.3222374972817*b[136]+x[210] == 10.3222374972817)
@constraint(m, e508, -16.497897856034*b[137]+x[211] == 16.497897856034)
@constraint(m, e509, -36.8250705791833*b[138]+x[212] == 36.8250705791833)
@constraint(m, e510, -6.92598642794314E15*b[139]+x[213] == 6.92598642794314e15)
@constraint(m, e511, 45.0401999715503*b[140]+x[214] == -45.0401999715503)
@constraint(m, e512, 26.5024010982514*b[141]+x[215] == -26.5024010982514)
@constraint(m, e513, 21.8288127789189*b[142]+x[216] == -21.8288127789189)
@constraint(m, e514, 18.8577856286339*b[143]+x[217] == -18.8577856286339)
@constraint(m, e515, 16.5719268784346*b[144]+x[218] == -16.5719268784346)
@constraint(m, e516, 14.6949222351651*b[145]+x[219] == -14.6949222351651)
@constraint(m, e517, 11.2626749266227*b[146]+x[220] == -11.2626749266227)
@constraint(m, e518, 6.02450366808*b[147]+x[221] == -6.02450366808)
@constraint(m, e519, 6.37753833692151E-15*b[148]+x[222] == -6.37753833692151e-15)
@constraint(m, e520, x[186] == 0.0)
@constraint(m, e521, -3.53708011290576*b[150]+x[187] == 3.53708011290576)
@constraint(m, e522, -6.87917432320026*b[151]+x[188] == 6.87917432320026)
@constraint(m, e523, -9.22800717956726*b[152]+x[189] == 9.22800717956726)
@constraint(m, e524, -10.4925489387063*b[153]+x[190] == 10.4925489387063)
@constraint(m, e525, -0.585983058340091*b[154]+x[191] == 0.585983058340091)
@constraint(m, e526, -4.66140114477876*b[155]+x[192] == 4.66140114477876)
@constraint(m, e527, -14.7583712181443*b[156]+x[193] == 14.7583712181443)
@constraint(m, e528, -28.7873558146336*b[157]+x[194] == 28.7873558146336)
@constraint(m, e529, -5.6930448866516E16*b[158]+x[195] == 5.6930448866516e16)
@constraint(m, e530, 13.5955013607237*b[159]+x[196] == -13.5955013607237)
@constraint(m, e531, 5.22962460495239*b[160]+x[197] == -5.22962460495239)
@constraint(m, e532, 3.08912507837422*b[161]+x[198] == -3.08912507837422)
@constraint(m, e533, 2.3125803459773*b[162]+x[199] == -2.3125803459773)
@constraint(m, e534, 2.13435323593956*b[163]+x[200] == -2.13435323593956)
@constraint(m, e535, 1.94325329156233*b[164]+x[201] == -1.94325329156233)
@constraint(m, e536, 1.73471152946488*b[165]+x[202] == -1.73471152946488)
@constraint(m, e537, 1.10635842729435*b[166]+x[203] == -1.10635842729435)
@constraint(m, e538, 8.77977416315269E-16*b[167]+x[204] == -8.77977416315269e-16)
@constraint(m, e539, -1.36926407073162*b[168]+x[205] == 1.36926407073162)
@constraint(m, e540, -2.90704083980577*b[169]+x[206] == 2.90704083980577)
@constraint(m, e541, -4.20126375635538*b[170]+x[207] == 4.20126375635538)
@constraint(m, e542, -5.55621527729624*b[171]+x[208] == 5.55621527729624)
@constraint(m, e543, -7.26696744185352*b[172]+x[209] == 7.26696744185352)
@constraint(m, e544, -10.3222374972817*b[173]+x[210] == 10.3222374972817)
@constraint(m, e545, -16.497897856034*b[174]+x[211] == 16.497897856034)
@constraint(m, e546, -36.8250705791833*b[175]+x[212] == 36.8250705791833)
@constraint(m, e547, -6.92598642794314E15*b[176]+x[213] == 6.92598642794314e15)
@constraint(m, e548, 45.0401999715503*b[177]+x[214] == -45.0401999715503)
@constraint(m, e549, 26.5024010982514*b[178]+x[215] == -26.5024010982514)
@constraint(m, e550, 21.8288127789189*b[179]+x[216] == -21.8288127789189)
@constraint(m, e551, 18.8577856286339*b[180]+x[217] == -18.8577856286339)
@constraint(m, e552, 16.5719268784346*b[181]+x[218] == -16.5719268784346)
@constraint(m, e553, 14.6949222351651*b[182]+x[219] == -14.6949222351651)
@constraint(m, e554, 11.2626749266227*b[183]+x[220] == -11.2626749266227)
@constraint(m, e555, 6.02450366808*b[184]+x[221] == -6.02450366808)
@constraint(m, e556, 6.37753833692151E-15*b[185]+x[222] == -6.37753833692151e-15)
@constraint(m, e557, -x[186]+x[223] >= 0.0)
@constraint(m, e558, -x[187]+x[223] >= 0.0)
@constraint(m, e559, -x[188]+x[223] >= 0.0)
@constraint(m, e560, -x[189]+x[223] >= 0.0)
@constraint(m, e561, -x[190]+x[223] >= 0.0)
@constraint(m, e562, -x[191]+x[223] >= 0.0)
@constraint(m, e563, -x[192]+x[223] >= 0.0)
@constraint(m, e564, -x[193]+x[223] >= 0.0)
@constraint(m, e565, -x[194]+x[223] >= 0.0)
@constraint(m, e566, -x[195]+x[223] >= 0.0)
@constraint(m, e567, -x[196]+x[223] >= 0.0)
@constraint(m, e568, -x[197]+x[223] >= 0.0)
@constraint(m, e569, -x[198]+x[223] >= 0.0)
@constraint(m, e570, -x[199]+x[223] >= 0.0)
@constraint(m, e571, -x[200]+x[223] >= 0.0)
@constraint(m, e572, -x[201]+x[223] >= 0.0)
@constraint(m, e573, -x[202]+x[223] >= 0.0)
@constraint(m, e574, -x[203]+x[223] >= 0.0)
@constraint(m, e575, -x[204]+x[223] >= 0.0)
@constraint(m, e576, -x[205]+x[223] >= 0.0)
@constraint(m, e577, -x[206]+x[223] >= 0.0)
@constraint(m, e578, -x[207]+x[223] >= 0.0)
@constraint(m, e579, -x[208]+x[223] >= 0.0)
@constraint(m, e580, -x[209]+x[223] >= 0.0)
@constraint(m, e581, -x[210]+x[223] >= 0.0)
@constraint(m, e582, -x[211]+x[223] >= 0.0)
@constraint(m, e583, -x[212]+x[223] >= 0.0)
@constraint(m, e584, -x[213]+x[223] >= 0.0)
@constraint(m, e585, -x[214]+x[223] >= 0.0)
@constraint(m, e586, -x[215]+x[223] >= 0.0)
@constraint(m, e587, -x[216]+x[223] >= 0.0)
@constraint(m, e588, -x[217]+x[223] >= 0.0)
@constraint(m, e589, -x[218]+x[223] >= 0.0)
@constraint(m, e590, -x[219]+x[223] >= 0.0)
@constraint(m, e591, -x[220]+x[223] >= 0.0)
@constraint(m, e592, -x[221]+x[223] >= 0.0)
@constraint(m, e593, -x[222]+x[223] >= 0.0)
@constraint(m, e594, b[1]+b[38]+b[75]+b[112]+b[149] == 1.0)
@constraint(m, e595, b[2]+b[39]+b[76]+b[113]+b[150] == 1.0)
@constraint(m, e596, b[3]+b[40]+b[77]+b[114]+b[151] == 1.0)
@constraint(m, e597, b[4]+b[41]+b[78]+b[115]+b[152] == 1.0)
@constraint(m, e598, b[5]+b[42]+b[79]+b[116]+b[153] == 1.0)
@constraint(m, e599, b[6]+b[43]+b[80]+b[117]+b[154] == 1.0)
@constraint(m, e600, b[7]+b[44]+b[81]+b[118]+b[155] == 1.0)
@constraint(m, e601, b[8]+b[45]+b[82]+b[119]+b[156] == 1.0)
@constraint(m, e602, b[9]+b[46]+b[83]+b[120]+b[157] == 1.0)
@constraint(m, e603, b[10]+b[47]+b[84]+b[121]+b[158] == 1.0)
@constraint(m, e604, b[11]+b[48]+b[85]+b[122]+b[159] == 1.0)
@constraint(m, e605, b[12]+b[49]+b[86]+b[123]+b[160] == 1.0)
@constraint(m, e606, b[13]+b[50]+b[87]+b[124]+b[161] == 1.0)
@constraint(m, e607, b[14]+b[51]+b[88]+b[125]+b[162] == 1.0)
@constraint(m, e608, b[15]+b[52]+b[89]+b[126]+b[163] == 1.0)
@constraint(m, e609, b[16]+b[53]+b[90]+b[127]+b[164] == 1.0)
@constraint(m, e610, b[17]+b[54]+b[91]+b[128]+b[165] == 1.0)
@constraint(m, e611, b[18]+b[55]+b[92]+b[129]+b[166] == 1.0)
@constraint(m, e612, b[19]+b[56]+b[93]+b[130]+b[167] == 1.0)
@constraint(m, e613, b[20]+b[57]+b[94]+b[131]+b[168] == 1.0)
@constraint(m, e614, b[21]+b[58]+b[95]+b[132]+b[169] == 1.0)
@constraint(m, e615, b[22]+b[59]+b[96]+b[133]+b[170] == 1.0)
@constraint(m, e616, b[23]+b[60]+b[97]+b[134]+b[171] == 1.0)
@constraint(m, e617, b[24]+b[61]+b[98]+b[135]+b[172] == 1.0)
@constraint(m, e618, b[25]+b[62]+b[99]+b[136]+b[173] == 1.0)
@constraint(m, e619, b[26]+b[63]+b[100]+b[137]+b[174] == 1.0)
@constraint(m, e620, b[27]+b[64]+b[101]+b[138]+b[175] == 1.0)
@constraint(m, e621, b[28]+b[65]+b[102]+b[139]+b[176] == 1.0)
@constraint(m, e622, b[29]+b[66]+b[103]+b[140]+b[177] == 1.0)
@constraint(m, e623, b[30]+b[67]+b[104]+b[141]+b[178] == 1.0)
@constraint(m, e624, b[31]+b[68]+b[105]+b[142]+b[179] == 1.0)
@constraint(m, e625, b[32]+b[69]+b[106]+b[143]+b[180] == 1.0)
@constraint(m, e626, b[33]+b[70]+b[107]+b[144]+b[181] == 1.0)
@constraint(m, e627, b[34]+b[71]+b[108]+b[145]+b[182] == 1.0)
@constraint(m, e628, b[35]+b[72]+b[109]+b[146]+b[183] == 1.0)
@constraint(m, e629, b[36]+b[73]+b[110]+b[147]+b[184] == 1.0)
@constraint(m, e630, b[37]+b[74]+b[111]+b[148]+b[185] == 1.0)


# ----- Objective ----- #
@objective(m, Max, x[224])

 
