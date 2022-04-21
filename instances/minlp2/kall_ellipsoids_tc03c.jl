using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194]
@variable(m, x[x_Idx])
set_lower_bound(x[185], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[38], -1.69454444444444)
set_upper_bound(x[38], 1.69454444444444)
set_lower_bound(x[39], -1.69454444444444)
set_upper_bound(x[39], 1.69454444444444)
set_lower_bound(x[40], -1.69454444444444)
set_upper_bound(x[40], 1.69454444444444)
set_lower_bound(x[41], -1.69444444444444)
set_upper_bound(x[41], 1.69444444444444)
set_lower_bound(x[42], -1.69454444444444)
set_upper_bound(x[42], 1.69454444444444)
set_lower_bound(x[43], -1.69454444444444)
set_upper_bound(x[43], 1.69454444444444)
set_lower_bound(x[44], -1.69444444444444)
set_upper_bound(x[44], 1.69444444444444)
set_lower_bound(x[45], -1.69444444444444)
set_upper_bound(x[45], 1.69444444444444)
set_lower_bound(x[46], -1.69454444444444)
set_upper_bound(x[46], 1.69454444444444)
set_lower_bound(x[47], -5.34037777777778)
set_upper_bound(x[47], 5.34037777777778)
set_lower_bound(x[48], -5.34037777777778)
set_upper_bound(x[48], 5.34037777777778)
set_lower_bound(x[49], -5.34037777777778)
set_upper_bound(x[49], 5.34037777777778)
set_lower_bound(x[50], -5.34027777777778)
set_upper_bound(x[50], 5.34027777777778)
set_lower_bound(x[51], -5.34037777777778)
set_upper_bound(x[51], 5.34037777777778)
set_lower_bound(x[52], -5.34037777777778)
set_upper_bound(x[52], 5.34037777777778)
set_lower_bound(x[53], -5.34027777777778)
set_upper_bound(x[53], 5.34027777777778)
set_lower_bound(x[54], -5.34027777777778)
set_upper_bound(x[54], 5.34027777777778)
set_lower_bound(x[55], -5.34037777777778)
set_upper_bound(x[55], 5.34037777777778)
set_lower_bound(x[56], -3.48536077097506)
set_upper_bound(x[56], 3.48536077097506)
set_lower_bound(x[57], -3.48536077097506)
set_upper_bound(x[57], 3.48536077097506)
set_lower_bound(x[58], -3.48536077097506)
set_upper_bound(x[58], 3.48536077097506)
set_lower_bound(x[59], -3.48526077097506)
set_upper_bound(x[59], 3.48526077097506)
set_lower_bound(x[60], -3.48536077097506)
set_upper_bound(x[60], 3.48536077097506)
set_lower_bound(x[61], -3.48536077097506)
set_upper_bound(x[61], 3.48536077097506)
set_lower_bound(x[62], -3.48526077097506)
set_upper_bound(x[62], 3.48526077097506)
set_lower_bound(x[63], -3.48526077097506)
set_upper_bound(x[63], 3.48526077097506)
set_lower_bound(x[64], -3.48536077097506)
set_upper_bound(x[64], 3.48536077097506)
set_lower_bound(x[65], -1.0)
set_upper_bound(x[65], 1.0)
set_lower_bound(x[66], -1.0)
set_upper_bound(x[66], 1.0)
set_lower_bound(x[67], -1.0)
set_upper_bound(x[67], 1.0)
set_lower_bound(x[68], -1.0)
set_upper_bound(x[68], 1.0)
set_lower_bound(x[69], -1.0)
set_upper_bound(x[69], 1.0)
set_lower_bound(x[70], -1.0)
set_upper_bound(x[70], 1.0)
set_lower_bound(x[71], -1.0)
set_upper_bound(x[71], 1.0)
set_lower_bound(x[72], -1.0)
set_upper_bound(x[72], 1.0)
set_lower_bound(x[73], -1.0)
set_upper_bound(x[73], 1.0)
set_lower_bound(x[74], -1.0)
set_upper_bound(x[74], 1.0)
set_lower_bound(x[75], -1.0)
set_upper_bound(x[75], 1.0)
set_lower_bound(x[76], -1.0)
set_upper_bound(x[76], 1.0)
set_lower_bound(x[77], -1.0)
set_upper_bound(x[77], 1.0)
set_lower_bound(x[78], -1.0)
set_upper_bound(x[78], 1.0)
set_lower_bound(x[79], -1.0)
set_upper_bound(x[79], 1.0)
set_lower_bound(x[80], -1.0)
set_upper_bound(x[80], 1.0)
set_lower_bound(x[81], -1.0)
set_upper_bound(x[81], 1.0)
set_lower_bound(x[82], -1.0)
set_upper_bound(x[82], 1.0)
set_lower_bound(x[83], -1.0)
set_upper_bound(x[83], 1.0)
set_lower_bound(x[84], -1.0)
set_upper_bound(x[84], 1.0)
set_lower_bound(x[85], -1.0)
set_upper_bound(x[85], 1.0)
set_lower_bound(x[86], -1.0)
set_upper_bound(x[86], 1.0)
set_lower_bound(x[87], -1.0)
set_upper_bound(x[87], 1.0)
set_lower_bound(x[88], -1.0)
set_upper_bound(x[88], 1.0)
set_lower_bound(x[89], -1.0)
set_upper_bound(x[89], 1.0)
set_lower_bound(x[90], -1.0)
set_upper_bound(x[90], 1.0)
set_lower_bound(x[91], -1.0)
set_upper_bound(x[91], 1.0)
set_lower_bound(x[92], -1.0)
set_upper_bound(x[92], 1.0)
set_lower_bound(x[93], -1.0)
set_upper_bound(x[93], 1.0)
set_lower_bound(x[94], -1.0)
set_upper_bound(x[94], 1.0)
set_lower_bound(x[95], -1.0)
set_upper_bound(x[95], 1.0)
set_lower_bound(x[96], -1.0)
set_upper_bound(x[96], 1.0)
set_lower_bound(x[97], -1.0)
set_upper_bound(x[97], 1.0)
set_lower_bound(x[98], -1.0)
set_upper_bound(x[98], 1.0)
set_lower_bound(x[99], -1.0)
set_upper_bound(x[99], 1.0)
set_lower_bound(x[100], -1.0)
set_upper_bound(x[100], 1.0)
set_lower_bound(x[101], -1.0)
set_upper_bound(x[101], 1.0)
set_lower_bound(x[102], -1.0)
set_upper_bound(x[102], 1.0)
set_lower_bound(x[103], -1.0)
set_upper_bound(x[103], 1.0)
set_lower_bound(x[104], -1.0)
set_upper_bound(x[104], 1.0)
set_lower_bound(x[105], -1.0)
set_upper_bound(x[105], 1.0)
set_lower_bound(x[106], -1.0)
set_upper_bound(x[106], 1.0)
set_lower_bound(x[107], -1.0)
set_upper_bound(x[107], 1.0)
set_lower_bound(x[108], -1.0)
set_upper_bound(x[108], 1.0)
set_lower_bound(x[109], -1.0)
set_upper_bound(x[109], 1.0)
set_lower_bound(x[110], -1.0)
set_upper_bound(x[110], 1.0)
set_lower_bound(x[111], -1.0)
set_upper_bound(x[111], 1.0)
set_lower_bound(x[112], -1.0)
set_upper_bound(x[112], 1.0)
set_lower_bound(x[113], -1.0)
set_upper_bound(x[113], 1.0)
set_lower_bound(x[114], -1.0)
set_upper_bound(x[114], 1.0)
set_lower_bound(x[115], -1.0)
set_upper_bound(x[115], 1.0)
set_lower_bound(x[116], -1.0)
set_upper_bound(x[116], 1.0)
set_lower_bound(x[117], -1.0)
set_upper_bound(x[117], 1.0)
set_lower_bound(x[118], -1.0)
set_upper_bound(x[118], 1.0)
set_lower_bound(x[119], -1.0)
set_upper_bound(x[119], 1.0)
set_lower_bound(x[120], -1.0)
set_upper_bound(x[120], 1.0)
set_lower_bound(x[121], -1.0)
set_upper_bound(x[121], 1.0)
set_lower_bound(x[122], -1.0)
set_upper_bound(x[122], 1.0)
set_lower_bound(x[123], -1.0)
set_upper_bound(x[123], 1.0)
set_lower_bound(x[124], -1.0)
set_upper_bound(x[124], 1.0)
set_lower_bound(x[125], -1.0)
set_upper_bound(x[125], 1.0)
set_lower_bound(x[126], -1.0)
set_upper_bound(x[126], 1.0)
set_lower_bound(x[127], -1.0)
set_upper_bound(x[127], 1.0)
set_lower_bound(x[128], -1.0)
set_upper_bound(x[128], 1.0)
set_lower_bound(x[129], -1.0)
set_upper_bound(x[129], 1.0)
set_lower_bound(x[130], -1.0)
set_upper_bound(x[130], 1.0)
set_lower_bound(x[131], -1.0)
set_upper_bound(x[131], 1.0)
set_lower_bound(x[132], -1.0)
set_upper_bound(x[132], 1.0)
set_lower_bound(x[133], -1.0)
set_upper_bound(x[133], 1.0)
set_lower_bound(x[134], -1.0)
set_upper_bound(x[134], 1.0)
set_lower_bound(x[135], -1.0)
set_upper_bound(x[135], 1.0)
set_lower_bound(x[136], -1.0)
set_upper_bound(x[136], 1.0)
set_lower_bound(x[137], -1.0)
set_upper_bound(x[137], 1.0)
set_lower_bound(x[138], -1.0)
set_upper_bound(x[138], 1.0)
set_lower_bound(x[139], -1.0)
set_upper_bound(x[139], 1.0)
set_lower_bound(x[140], -1.0)
set_upper_bound(x[140], 1.0)
set_lower_bound(x[141], -1.0)
set_upper_bound(x[141], 1.0)
set_lower_bound(x[142], -1.0)
set_upper_bound(x[142], 1.0)
set_lower_bound(x[143], -1.0)
set_upper_bound(x[143], 1.0)
set_lower_bound(x[144], -1.0)
set_upper_bound(x[144], 1.0)
set_lower_bound(x[145], -1.0)
set_upper_bound(x[145], 1.0)
set_lower_bound(x[146], -1.0)
set_upper_bound(x[146], 1.0)
set_lower_bound(x[147], -1.0)
set_upper_bound(x[147], 1.0)
set_lower_bound(x[148], -1.0)
set_upper_bound(x[148], 1.0)
set_lower_bound(x[149], -1.0)
set_upper_bound(x[149], 1.0)
set_lower_bound(x[150], -1.0)
set_upper_bound(x[150], 1.0)
set_lower_bound(x[151], -1.0)
set_upper_bound(x[151], 1.0)
set_lower_bound(x[152], -1.0)
set_upper_bound(x[152], 1.0)
set_lower_bound(x[153], -1.0)
set_upper_bound(x[153], 1.0)
set_lower_bound(x[154], -1.0)
set_upper_bound(x[154], 1.0)
set_lower_bound(x[155], 18.9752196276824)
set_lower_bound(x[156], 0.333333333333333)
set_upper_bound(x[156], 0.666666666666667)
set_lower_bound(x[157], 0.333333333333333)
set_upper_bound(x[157], 0.666666666666667)
set_lower_bound(x[158], 0.333333333333333)
set_upper_bound(x[158], 0.666666666666667)
set_lower_bound(x[159], 1.25)
set_upper_bound(x[159], 2.08333333333333)
set_lower_bound(x[160], 1.25)
set_upper_bound(x[160], 2.08333333333333)
set_lower_bound(x[161], 1.25)
set_upper_bound(x[161], 2.08333333333333)
set_lower_bound(x[162], 0.666666666666667)
set_upper_bound(x[162], 1.42857142857143)
set_lower_bound(x[163], 0.666666666666667)
set_upper_bound(x[163], 1.42857142857143)
set_lower_bound(x[164], 0.666666666666667)
set_upper_bound(x[164], 1.42857142857143)
set_lower_bound(x[165], 2.0)
set_upper_bound(x[165], 9.0)
set_lower_bound(x[166], 2.0)
set_upper_bound(x[166], 9.0)
set_lower_bound(x[167], 2.0)
set_upper_bound(x[167], 9.0)
set_lower_bound(x[168], 1.0)
set_upper_bound(x[168], 8.0)
set_lower_bound(x[169], 1.0)
set_upper_bound(x[169], 8.0)
set_lower_bound(x[170], 1.0)
set_upper_bound(x[170], 8.0)
set_lower_bound(x[171], 0.6)
set_upper_bound(x[171], 8.4)
set_lower_bound(x[172], 0.6)
set_upper_bound(x[172], 8.4)
set_lower_bound(x[173], 0.6)
set_upper_bound(x[173], 8.4)
set_lower_bound(x[174], 0.7)
set_upper_bound(x[174], 8.3)
set_lower_bound(x[175], 0.7)
set_upper_bound(x[175], 8.3)
set_lower_bound(x[176], 0.7)
set_upper_bound(x[176], 8.3)
set_upper_bound(x[177], 20.0)
set_upper_bound(x[178], 10.0)
set_upper_bound(x[179], 10.0)
set_upper_bound(x[180], 20.0)
set_upper_bound(x[181], 10.0)
set_upper_bound(x[182], 10.0)
set_upper_bound(x[183], 20.0)
set_upper_bound(x[184], 10.0)
set_upper_bound(x[185], 10.0)
set_upper_bound(x[186], 20.0)
set_upper_bound(x[187], 10.0)
set_upper_bound(x[188], 10.0)
set_upper_bound(x[189], 20.0)
set_upper_bound(x[190], 10.0)
set_upper_bound(x[191], 10.0)
set_upper_bound(x[192], 20.0)
set_upper_bound(x[193], 10.0)
set_upper_bound(x[194], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[155] == 0.0)
@NLconstraint(m, e2, -x[165]*x[166]*x[167]+x[155] == 0.0)
@NLconstraint(m, e3, x[65]*x[69]*x[73]-x[65]*x[70]*x[72]-x[66]*x[68]*x[73]+x[66]*x[71]*x[70]+x[68]*x[67]*x[72]-x[67]*x[69]*x[71] == 1.0)
@NLconstraint(m, e4, x[74]*x[78]*x[82]-x[74]*x[79]*x[81]-x[75]*x[77]*x[82]+x[75]*x[80]*x[79]+x[77]*x[76]*x[81]-x[76]*x[78]*x[80] == 1.0)
@NLconstraint(m, e5, x[83]*x[87]*x[91]-x[83]*x[88]*x[90]-x[84]*x[86]*x[91]+x[84]*x[89]*x[88]+x[86]*x[85]*x[90]-x[85]*x[87]*x[89] == 1.0)
@constraint(m, e6, x[101]+x[102]+x[103] == 1.0)
@constraint(m, e7, x[104]+x[105]+x[106] == 0.0)
@constraint(m, e8, x[107]+x[108]+x[109] == 0.0)
@constraint(m, e9, x[110]+x[111]+x[112] == 1.0)
@constraint(m, e10, x[113]+x[114]+x[115] == 0.0)
@constraint(m, e11, x[116]+x[117]+x[118] == 1.0)
@constraint(m, e12, x[119]+x[120]+x[121] == 1.0)
@constraint(m, e13, x[122]+x[123]+x[124] == 0.0)
@constraint(m, e14, x[125]+x[126]+x[127] == 0.0)
@constraint(m, e15, x[128]+x[129]+x[130] == 1.0)
@constraint(m, e16, x[131]+x[132]+x[133] == 0.0)
@constraint(m, e17, x[134]+x[135]+x[136] == 1.0)
@constraint(m, e18, x[137]+x[138]+x[139] == 1.0)
@constraint(m, e19, x[140]+x[141]+x[142] == 0.0)
@constraint(m, e20, x[143]+x[144]+x[145] == 0.0)
@constraint(m, e21, x[146]+x[147]+x[148] == 1.0)
@constraint(m, e22, x[149]+x[150]+x[151] == 0.0)
@constraint(m, e23, x[152]+x[153]+x[154] == 1.0)
@constraint(m, e24, x[38]-0.25*x[101]-0.444444444444444*x[102]-x[103] == 0.0)
@constraint(m, e25, x[39]-0.25*x[104]-0.444444444444444*x[105]-x[106] == 0.0)
@constraint(m, e26, x[40]-0.25*x[107]-0.444444444444444*x[108]-x[109] == 0.0)
@constraint(m, e27, x[42]-0.25*x[110]-0.444444444444444*x[111]-x[112] == 0.0)
@constraint(m, e28, x[43]-0.25*x[113]-0.444444444444444*x[114]-x[115] == 0.0)
@constraint(m, e29, x[46]-0.25*x[116]-0.444444444444444*x[117]-x[118] == 0.0)
@constraint(m, e30, x[47]-x[119]-1.5625*x[120]-2.77777777777778*x[121] == 0.0)
@constraint(m, e31, x[48]-x[122]-1.5625*x[123]-2.77777777777778*x[124] == 0.0)
@constraint(m, e32, x[49]-x[125]-1.5625*x[126]-2.77777777777778*x[127] == 0.0)
@constraint(m, e33, x[51]-x[128]-1.5625*x[129]-2.77777777777778*x[130] == 0.0)
@constraint(m, e34, x[52]-x[131]-1.5625*x[132]-2.77777777777778*x[133] == 0.0)
@constraint(m, e35, x[55]-x[134]-1.5625*x[135]-2.77777777777778*x[136] == 0.0)
@constraint(m, e36, x[56]-0.444444444444444*x[137]-x[138]-2.04081632653061*x[139] == 0.0)
@constraint(m, e37, x[57]-0.444444444444444*x[140]-x[141]-2.04081632653061*x[142] == 0.0)
@constraint(m, e38, x[58]-0.444444444444444*x[143]-x[144]-2.04081632653061*x[145] == 0.0)
@constraint(m, e39, x[60]-0.444444444444444*x[146]-x[147]-2.04081632653061*x[148] == 0.0)
@constraint(m, e40, x[61]-0.444444444444444*x[149]-x[150]-2.04081632653061*x[151] == 0.0)
@constraint(m, e41, x[64]-0.444444444444444*x[152]-x[153]-2.04081632653061*x[154] == 0.0)
@constraint(m, e42, -x[39]+x[41] == 0.0)
@constraint(m, e43, -x[40]+x[44] == 0.0)
@constraint(m, e44, -x[43]+x[45] == 0.0)
@constraint(m, e45, -x[48]+x[50] == 0.0)
@constraint(m, e46, -x[49]+x[53] == 0.0)
@constraint(m, e47, -x[52]+x[54] == 0.0)
@constraint(m, e48, -x[57]+x[59] == 0.0)
@constraint(m, e49, -x[58]+x[62] == 0.0)
@constraint(m, e50, -x[61]+x[63] == 0.0)
@constraint(m, e51, -x[165]+x[168] <= -1.0)
@constraint(m, e52, -x[166]+x[169] <= -1.0)
@constraint(m, e53, -x[167]+x[170] <= -1.0)
@constraint(m, e54, -x[165]+x[171] <= -0.6)
@constraint(m, e55, -x[166]+x[172] <= -0.6)
@constraint(m, e56, -x[167]+x[173] <= -0.6)
@constraint(m, e57, -x[165]+x[174] <= -0.7)
@constraint(m, e58, -x[166]+x[175] <= -0.7)
@constraint(m, e59, -x[167]+x[176] <= -0.7)
@NLconstraint(m, e60,  (x[156])^2-(x[42]*x[46]-x[43]*x[45]) == 0.0)
@NLconstraint(m, e61,  (x[159])^2-(x[51]*x[55]-x[52]*x[54]) == 0.0)
@NLconstraint(m, e62,  (x[162])^2-(x[60]*x[64]-x[61]*x[63]) == 0.0)
@NLconstraint(m, e63,  (x[157])^2-(x[38]*x[46]-x[40]*x[44]) == 0.0)
@NLconstraint(m, e64,  (x[160])^2-(x[47]*x[55]-x[49]*x[53]) == 0.0)
@NLconstraint(m, e65,  (x[163])^2-(x[56]*x[64]-x[58]*x[62]) == 0.0)
@NLconstraint(m, e66,  (x[158])^2-(x[38]*x[42]-x[39]*x[41]) == 0.0)
@NLconstraint(m, e67,  (x[161])^2-(x[47]*x[51]-x[48]*x[50]) == 0.0)
@NLconstraint(m, e68,  (x[164])^2-(x[56]*x[60]-x[57]*x[59]) == 0.0)
@constraint(m, e69, 3*x[156]-x[168]+x[177] == 0.0)
@constraint(m, e70, 3*x[157]-x[169]+x[178] == 0.0)
@constraint(m, e71, 3*x[158]-x[170]+x[179] == 0.0)
@constraint(m, e72, 0.48*x[159]-x[171]+x[180] == 0.0)
@constraint(m, e73, 0.48*x[160]-x[172]+x[181] == 0.0)
@constraint(m, e74, 0.48*x[161]-x[173]+x[182] == 0.0)
@constraint(m, e75, 1.05*x[162]-x[174]+x[183] == 0.0)
@constraint(m, e76, 1.05*x[163]-x[175]+x[184] == 0.0)
@constraint(m, e77, 1.05*x[164]-x[176]+x[185] == 0.0)
@constraint(m, e78, -3*x[156]-x[168]+x[186] == 0.0)
@constraint(m, e79, -3*x[157]-x[169]+x[187] == 0.0)
@constraint(m, e80, -3*x[158]-x[170]+x[188] == 0.0)
@constraint(m, e81, -0.48*x[159]-x[171]+x[189] == 0.0)
@constraint(m, e82, -0.48*x[160]-x[172]+x[190] == 0.0)
@constraint(m, e83, -0.48*x[161]-x[173]+x[191] == 0.0)
@constraint(m, e84, -1.05*x[162]-x[174]+x[192] == 0.0)
@constraint(m, e85, -1.05*x[163]-x[175]+x[193] == 0.0)
@constraint(m, e86, -1.05*x[164]-x[176]+x[194] == 0.0)
@constraint(m, e87, -x[165]+x[186] <= 0.0)
@constraint(m, e88, -x[166]+x[187] <= 0.0)
@constraint(m, e89, -x[167]+x[188] <= 0.0)
@constraint(m, e90, -x[165]+x[189] <= 0.0)
@constraint(m, e91, -x[166]+x[190] <= 0.0)
@constraint(m, e92, -x[167]+x[191] <= 0.0)
@constraint(m, e93, -x[165]+x[192] <= 0.0)
@constraint(m, e94, -x[166]+x[193] <= 0.0)
@constraint(m, e95, -x[167]+x[194] <= 0.0)
@constraint(m, e96, x[165]-x[166] >= 0.0)
@constraint(m, e97, x[166]-x[167] >= 0.0)
@constraint(m, e98, -0.5*x[165]+x[168] <= 0.0)
@constraint(m, e99, -0.5*x[166]+x[169] <= 0.0)
@constraint(m, e100, -0.5*x[167]+x[170] <= 0.0)
@NLconstraint(m, e101,  (x[92])^2+ (x[93])^2+ (x[94])^2 == 1.0)
@NLconstraint(m, e102,  (x[95])^2+ (x[96])^2+ (x[97])^2 == 1.0)
@NLconstraint(m, e103,  (x[98])^2+ (x[99])^2+ (x[100])^2 == 1.0)
@NLconstraint(m, e104, -x[65]*x[65]+x[101] == 0.0)
@NLconstraint(m, e105, -x[66]*x[66]+x[102] == 0.0)
@NLconstraint(m, e106, -x[67]*x[67]+x[103] == 0.0)
@NLconstraint(m, e107, -x[65]*x[68]+x[104] == 0.0)
@NLconstraint(m, e108, -x[66]*x[69]+x[105] == 0.0)
@NLconstraint(m, e109, -x[67]*x[70]+x[106] == 0.0)
@NLconstraint(m, e110, -x[65]*x[71]+x[107] == 0.0)
@NLconstraint(m, e111, -x[66]*x[72]+x[108] == 0.0)
@NLconstraint(m, e112, -x[67]*x[73]+x[109] == 0.0)
@NLconstraint(m, e113, -x[68]*x[68]+x[110] == 0.0)
@NLconstraint(m, e114, -x[69]*x[69]+x[111] == 0.0)
@NLconstraint(m, e115, -x[70]*x[70]+x[112] == 0.0)
@NLconstraint(m, e116, -x[68]*x[71]+x[113] == 0.0)
@NLconstraint(m, e117, -x[69]*x[72]+x[114] == 0.0)
@NLconstraint(m, e118, -x[70]*x[73]+x[115] == 0.0)
@NLconstraint(m, e119, -x[71]*x[71]+x[116] == 0.0)
@NLconstraint(m, e120, -x[72]*x[72]+x[117] == 0.0)
@NLconstraint(m, e121, -x[73]*x[73]+x[118] == 0.0)
@NLconstraint(m, e122, -x[74]*x[74]+x[119] == 0.0)
@NLconstraint(m, e123, -x[75]*x[75]+x[120] == 0.0)
@NLconstraint(m, e124, -x[76]*x[76]+x[121] == 0.0)
@NLconstraint(m, e125, -x[74]*x[77]+x[122] == 0.0)
@NLconstraint(m, e126, -x[75]*x[78]+x[123] == 0.0)
@NLconstraint(m, e127, -x[76]*x[79]+x[124] == 0.0)
@NLconstraint(m, e128, -x[74]*x[80]+x[125] == 0.0)
@NLconstraint(m, e129, -x[75]*x[81]+x[126] == 0.0)
@NLconstraint(m, e130, -x[76]*x[82]+x[127] == 0.0)
@NLconstraint(m, e131, -x[77]*x[77]+x[128] == 0.0)
@NLconstraint(m, e132, -x[78]*x[78]+x[129] == 0.0)
@NLconstraint(m, e133, -x[79]*x[79]+x[130] == 0.0)
@NLconstraint(m, e134, -x[77]*x[80]+x[131] == 0.0)
@NLconstraint(m, e135, -x[78]*x[81]+x[132] == 0.0)
@NLconstraint(m, e136, -x[79]*x[82]+x[133] == 0.0)
@NLconstraint(m, e137, -x[80]*x[80]+x[134] == 0.0)
@NLconstraint(m, e138, -x[81]*x[81]+x[135] == 0.0)
@NLconstraint(m, e139, -x[82]*x[82]+x[136] == 0.0)
@NLconstraint(m, e140, -x[83]*x[83]+x[137] == 0.0)
@NLconstraint(m, e141, -x[84]*x[84]+x[138] == 0.0)
@NLconstraint(m, e142, -x[85]*x[85]+x[139] == 0.0)
@NLconstraint(m, e143, -x[83]*x[86]+x[140] == 0.0)
@NLconstraint(m, e144, -x[84]*x[87]+x[141] == 0.0)
@NLconstraint(m, e145, -x[85]*x[88]+x[142] == 0.0)
@NLconstraint(m, e146, -x[83]*x[89]+x[143] == 0.0)
@NLconstraint(m, e147, -x[84]*x[90]+x[144] == 0.0)
@NLconstraint(m, e148, -x[85]*x[91]+x[145] == 0.0)
@NLconstraint(m, e149, -x[86]*x[86]+x[146] == 0.0)
@NLconstraint(m, e150, -x[87]*x[87]+x[147] == 0.0)
@NLconstraint(m, e151, -x[88]*x[88]+x[148] == 0.0)
@NLconstraint(m, e152, -x[86]*x[89]+x[149] == 0.0)
@NLconstraint(m, e153, -x[87]*x[90]+x[150] == 0.0)
@NLconstraint(m, e154, -x[88]*x[91]+x[151] == 0.0)
@NLconstraint(m, e155, -x[89]*x[89]+x[152] == 0.0)
@NLconstraint(m, e156, -x[90]*x[90]+x[153] == 0.0)
@NLconstraint(m, e157, -x[91]*x[91]+x[154] == 0.0)
@NLconstraint(m, e158,  (x[167])^3-x[155] <= 0.0)
@constraint(m, e159, x[29]-x[168]+x[171] == 0.0)
@constraint(m, e160, x[30]-x[169]+x[172] == 0.0)
@constraint(m, e161, x[31]-x[170]+x[173] == 0.0)
@constraint(m, e162, x[32]-x[168]+x[174] == 0.0)
@constraint(m, e163, x[33]-x[169]+x[175] == 0.0)
@constraint(m, e164, x[34]-x[170]+x[176] == 0.0)
@constraint(m, e165, x[35]-x[171]+x[174] == 0.0)
@constraint(m, e166, x[36]-x[172]+x[175] == 0.0)
@constraint(m, e167, x[37]-x[173]+x[176] == 0.0)
@NLconstraint(m, e168, x[92]*x[29]+x[93]*x[30]+x[94]*x[31]-(sqrt( (x[2]*x[92])^2+ (x[5]*x[93])^2+ (x[8]*x[94])^2+ (x[3]*x[92])^2+ (x[6]*x[93])^2+ (x[9]*x[94])^2+ (x[4]*x[92])^2+ (x[7]*x[93])^2+ (x[10]*x[94])^2)+sqrt( (x[11]*x[92])^2+ (x[14]*x[93])^2+ (x[17]*x[94])^2+ (x[12]*x[92])^2+ (x[15]*x[93])^2+ (x[18]*x[94])^2+ (x[13]*x[92])^2+ (x[16]*x[93])^2+ (x[19]*x[94])^2)) >= 0.0)
@NLconstraint(m, e169, x[95]*x[32]+x[96]*x[33]+x[97]*x[34]-(sqrt( (x[2]*x[95])^2+ (x[5]*x[96])^2+ (x[8]*x[97])^2+ (x[3]*x[95])^2+ (x[6]*x[96])^2+ (x[9]*x[97])^2+ (x[4]*x[95])^2+ (x[7]*x[96])^2+ (x[10]*x[97])^2)+sqrt( (x[20]*x[95])^2+ (x[23]*x[96])^2+ (x[26]*x[97])^2+ (x[21]*x[95])^2+ (x[24]*x[96])^2+ (x[27]*x[97])^2+ (x[22]*x[95])^2+ (x[25]*x[96])^2+ (x[28]*x[97])^2)) >= 0.0)
@NLconstraint(m, e170, x[98]*x[35]+x[99]*x[36]+x[100]*x[37]-(sqrt( (x[11]*x[98])^2+ (x[14]*x[99])^2+ (x[17]*x[100])^2+ (x[12]*x[98])^2+ (x[15]*x[99])^2+ (x[18]*x[100])^2+ (x[13]*x[98])^2+ (x[16]*x[99])^2+ (x[19]*x[100])^2)+sqrt( (x[20]*x[98])^2+ (x[23]*x[99])^2+ (x[26]*x[100])^2+ (x[21]*x[98])^2+ (x[24]*x[99])^2+ (x[27]*x[100])^2+ (x[22]*x[98])^2+ (x[25]*x[99])^2+ (x[28]*x[100])^2)) >= 0.0)
@constraint(m, e171, x[2]-2*x[65] == 0.0)
@constraint(m, e172, x[3]-1.5*x[66] == 0.0)
@constraint(m, e173, x[4]-x[67] == 0.0)
@constraint(m, e174, x[5]-2*x[68] == 0.0)
@constraint(m, e175, x[6]-1.5*x[69] == 0.0)
@constraint(m, e176, x[7]-x[70] == 0.0)
@constraint(m, e177, x[8]-2*x[71] == 0.0)
@constraint(m, e178, x[9]-1.5*x[72] == 0.0)
@constraint(m, e179, x[10]-x[73] == 0.0)
@constraint(m, e180, x[11]-x[74] == 0.0)
@constraint(m, e181, x[12]-0.8*x[75] == 0.0)
@constraint(m, e182, x[13]-0.6*x[76] == 0.0)
@constraint(m, e183, x[14]-x[77] == 0.0)
@constraint(m, e184, x[15]-0.8*x[78] == 0.0)
@constraint(m, e185, x[16]-0.6*x[79] == 0.0)
@constraint(m, e186, x[17]-x[80] == 0.0)
@constraint(m, e187, x[18]-0.8*x[81] == 0.0)
@constraint(m, e188, x[19]-0.6*x[82] == 0.0)
@constraint(m, e189, x[20]-1.5*x[83] == 0.0)
@constraint(m, e190, x[21]-x[84] == 0.0)
@constraint(m, e191, x[22]-0.7*x[85] == 0.0)
@constraint(m, e192, x[23]-1.5*x[86] == 0.0)
@constraint(m, e193, x[24]-x[87] == 0.0)
@constraint(m, e194, x[25]-0.7*x[88] == 0.0)
@constraint(m, e195, x[26]-1.5*x[89] == 0.0)
@constraint(m, e196, x[27]-x[90] == 0.0)
@constraint(m, e197, x[28]-0.7*x[91] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 