using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316]
@variable(m, x[x_Idx])
set_lower_bound(x[62], 0.0)
set_lower_bound(x[287], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[308], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[299], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[303], 0.0)
set_lower_bound(x[251], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[312], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[289], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[273], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[307], 0.0)
set_lower_bound(x[298], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[292], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[277], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[278], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[253], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[291], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[259], 0.0)
set_lower_bound(x[261], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[285], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[306], 0.0)
set_lower_bound(x[290], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[311], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[313], 0.0)
set_lower_bound(x[258], 0.0)
set_lower_bound(x[282], 0.0)
set_lower_bound(x[295], 0.0)
set_lower_bound(x[281], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[288], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[309], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[252], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[284], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[279], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[280], 0.0)
set_lower_bound(x[316], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[314], 0.0)
set_lower_bound(x[305], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[272], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[296], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[267], 0.0)
set_lower_bound(x[302], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[297], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[310], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[276], 0.0)
set_lower_bound(x[275], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[254], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[271], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[294], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[256], 0.0)
set_lower_bound(x[266], 0.0)
set_lower_bound(x[269], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[283], 0.0)
set_lower_bound(x[293], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[304], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[286], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[300], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[315], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[301], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[29], 0.0)
set_upper_bound(x[29], 0.0)
set_lower_bound(x[31], 0.0)
set_upper_bound(x[31], 0.0)
set_lower_bound(x[32], 0.0)
set_upper_bound(x[32], 0.0)
set_lower_bound(x[35], 0.0)
set_upper_bound(x[35], 0.0)
set_lower_bound(x[36], 0.0)
set_upper_bound(x[36], 0.0)
set_lower_bound(x[39], 0.0)
set_upper_bound(x[39], 0.0)
set_lower_bound(x[40], 0.0)
set_upper_bound(x[40], 0.0)
set_lower_bound(x[41], 0.0)
set_upper_bound(x[41], 0.0)
set_lower_bound(x[46], 0.0)
set_upper_bound(x[46], 0.0)
set_lower_bound(x[48], 0.0)
set_upper_bound(x[48], 0.0)
set_lower_bound(x[49], 0.0)
set_upper_bound(x[49], 0.0)
set_lower_bound(x[50], 0.0)
set_upper_bound(x[50], 0.0)
set_lower_bound(x[51], 0.0)
set_upper_bound(x[51], 0.0)
set_lower_bound(x[52], 0.0)
set_upper_bound(x[52], 0.0)
set_lower_bound(x[53], 0.0)
set_upper_bound(x[53], 0.0)
set_lower_bound(x[54], 0.0)
set_upper_bound(x[54], 0.0)
set_lower_bound(x[55], 0.0)
set_upper_bound(x[55], 0.0)
set_lower_bound(x[56], 0.0)
set_upper_bound(x[56], 0.0)
set_lower_bound(x[57], 0.0)
set_upper_bound(x[57], 0.0)
set_lower_bound(x[59], 0.0)
set_upper_bound(x[59], 0.0)
set_lower_bound(x[60], 0.0)
set_upper_bound(x[60], 0.0)
set_lower_bound(x[62], 0.0)
set_upper_bound(x[62], 0.0)
set_lower_bound(x[63], 0.0)
set_upper_bound(x[63], 0.0)
set_lower_bound(x[64], 0.0)
set_upper_bound(x[64], 0.0)
set_lower_bound(x[65], 0.0)
set_upper_bound(x[65], 0.0)
set_lower_bound(x[66], 0.0)
set_upper_bound(x[66], 0.0)
set_lower_bound(x[69], 0.0)
set_upper_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_upper_bound(x[71], 0.0)
set_lower_bound(x[72], 0.0)
set_upper_bound(x[72], 0.0)
set_lower_bound(x[79], 0.0)
set_upper_bound(x[79], 0.0)
set_lower_bound(x[80], 0.0)
set_upper_bound(x[80], 0.0)
set_lower_bound(x[81], 0.0)
set_upper_bound(x[81], 0.0)
set_lower_bound(x[82], 0.0)
set_upper_bound(x[82], 0.0)
set_lower_bound(x[83], 0.0)
set_upper_bound(x[83], 0.0)
set_lower_bound(x[84], 0.0)
set_upper_bound(x[84], 0.0)
set_lower_bound(x[85], 0.0)
set_upper_bound(x[85], 0.0)
set_lower_bound(x[86], 0.0)
set_upper_bound(x[86], 0.0)
set_lower_bound(x[87], 0.0)
set_upper_bound(x[87], 0.0)
set_lower_bound(x[88], 0.0)
set_upper_bound(x[88], 0.0)
set_lower_bound(x[89], 0.0)
set_upper_bound(x[89], 0.0)
set_lower_bound(x[90], 0.0)
set_upper_bound(x[90], 0.0)
set_lower_bound(x[92], 0.0)
set_upper_bound(x[92], 0.0)
set_lower_bound(x[93], 0.0)
set_upper_bound(x[93], 0.0)
set_lower_bound(x[94], 0.0)
set_upper_bound(x[94], 0.0)
set_lower_bound(x[99], 0.0)
set_upper_bound(x[99], 0.0)
set_lower_bound(x[101], 0.0)
set_upper_bound(x[101], 0.0)
set_lower_bound(x[103], 0.0)
set_upper_bound(x[103], 0.0)
set_lower_bound(x[104], 0.0)
set_upper_bound(x[104], 0.0)
set_lower_bound(x[105], 0.0)
set_upper_bound(x[105], 0.0)
set_lower_bound(x[106], 0.0)
set_upper_bound(x[106], 0.0)
set_lower_bound(x[107], 0.0)
set_upper_bound(x[107], 0.0)
set_lower_bound(x[108], 0.0)
set_upper_bound(x[108], 0.0)
set_lower_bound(x[109], 0.0)
set_upper_bound(x[109], 0.0)
set_upper_bound(x[160], 1.0)
set_upper_bound(x[161], 1.0)
set_upper_bound(x[162], 1.0)
set_upper_bound(x[163], 1.0)
set_upper_bound(x[164], 1.0)
set_upper_bound(x[165], 1.0)
set_upper_bound(x[166], 1.0)
set_upper_bound(x[167], 1.0)
set_upper_bound(x[168], 1.0)
set_upper_bound(x[169], 1.0)
set_upper_bound(x[170], 1.0)
set_upper_bound(x[171], 1.0)
set_upper_bound(x[172], 1.0)
set_upper_bound(x[173], 1.0)
set_upper_bound(x[174], 1.0)
set_upper_bound(x[175], 1.0)
set_upper_bound(x[176], 1.0)
set_upper_bound(x[177], 1.0)
set_upper_bound(x[178], 1.0)
set_upper_bound(x[179], 1.0)
set_upper_bound(x[180], 1.0)
set_upper_bound(x[181], 1.0)
set_upper_bound(x[182], 1.0)
set_upper_bound(x[183], 1.0)
set_upper_bound(x[184], 1.0)
set_upper_bound(x[185], 1.0)
set_upper_bound(x[186], 1.0)
set_upper_bound(x[187], 1.0)
set_upper_bound(x[188], 1.0)
set_upper_bound(x[189], 1.0)
set_upper_bound(x[190], 1.0)
set_upper_bound(x[191], 1.0)
set_upper_bound(x[192], 1.0)
set_upper_bound(x[193], 1.0)
set_upper_bound(x[194], 1.0)
set_upper_bound(x[195], 1.0)
set_upper_bound(x[196], 1.0)
set_upper_bound(x[197], 1.0)
set_upper_bound(x[198], 1.0)
set_upper_bound(x[199], 1.0)
set_upper_bound(x[200], 1.0)
set_upper_bound(x[201], 1.0)
set_upper_bound(x[202], 1.0)
set_upper_bound(x[203], 1.0)
set_upper_bound(x[204], 1.0)
set_upper_bound(x[205], 1.0)
set_upper_bound(x[206], 1.0)
set_upper_bound(x[207], 1.0)
set_upper_bound(x[208], 1.0)
set_upper_bound(x[209], 1.0)
set_upper_bound(x[210], 1.0)
set_upper_bound(x[211], 1.0)
set_upper_bound(x[212], 1.0)
set_upper_bound(x[213], 1.0)
set_upper_bound(x[214], 1.0)
set_upper_bound(x[215], 1.0)
set_upper_bound(x[216], 1.0)
set_upper_bound(x[217], 1.0)
set_upper_bound(x[218], 1.0)
set_upper_bound(x[219], 1.0)
set_upper_bound(x[220], 1.0)
set_upper_bound(x[221], 1.0)
set_upper_bound(x[222], 1.0)
set_upper_bound(x[223], 1.0)
set_upper_bound(x[224], 1.0)
set_upper_bound(x[225], 1.0)
set_upper_bound(x[226], 1.0)
set_upper_bound(x[227], 1.0)
set_upper_bound(x[228], 1.0)
set_upper_bound(x[229], 1.0)
set_upper_bound(x[230], 1.0)
set_upper_bound(x[231], 1.0)
set_upper_bound(x[232], 1.0)
set_upper_bound(x[233], 1.0)
set_upper_bound(x[234], 1.0)
set_upper_bound(x[235], 1.0)
set_upper_bound(x[236], 1.0)
set_upper_bound(x[237], 1.0)
set_upper_bound(x[238], 1.0)
set_upper_bound(x[239], 1.0)
set_upper_bound(x[240], 1.0)
set_upper_bound(x[241], 1.0)
set_upper_bound(x[242], 1.0)
set_upper_bound(x[243], 1.0)
set_upper_bound(x[244], 1.0)
set_upper_bound(x[245], 1.0)
set_upper_bound(x[246], 1.0)
set_upper_bound(x[247], 1.0)
set_upper_bound(x[248], 1.0)
set_upper_bound(x[249], 1.0)
set_upper_bound(x[250], 1.0)
set_upper_bound(x[251], 1.0)
set_upper_bound(x[252], 1.0)
set_upper_bound(x[253], 1.0)
set_upper_bound(x[254], 1.0)
set_upper_bound(x[255], 1.0)
set_upper_bound(x[256], 1.0)
set_upper_bound(x[257], 1.0)
set_upper_bound(x[258], 1.0)
set_upper_bound(x[259], 1.0)
set_upper_bound(x[260], 1.0)
set_upper_bound(x[261], 1.0)
set_upper_bound(x[262], 1.0)
set_upper_bound(x[263], 1.0)
set_upper_bound(x[264], 1.0)
set_upper_bound(x[265], 1.0)
set_upper_bound(x[266], 1.0)
set_upper_bound(x[267], 1.0)
set_upper_bound(x[268], 1.0)
set_upper_bound(x[269], 1.0)
set_upper_bound(x[270], 1.0)
set_upper_bound(x[271], 1.0)
set_upper_bound(x[272], 1.0)
set_upper_bound(x[273], 1.0)
set_upper_bound(x[274], 1.0)
set_upper_bound(x[275], 1.0)
set_upper_bound(x[276], 1.0)
set_upper_bound(x[277], 1.0)
set_upper_bound(x[278], 1.0)
set_upper_bound(x[279], 1.0)
set_upper_bound(x[280], 1.0)
set_upper_bound(x[281], 1.0)
set_upper_bound(x[282], 1.0)
set_upper_bound(x[283], 1.0)
set_upper_bound(x[284], 1.0)
set_upper_bound(x[285], 1.0)
set_upper_bound(x[286], 1.0)
set_upper_bound(x[287], 1.0)
set_upper_bound(x[288], 1.0)
set_upper_bound(x[289], 1.0)
set_upper_bound(x[290], 1.0)
set_upper_bound(x[291], 1.0)
set_upper_bound(x[292], 1.0)
set_upper_bound(x[293], 1.0)
set_upper_bound(x[294], 1.0)
set_upper_bound(x[295], 1.0)
set_upper_bound(x[296], 1.0)
set_upper_bound(x[297], 1.0)
set_upper_bound(x[298], 1.0)
set_upper_bound(x[299], 1.0)
set_upper_bound(x[300], 1.0)
set_upper_bound(x[301], 1.0)
set_upper_bound(x[302], 1.0)
set_upper_bound(x[303], 1.0)
set_upper_bound(x[304], 1.0)
set_upper_bound(x[305], 1.0)
set_upper_bound(x[306], 1.0)
set_upper_bound(x[307], 1.0)
set_upper_bound(x[308], 1.0)
set_upper_bound(x[309], 1.0)
set_upper_bound(x[310], 1.0)
set_upper_bound(x[311], 1.0)
set_upper_bound(x[312], 1.0)
set_upper_bound(x[313], 1.0)
set_upper_bound(x[314], 1.0)
set_upper_bound(x[315], 1.0)
set_upper_bound(x[316], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[112]-x[121] == 18.4364105)
@constraint(m, e2, x[113]-x[122] == 21.1551365)
@constraint(m, e3, x[114]-x[123] == 9.78976)
@constraint(m, e4, x[115]-x[124] == 3.673953)
@constraint(m, e5, x[116]-x[125] == 9.6863185)
@constraint(m, e6, x[117]-x[126] == 1.3701)
@constraint(m, e7, x[118]-x[127] == 1.9123)
@constraint(m, e8, x[119]-x[128] == 2.398969)
@constraint(m, e9, x[120]-x[129] == 5.5690645)
@constraint(m, e10, x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]-x[112] == 0.0)
@constraint(m, e11, x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]-x[113] == 0.0)
@constraint(m, e12, x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]-x[114] == 0.0)
@constraint(m, e13, x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]-x[115] == 0.0)
@constraint(m, e14, x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]-x[116] == 0.0)
@constraint(m, e15, x[74]+x[75]+x[76]+x[77]+x[78]+x[79]+x[80]+x[81]+x[82]-x[117] == 0.0)
@constraint(m, e16, x[83]+x[84]+x[85]+x[86]+x[87]+x[88]+x[89]+x[90]+x[91]-x[118] == 0.0)
@constraint(m, e17, x[92]+x[93]+x[94]+x[95]+x[96]+x[97]+x[98]+x[99]+x[100]-x[119] == 0.0)
@constraint(m, e18, x[101]+x[102]+x[103]+x[104]+x[105]+x[106]+x[107]+x[108]+x[109]-x[120] == 0.0)
@constraint(m, e19, x[29]+x[38]+x[47]+x[56]+x[65]+x[74]+x[83]+x[92]+x[101]-x[112] == 0.0)
@constraint(m, e20, x[30]+x[39]+x[48]+x[57]+x[66]+x[75]+x[84]+x[93]+x[102]-x[113] == 0.0)
@constraint(m, e21, x[31]+x[40]+x[49]+x[58]+x[67]+x[76]+x[85]+x[94]+x[103]-x[114] == 0.0)
@constraint(m, e22, x[32]+x[41]+x[50]+x[59]+x[68]+x[77]+x[86]+x[95]+x[104]-x[115] == 0.0)
@constraint(m, e23, x[33]+x[42]+x[51]+x[60]+x[69]+x[78]+x[87]+x[96]+x[105]-x[116] == 0.0)
@constraint(m, e24, x[34]+x[43]+x[52]+x[61]+x[70]+x[79]+x[88]+x[97]+x[106]-x[117] == 0.0)
@constraint(m, e25, x[35]+x[44]+x[53]+x[62]+x[71]+x[80]+x[89]+x[98]+x[107]-x[118] == 0.0)
@constraint(m, e26, x[36]+x[45]+x[54]+x[63]+x[72]+x[81]+x[90]+x[99]+x[108]-x[119] == 0.0)
@constraint(m, e27, x[37]+x[46]+x[55]+x[64]+x[73]+x[82]+x[91]+x[100]+x[109]-x[120] == 0.0)
@NLconstraint(m, e28, -x[1]*x[113]+x[30] == 0.0)
@NLconstraint(m, e29, -x[2]*x[116]+x[33] == 0.0)
@NLconstraint(m, e30, -x[3]*x[117]+x[34] == 0.0)
@NLconstraint(m, e31, -x[4]*x[120]+x[37] == 0.0)
@NLconstraint(m, e32, -x[5]*x[112]+x[38] == 0.0)
@NLconstraint(m, e33, -x[6]*x[116]+x[42] == 0.0)
@NLconstraint(m, e34, -x[7]*x[117]+x[43] == 0.0)
@NLconstraint(m, e35, -x[8]*x[118]+x[44] == 0.0)
@NLconstraint(m, e36, -x[9]*x[119]+x[45] == 0.0)
@NLconstraint(m, e37, -x[10]*x[112]+x[47] == 0.0)
@NLconstraint(m, e38, -x[11]*x[114]+x[58] == 0.0)
@NLconstraint(m, e39, -x[12]*x[117]+x[61] == 0.0)
@NLconstraint(m, e40, -x[13]*x[114]+x[67] == 0.0)
@NLconstraint(m, e41, -x[14]*x[115]+x[68] == 0.0)
@NLconstraint(m, e42, -x[15]*x[117]+x[70] == 0.0)
@NLconstraint(m, e43, -x[16]*x[120]+x[73] == 0.0)
@NLconstraint(m, e44, -x[17]*x[112]+x[74] == 0.0)
@NLconstraint(m, e45, -x[18]*x[113]+x[75] == 0.0)
@NLconstraint(m, e46, -x[19]*x[114]+x[76] == 0.0)
@NLconstraint(m, e47, -x[20]*x[115]+x[77] == 0.0)
@NLconstraint(m, e48, -x[21]*x[116]+x[78] == 0.0)
@NLconstraint(m, e49, -x[22]*x[120]+x[91] == 0.0)
@NLconstraint(m, e50, -x[23]*x[115]+x[95] == 0.0)
@NLconstraint(m, e51, -x[24]*x[116]+x[96] == 0.0)
@NLconstraint(m, e52, -x[25]*x[117]+x[97] == 0.0)
@NLconstraint(m, e53, -x[26]*x[118]+x[98] == 0.0)
@NLconstraint(m, e54, -x[27]*x[120]+x[100] == 0.0)
@NLconstraint(m, e55, -x[28]*x[113]+x[102] == 0.0)
@constraint(m, e56, x[30]-x[132] == 14.827424)
@constraint(m, e57, x[34]-x[134] == -0.000327)
@constraint(m, e58, x[37]-x[135] == 1.488157)
@constraint(m, e59, x[43]-x[138] == 1.5645)
@constraint(m, e60, x[44]-x[139] == 2.5185)
@constraint(m, e61, x[45]-x[140] == 2.597798)
@constraint(m, e62, x[61]-x[143] == 0.033)
@constraint(m, e63, x[70]-x[146] == 0.0296)
@constraint(m, e64, x[73]-x[147] == 0.2)
@constraint(m, e65, x[75]-x[149] == 0.3574)
@constraint(m, e66, x[91]-x[153] == 1.7123)
@constraint(m, e67, x[97]-x[156] == -0.356673)
@constraint(m, e68, x[98]-x[157] == -0.4062)
@constraint(m, e69, x[100]-x[158] == 2.163857)
@constraint(m, e70, x[102]-x[159] == 5.573815)
@NLconstraint(m, e71, -0.213455359357076*exp(x[133])+x[2] == 0.0)
@NLconstraint(m, e72, -0.428981457932639*exp(x[136])+x[5] == 0.0)
@NLconstraint(m, e73, -0.706421402256235*exp(x[137])+x[6] == 0.0)
@NLconstraint(m, e74, -0.531271066405917*exp(x[141])+x[10] == 0.0)
@NLconstraint(m, e75, -0.37852116602787*exp(x[142])+x[11] == 0.0)
@NLconstraint(m, e76, -0.613866884603052*exp(x[144])+x[13] == 0.0)
@NLconstraint(m, e77, -0.912812569152467*exp(x[145])+x[14] == 0.0)
@NLconstraint(m, e78, -0.0397474756614438*exp(x[148])+x[17] == 0.0)
@NLconstraint(m, e79, -0.00761194936907785*exp(x[150])+x[19] == 0.0)
@NLconstraint(m, e80, -0.0456959504315114*exp(x[151])+x[20] == 0.0)
@NLconstraint(m, e81, -0.0141724551070975*exp(x[152])+x[21] == 0.0)
@NLconstraint(m, e82, -0.0414914804160212*exp(x[154])+x[23] == 0.0)
@NLconstraint(m, e83, -0.0659507832795914*exp(x[155])+x[24] == 0.0)
@constraint(m, e84, -x[47]+x[110] == 0.0)
@constraint(m, e85, x[34]-x[47]-x[74]-x[75]+x[111] == 0.0)
@constraint(m, e86, x[110]-x[130] == 9.805414)
@constraint(m, e87, x[111]-x[131] == 10.896741)
@constraint(m, e88, x[121]+2.765461575*x[160]+1.84364105*x[161]+0.921820525*x[162]-0.921820525*x[164]-1.84364105*x[165]-2.765461575*x[166] == 0.0)
@constraint(m, e89, x[122]+3.173270475*x[167]+2.11551365*x[168]+1.057756825*x[169]-1.057756825*x[171]-2.11551365*x[172]-3.173270475*x[173] == 0.0)
@constraint(m, e90, x[123]+1.468464*x[174]+0.978976*x[175]+0.489488*x[176]-0.489488*x[178]-0.978976*x[179]-1.468464*x[180] == 0.0)
@constraint(m, e91, x[124]+0.55109295*x[181]+0.3673953*x[182]+0.18369765*x[183]-0.18369765*x[185]-0.3673953*x[186]-0.55109295*x[187] == 0.0)
@constraint(m, e92, x[125]+1.452947775*x[188]+0.96863185*x[189]+0.484315925*x[190]-0.484315925*x[192]-0.96863185*x[193]-1.452947775*x[194] == 0.0)
@constraint(m, e93, x[126]+0.205515*x[195]+0.13701*x[196]+0.068505*x[197]-0.068505*x[199]-0.13701*x[200]-0.205515*x[201] == 0.0)
@constraint(m, e94, x[127]+0.286845*x[202]+0.19123*x[203]+0.095615*x[204]-0.095615*x[206]-0.19123*x[207]-0.286845*x[208] == 0.0)
@constraint(m, e95, x[128]+0.35984535*x[209]+0.2398969*x[210]+0.11994845*x[211]-0.11994845*x[213]-0.2398969*x[214]-0.35984535*x[215] == 0.0)
@constraint(m, e96, x[129]+0.835359675*x[216]+0.55690645*x[217]+0.278453225*x[218]-0.278453225*x[220]-0.55690645*x[221]-0.835359675*x[222] == 0.0)
@constraint(m, e97, x[130]+1.4708121*x[223]+0.73540605*x[224]-0.73540605*x[226]-1.4708121*x[227] == 0.0)
@constraint(m, e98, x[131]+1.63451115*x[228]+0.817255575*x[229]-0.817255575*x[231]-1.63451115*x[232] == 0.0)
@constraint(m, e99, x[132]+11.120568*x[233]-11.120568*x[235] == 0.0)
@constraint(m, e100, x[133]+0.75*x[236]-0.75*x[238] == 0.0)
@constraint(m, e101, x[134]+0.00024525*x[239]-0.00024525*x[241] == 0.0)
@constraint(m, e102, x[135]+1.11611775*x[242]-1.11611775*x[244] == 0.0)
@constraint(m, e103, x[136]+0.75*x[245]-0.75*x[247] == 0.0)
@constraint(m, e104, x[137]+0.75*x[248]-0.75*x[250] == 0.0)
@constraint(m, e105, x[138]+1.173375*x[251]-1.173375*x[253] == 0.0)
@constraint(m, e106, x[139]+1.888875*x[254]-1.888875*x[256] == 0.0)
@constraint(m, e107, x[140]+1.9483485*x[257]-1.9483485*x[259] == 0.0)
@constraint(m, e108, x[141]+0.75*x[260]-0.75*x[262] == 0.0)
@constraint(m, e109, x[142]+0.75*x[263]-0.75*x[265] == 0.0)
@constraint(m, e110, x[143]+0.02475*x[266]-0.02475*x[268] == 0.0)
@constraint(m, e111, x[144]+0.75*x[269]-0.75*x[271] == 0.0)
@constraint(m, e112, x[145]+0.75*x[272]-0.75*x[274] == 0.0)
@constraint(m, e113, x[146]+0.0222*x[275]-0.0222*x[277] == 0.0)
@constraint(m, e114, x[147]+0.15*x[278]-0.15*x[280] == 0.0)
@constraint(m, e115, x[148]+0.75*x[281]-0.75*x[283] == 0.0)
@constraint(m, e116, x[149]+0.26805*x[284]-0.26805*x[286] == 0.0)
@constraint(m, e117, x[150]+0.75*x[287]-0.75*x[289] == 0.0)
@constraint(m, e118, x[151]+0.75*x[290]-0.75*x[292] == 0.0)
@constraint(m, e119, x[152]+0.75*x[293]-0.75*x[295] == 0.0)
@constraint(m, e120, x[153]+1.284225*x[296]-1.284225*x[298] == 0.0)
@constraint(m, e121, x[154]+0.75*x[299]-0.75*x[301] == 0.0)
@constraint(m, e122, x[155]+0.75*x[302]-0.75*x[304] == 0.0)
@constraint(m, e123, x[156]+0.26750475*x[305]-0.26750475*x[307] == 0.0)
@constraint(m, e124, x[157]+0.30465*x[308]-0.30465*x[310] == 0.0)
@constraint(m, e125, x[158]+1.62289275*x[311]-1.62289275*x[313] == 0.0)
@constraint(m, e126, x[159]+4.18036125*x[314]-4.18036125*x[316] == 0.0)
@constraint(m, e127, x[160]+x[161]+x[162]+x[163]+x[164]+x[165]+x[166] == 1.0)
@constraint(m, e128, x[167]+x[168]+x[169]+x[170]+x[171]+x[172]+x[173] == 1.0)
@constraint(m, e129, x[174]+x[175]+x[176]+x[177]+x[178]+x[179]+x[180] == 1.0)
@constraint(m, e130, x[181]+x[182]+x[183]+x[184]+x[185]+x[186]+x[187] == 1.0)
@constraint(m, e131, x[188]+x[189]+x[190]+x[191]+x[192]+x[193]+x[194] == 1.0)
@constraint(m, e132, x[195]+x[196]+x[197]+x[198]+x[199]+x[200]+x[201] == 1.0)
@constraint(m, e133, x[202]+x[203]+x[204]+x[205]+x[206]+x[207]+x[208] == 1.0)
@constraint(m, e134, x[209]+x[210]+x[211]+x[212]+x[213]+x[214]+x[215] == 1.0)
@constraint(m, e135, x[216]+x[217]+x[218]+x[219]+x[220]+x[221]+x[222] == 1.0)
@constraint(m, e136, x[223]+x[224]+x[225]+x[226]+x[227] == 1.0)
@constraint(m, e137, x[228]+x[229]+x[230]+x[231]+x[232] == 1.0)
@constraint(m, e138, x[233]+x[234]+x[235] == 1.0)
@constraint(m, e139, x[236]+x[237]+x[238] == 1.0)
@constraint(m, e140, x[239]+x[240]+x[241] == 1.0)
@constraint(m, e141, x[242]+x[243]+x[244] == 1.0)
@constraint(m, e142, x[245]+x[246]+x[247] == 1.0)
@constraint(m, e143, x[248]+x[249]+x[250] == 1.0)
@constraint(m, e144, x[251]+x[252]+x[253] == 1.0)
@constraint(m, e145, x[254]+x[255]+x[256] == 1.0)
@constraint(m, e146, x[257]+x[258]+x[259] == 1.0)
@constraint(m, e147, x[260]+x[261]+x[262] == 1.0)
@constraint(m, e148, x[263]+x[264]+x[265] == 1.0)
@constraint(m, e149, x[266]+x[267]+x[268] == 1.0)
@constraint(m, e150, x[269]+x[270]+x[271] == 1.0)
@constraint(m, e151, x[272]+x[273]+x[274] == 1.0)
@constraint(m, e152, x[275]+x[276]+x[277] == 1.0)
@constraint(m, e153, x[278]+x[279]+x[280] == 1.0)
@constraint(m, e154, x[281]+x[282]+x[283] == 1.0)
@constraint(m, e155, x[284]+x[285]+x[286] == 1.0)
@constraint(m, e156, x[287]+x[288]+x[289] == 1.0)
@constraint(m, e157, x[290]+x[291]+x[292] == 1.0)
@constraint(m, e158, x[293]+x[294]+x[295] == 1.0)
@constraint(m, e159, x[296]+x[297]+x[298] == 1.0)
@constraint(m, e160, x[299]+x[300]+x[301] == 1.0)
@constraint(m, e161, x[302]+x[303]+x[304] == 1.0)
@constraint(m, e162, x[305]+x[306]+x[307] == 1.0)
@constraint(m, e163, x[308]+x[309]+x[310] == 1.0)
@constraint(m, e164, x[311]+x[312]+x[313] == 1.0)
@constraint(m, e165, x[314]+x[315]+x[316] == 1.0)
@NLconstraint(m, e166, -(Centropy(x[233],0.0555555555555556)+Centropy(x[234],0.888888888888889)+Centropy(x[235],0.0555555555555556)+Centropy(x[236],0.0555555555555556)+Centropy(x[237],0.888888888888889)+Centropy(x[238],0.0555555555555556)+Centropy(x[239],0.0555555555555556)+Centropy(x[240],0.888888888888889)+Centropy(x[241],0.0555555555555556)+Centropy(x[242],0.0555555555555556)+Centropy(x[243],0.888888888888889)+Centropy(x[244],0.0555555555555556)+Centropy(x[245],0.0555555555555556)+Centropy(x[246],0.888888888888889)+Centropy(x[247],0.0555555555555556)+Centropy(x[248],0.0555555555555556)+Centropy(x[249],0.888888888888889)+Centropy(x[250],0.0555555555555556)+Centropy(x[251],0.0555555555555556)+Centropy(x[252],0.888888888888889)+Centropy(x[253],0.0555555555555556)+Centropy(x[254],0.0555555555555556)+Centropy(x[255],0.888888888888889)+Centropy(x[256],0.0555555555555556)+Centropy(x[257],0.0555555555555556)+Centropy(x[258],0.888888888888889)+Centropy(x[259],0.0555555555555556)+Centropy(x[260],0.0555555555555556)+Centropy(x[261],0.888888888888889)+Centropy(x[262],0.0555555555555556)+Centropy(x[263],0.0555555555555556)+Centropy(x[264],0.888888888888889)+Centropy(x[265],0.0555555555555556)+Centropy(x[266],0.0555555555555556)+Centropy(x[267],0.888888888888889)+Centropy(x[268],0.0555555555555556)+Centropy(x[269],0.0555555555555556)+Centropy(x[270],0.888888888888889)+Centropy(x[271],0.0555555555555556)+Centropy(x[272],0.0555555555555556)+Centropy(x[273],0.888888888888889)+Centropy(x[274],0.0555555555555556)+Centropy(x[275],0.0555555555555556)+Centropy(x[276],0.888888888888889)+Centropy(x[277],0.0555555555555556)+Centropy(x[278],0.0555555555555556)+Centropy(x[279],0.888888888888889)+Centropy(x[280],0.0555555555555556)+Centropy(x[281],0.0555555555555556)+Centropy(x[282],0.888888888888889)+Centropy(x[283],0.0555555555555556)+Centropy(x[284],0.0555555555555556)+Centropy(x[285],0.888888888888889)+Centropy(x[286],0.0555555555555556)+Centropy(x[287],0.0555555555555556)+Centropy(x[288],0.888888888888889)+Centropy(x[289],0.0555555555555556)+Centropy(x[290],0.0555555555555556)+Centropy(x[291],0.888888888888889)+Centropy(x[292],0.0555555555555556)+Centropy(x[293],0.0555555555555556)+Centropy(x[294],0.888888888888889)+Centropy(x[295],0.0555555555555556)+Centropy(x[296],0.0555555555555556)+Centropy(x[297],0.888888888888889)+Centropy(x[298],0.0555555555555556)+Centropy(x[299],0.0555555555555556)+Centropy(x[300],0.888888888888889)+Centropy(x[301],0.0555555555555556)+Centropy(x[302],0.0555555555555556)+Centropy(x[303],0.888888888888889)+Centropy(x[304],0.0555555555555556)+Centropy(x[305],0.0555555555555556)+Centropy(x[306],0.888888888888889)+Centropy(x[307],0.0555555555555556)+Centropy(x[308],0.0555555555555556)+Centropy(x[309],0.888888888888889)+Centropy(x[310],0.0555555555555556)+Centropy(x[311],0.0555555555555556)+Centropy(x[312],0.888888888888889)+Centropy(x[313],0.0555555555555556)+Centropy(x[314],0.0555555555555556)+Centropy(x[315],0.888888888888889)+Centropy(x[316],0.0555555555555556)+Centropy(x[160],0.142857142857143)+Centropy(x[161],0.142857142857143)+Centropy(x[162],0.142857142857143)+Centropy(x[163],0.142857142857143)+Centropy(x[164],0.142857142857143)+Centropy(x[165],0.142857142857143)+Centropy(x[166],0.142857142857143)+Centropy(x[167],0.142857142857143)+Centropy(x[168],0.142857142857143)+Centropy(x[169],0.142857142857143)+Centropy(x[170],0.142857142857143)+Centropy(x[171],0.142857142857143)+Centropy(x[172],0.142857142857143)+Centropy(x[173],0.142857142857143)+Centropy(x[174],0.142857142857143)+Centropy(x[175],0.142857142857143)+Centropy(x[176],0.142857142857143)+Centropy(x[177],0.142857142857143)+Centropy(x[178],0.142857142857143)+Centropy(x[179],0.142857142857143)+Centropy(x[180],0.142857142857143)+Centropy(x[181],0.142857142857143)+Centropy(x[182],0.142857142857143)+Centropy(x[183],0.142857142857143)+Centropy(x[184],0.142857142857143)+Centropy(x[185],0.142857142857143)+Centropy(x[186],0.142857142857143)+Centropy(x[187],0.142857142857143)+Centropy(x[188],0.142857142857143)+Centropy(x[189],0.142857142857143)+Centropy(x[190],0.142857142857143)+Centropy(x[191],0.142857142857143)+Centropy(x[192],0.142857142857143)+Centropy(x[193],0.142857142857143)+Centropy(x[194],0.142857142857143)+Centropy(x[195],0.142857142857143)+Centropy(x[196],0.142857142857143)+Centropy(x[197],0.142857142857143)+Centropy(x[198],0.142857142857143)+Centropy(x[199],0.142857142857143)+Centropy(x[200],0.142857142857143)+Centropy(x[201],0.142857142857143)+Centropy(x[202],0.142857142857143)+Centropy(x[203],0.142857142857143)+Centropy(x[204],0.142857142857143)+Centropy(x[205],0.142857142857143)+Centropy(x[206],0.142857142857143)+Centropy(x[207],0.142857142857143)+Centropy(x[208],0.142857142857143)+Centropy(x[209],0.142857142857143)+Centropy(x[210],0.142857142857143)+Centropy(x[211],0.142857142857143)+Centropy(x[212],0.142857142857143)+Centropy(x[213],0.142857142857143)+Centropy(x[214],0.142857142857143)+Centropy(x[215],0.142857142857143)+Centropy(x[216],0.142857142857143)+Centropy(x[217],0.142857142857143)+Centropy(x[218],0.142857142857143)+Centropy(x[219],0.142857142857143)+Centropy(x[220],0.142857142857143)+Centropy(x[221],0.142857142857143)+Centropy(x[222],0.142857142857143)+Centropy(x[223],0.00617283950617284)+Centropy(x[224],0.197530864197531)+Centropy(x[225],0.592592592592593)+Centropy(x[226],0.197530864197531)+Centropy(x[227],0.00617283950617284)+Centropy(x[228],0.00617283950617284)+Centropy(x[229],0.197530864197531)+Centropy(x[230],0.592592592592593)+Centropy(x[231],0.197530864197531)+Centropy(x[232],0.00617283950617284))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
