using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468]
@variable(m, x[x_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[446], 0.0)
set_lower_bound(x[460], 0.0)
set_lower_bound(x[62], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[346], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[287], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[328], 0.0)
set_lower_bound(x[363], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[308], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[299], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[376], 0.0)
set_lower_bound(x[241], 0.0)
set_lower_bound(x[303], 0.0)
set_lower_bound(x[251], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[265], 0.0)
set_lower_bound(x[312], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[243], 0.0)
set_lower_bound(x[327], 0.0)
set_lower_bound(x[428], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[374], 0.0)
set_lower_bound(x[391], 0.0)
set_lower_bound(x[430], 0.0)
set_lower_bound(x[250], 0.0)
set_lower_bound(x[248], 0.0)
set_lower_bound(x[319], 0.0)
set_lower_bound(x[405], 0.0)
set_lower_bound(x[289], 0.0)
set_lower_bound(x[384], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[425], 0.0)
set_lower_bound(x[273], 0.0)
set_lower_bound(x[365], 0.0)
set_lower_bound(x[332], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[421], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[260], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[307], 0.0)
set_lower_bound(x[321], 0.0)
set_lower_bound(x[383], 0.0)
set_lower_bound(x[298], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[80], 0.0)
set_lower_bound(x[238], 0.0)
set_lower_bound(x[375], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[402], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[465], 0.0)
set_lower_bound(x[292], 0.0)
set_lower_bound(x[380], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[434], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[277], 0.0)
set_lower_bound(x[244], 0.0)
set_lower_bound(x[278], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[467], 0.0)
set_lower_bound(x[349], 0.0)
set_lower_bound(x[253], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[438], 0.0)
set_lower_bound(x[387], 0.0)
set_lower_bound(x[351], 0.0)
set_lower_bound(x[414], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[291], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[361], 0.0)
set_lower_bound(x[84], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[264], 0.0)
set_lower_bound(x[318], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[386], 0.0)
set_lower_bound(x[407], 0.0)
set_lower_bound(x[362], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[440], 0.0)
set_lower_bound(x[259], 0.0)
set_lower_bound(x[261], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[347], 0.0)
set_lower_bound(x[420], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[392], 0.0)
set_lower_bound(x[232], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[285], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[306], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[77], 0.0)
set_lower_bound(x[290], 0.0)
set_lower_bound(x[423], 0.0)
set_lower_bound(x[397], 0.0)
set_lower_bound(x[360], 0.0)
set_lower_bound(x[234], 0.0)
set_lower_bound(x[329], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[406], 0.0)
set_lower_bound(x[311], 0.0)
set_lower_bound(x[444], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[452], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[400], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[326], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[324], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[330], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[394], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[258], 0.0)
set_lower_bound(x[282], 0.0)
set_lower_bound(x[295], 0.0)
set_lower_bound(x[313], 0.0)
set_lower_bound(x[281], 0.0)
set_lower_bound(x[442], 0.0)
set_lower_bound(x[448], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[344], 0.0)
set_lower_bound(x[288], 0.0)
set_lower_bound(x[426], 0.0)
set_lower_bound(x[443], 0.0)
set_lower_bound(x[366], 0.0)
set_lower_bound(x[412], 0.0)
set_lower_bound(x[263], 0.0)
set_lower_bound(x[309], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[353], 0.0)
set_lower_bound(x[371], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[331], 0.0)
set_lower_bound(x[399], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[390], 0.0)
set_lower_bound(x[441], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[449], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[252], 0.0)
set_lower_bound(x[445], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[240], 0.0)
set_lower_bound(x[345], 0.0)
set_lower_bound(x[284], 0.0)
set_lower_bound(x[378], 0.0)
set_lower_bound(x[317], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[413], 0.0)
set_lower_bound(x[279], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[409], 0.0)
set_lower_bound(x[436], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[325], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[280], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[431], 0.0)
set_lower_bound(x[316], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[314], 0.0)
set_lower_bound(x[305], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[358], 0.0)
set_lower_bound(x[338], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[350], 0.0)
set_lower_bound(x[382], 0.0)
set_lower_bound(x[424], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[404], 0.0)
set_lower_bound(x[343], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[65], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[76], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[85], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[372], 0.0)
set_lower_bound(x[458], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[385], 0.0)
set_lower_bound(x[410], 0.0)
set_lower_bound(x[466], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[416], 0.0)
set_lower_bound(x[257], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[348], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[335], 0.0)
set_lower_bound(x[359], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[393], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[272], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[334], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[270], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[274], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[267], 0.0)
set_lower_bound(x[296], 0.0)
set_lower_bound(x[454], 0.0)
set_lower_bound(x[453], 0.0)
set_lower_bound(x[302], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[297], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[439], 0.0)
set_lower_bound(x[422], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[249], 0.0)
set_lower_bound(x[457], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[310], 0.0)
set_lower_bound(x[435], 0.0)
set_lower_bound(x[82], 0.0)
set_lower_bound(x[396], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[356], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[268], 0.0)
set_lower_bound(x[276], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[275], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[464], 0.0)
set_lower_bound(x[86], 0.0)
set_lower_bound(x[79], 0.0)
set_lower_bound(x[233], 0.0)
set_lower_bound(x[336], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[357], 0.0)
set_lower_bound(x[461], 0.0)
set_lower_bound(x[419], 0.0)
set_lower_bound(x[401], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[236], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[456], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[403], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[429], 0.0)
set_lower_bound(x[370], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[254], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[381], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[459], 0.0)
set_lower_bound(x[339], 0.0)
set_lower_bound(x[388], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[271], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[323], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[369], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[83], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[239], 0.0)
set_lower_bound(x[294], 0.0)
set_lower_bound(x[368], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[352], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[367], 0.0)
set_lower_bound(x[373], 0.0)
set_lower_bound(x[389], 0.0)
set_lower_bound(x[455], 0.0)
set_lower_bound(x[364], 0.0)
set_lower_bound(x[415], 0.0)
set_lower_bound(x[78], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[395], 0.0)
set_lower_bound(x[340], 0.0)
set_lower_bound(x[256], 0.0)
set_lower_bound(x[355], 0.0)
set_lower_bound(x[266], 0.0)
set_lower_bound(x[447], 0.0)
set_lower_bound(x[269], 0.0)
set_lower_bound(x[245], 0.0)
set_lower_bound(x[320], 0.0)
set_lower_bound(x[333], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[81], 0.0)
set_lower_bound(x[283], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[293], 0.0)
set_lower_bound(x[337], 0.0)
set_lower_bound(x[377], 0.0)
set_lower_bound(x[322], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[418], 0.0)
set_lower_bound(x[468], 0.0)
set_lower_bound(x[451], 0.0)
set_lower_bound(x[417], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[237], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[304], 0.0)
set_lower_bound(x[247], 0.0)
set_lower_bound(x[408], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[341], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[286], 0.0)
set_lower_bound(x[427], 0.0)
set_lower_bound(x[433], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[300], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[235], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[398], 0.0)
set_lower_bound(x[450], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[246], 0.0)
set_lower_bound(x[354], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[462], 0.0)
set_lower_bound(x[315], 0.0)
set_lower_bound(x[242], 0.0)
set_lower_bound(x[432], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[411], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[255], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[262], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[437], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[342], 0.0)
set_lower_bound(x[301], 0.0)
set_lower_bound(x[379], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)
set_lower_bound(x[463], 0.0)
set_lower_bound(x[1], 0.01)
set_lower_bound(x[2], 0.01)
set_lower_bound(x[3], 0.01)
set_lower_bound(x[4], 2000.0)
set_lower_bound(x[5], 0.01)
set_lower_bound(x[6], 0.01)
set_lower_bound(x[7], 0.01)
set_lower_bound(x[8], 0.01)
set_lower_bound(x[9], 0.01)
set_lower_bound(x[10], 0.01)
set_lower_bound(x[11], 0.01)
set_lower_bound(x[12], 0.01)
set_lower_bound(x[13], 0.01)
set_lower_bound(x[14], 0.01)
set_lower_bound(x[15], 0.01)
set_lower_bound(x[16], 0.01)
set_lower_bound(x[17], 0.01)
set_lower_bound(x[18], 0.01)
set_lower_bound(x[19], 0.01)
set_lower_bound(x[20], 0.01)
set_lower_bound(x[21], 0.01)
set_lower_bound(x[22], 2000.0)
set_lower_bound(x[23], 0.01)
set_lower_bound(x[24], 0.01)
set_lower_bound(x[25], 0.01)
set_lower_bound(x[26], 0.01)
set_lower_bound(x[27], 0.01)
set_lower_bound(x[28], 0.01)
set_lower_bound(x[29], 0.01)
set_lower_bound(x[30], 0.01)
set_lower_bound(x[31], 0.01)
set_lower_bound(x[32], 0.01)
set_lower_bound(x[33], 0.01)
set_lower_bound(x[34], 0.01)
set_lower_bound(x[35], 0.01)
set_lower_bound(x[36], 0.01)


# ----- Constraints ----- #
@constraint(m, e1, -x[37]-x[38]-x[39]+x[253]+x[254]+x[255] == 0.0)
@constraint(m, e2, -x[55]-x[56]-x[57]+x[271]+x[272]+x[273] == 0.0)
@constraint(m, e3, -x[73]-x[74]-x[75]+x[289]+x[290]+x[291] == 0.0)
@constraint(m, e4, -x[91]-x[92]-x[93]+x[307]+x[308]+x[309] == 0.0)
@constraint(m, e5, -x[109]-x[110]-x[111]+x[325]+x[326]+x[327] == 0.0)
@constraint(m, e6, -x[127]-x[128]-x[129]+x[343]+x[344]+x[345] == 0.0)
@constraint(m, e7, -x[145]-x[146]-x[147]+x[361]+x[362]+x[363] == 0.0)
@constraint(m, e8, -x[163]-x[164]-x[165]+x[379]+x[380]+x[381] == 0.0)
@constraint(m, e9, -x[181]-x[182]-x[183]+x[397]+x[398]+x[399] == 0.0)
@constraint(m, e10, -x[199]-x[200]-x[201]+x[415]+x[416]+x[417] == 0.0)
@constraint(m, e11, -x[217]-x[218]-x[219]+x[433]+x[434]+x[435] == 0.0)
@constraint(m, e12, -x[235]-x[236]-x[237]+x[451]+x[452]+x[453] == 0.0)
@constraint(m, e13, x[37]-x[40]-x[41]-x[42]-x[253]+x[256]+x[257]+x[258] == -2000.0)
@constraint(m, e14, x[55]-x[58]-x[59]-x[60]-x[271]+x[274]+x[275]+x[276] == -2000.0)
@constraint(m, e15, x[73]-x[76]-x[77]-x[78]-x[289]+x[292]+x[293]+x[294] == -1000.0)
@constraint(m, e16, x[91]-x[94]-x[95]-x[96]-x[307]+x[310]+x[311]+x[312] == 0.0)
@constraint(m, e17, x[109]-x[112]-x[113]-x[114]-x[325]+x[328]+x[329]+x[330] == 0.0)
@constraint(m, e18, x[127]-x[130]-x[131]-x[132]-x[343]+x[346]+x[347]+x[348] == 0.0)
@constraint(m, e19, x[145]-x[148]-x[149]-x[150]-x[361]+x[364]+x[365]+x[366] == 200.0)
@constraint(m, e20, x[163]-x[166]-x[167]-x[168]-x[379]+x[382]+x[383]+x[384] == 200.0)
@constraint(m, e21, x[181]-x[184]-x[185]-x[186]-x[397]+x[400]+x[401]+x[402] == 100.0)
@constraint(m, e22, x[199]-x[202]-x[203]-x[204]-x[415]+x[418]+x[419]+x[420] == 0.0)
@constraint(m, e23, x[217]-x[220]-x[221]-x[222]-x[433]+x[436]+x[437]+x[438] == 0.0)
@constraint(m, e24, x[235]-x[238]-x[239]-x[240]-x[451]+x[454]+x[455]+x[456] == 0.0)
@constraint(m, e25, x[38]-x[43]-x[44]-x[45]-x[254]+x[259]+x[260]+x[261] == 2000.0)
@constraint(m, e26, x[56]-x[61]-x[62]-x[63]-x[272]+x[277]+x[278]+x[279] == 0.0)
@constraint(m, e27, x[74]-x[79]-x[80]-x[81]-x[290]+x[295]+x[296]+x[297] == 0.0)
@constraint(m, e28, x[92]-x[97]-x[98]-x[99]-x[308]+x[313]+x[314]+x[315] == -1000.0)
@constraint(m, e29, x[110]-x[115]-x[116]-x[117]-x[326]+x[331]+x[332]+x[333] == -2000.0)
@constraint(m, e30, x[128]-x[133]-x[134]-x[135]-x[344]+x[349]+x[350]+x[351] == 0.0)
@constraint(m, e31, x[146]-x[151]-x[152]-x[153]-x[362]+x[367]+x[368]+x[369] == -200.0)
@constraint(m, e32, x[164]-x[169]-x[170]-x[171]-x[380]+x[385]+x[386]+x[387] == 0.0)
@constraint(m, e33, x[182]-x[187]-x[188]-x[189]-x[398]+x[403]+x[404]+x[405] == 0.0)
@constraint(m, e34, x[200]-x[205]-x[206]-x[207]-x[416]+x[421]+x[422]+x[423] == 100.0)
@constraint(m, e35, x[218]-x[223]-x[224]-x[225]-x[434]+x[439]+x[440]+x[441] == 200.0)
@constraint(m, e36, x[236]-x[241]-x[242]-x[243]-x[452]+x[457]+x[458]+x[459] == 0.0)
@constraint(m, e37, x[40]-x[46]-x[47]-x[48]-x[256]+x[262]+x[263]+x[264] == 0.0)
@constraint(m, e38, x[58]-x[64]-x[65]-x[66]-x[274]+x[280]+x[281]+x[282] == 2000.0)
@constraint(m, e39, x[76]-x[82]-x[83]-x[84]-x[292]+x[298]+x[299]+x[300] == 0.0)
@constraint(m, e40, x[94]-x[100]-x[101]-x[102]-x[310]+x[316]+x[317]+x[318] == 1000.0)
@constraint(m, e41, x[112]-x[118]-x[119]-x[120]-x[328]+x[334]+x[335]+x[336] == 0.0)
@constraint(m, e42, x[130]-x[136]-x[137]-x[138]-x[346]+x[352]+x[353]+x[354] == -1000.0)
@constraint(m, e43, x[148]-x[154]-x[155]-x[156]-x[364]+x[370]+x[371]+x[372] == 0.0)
@constraint(m, e44, x[166]-x[172]-x[173]-x[174]-x[382]+x[388]+x[389]+x[390] == -200.0)
@constraint(m, e45, x[184]-x[190]-x[191]-x[192]-x[400]+x[406]+x[407]+x[408] == 0.0)
@constraint(m, e46, x[202]-x[208]-x[209]-x[210]-x[418]+x[424]+x[425]+x[426] == -100.0)
@constraint(m, e47, x[220]-x[226]-x[227]-x[228]-x[436]+x[442]+x[443]+x[444] == 0.0)
@constraint(m, e48, x[238]-x[244]-x[245]-x[246]-x[454]+x[460]+x[461]+x[462] == 100.0)
@constraint(m, e49, x[43]-x[49]-x[50]-x[51]-x[259]+x[265]+x[266]+x[267] == 0.0)
@constraint(m, e50, x[61]-x[67]-x[68]-x[69]-x[277]+x[283]+x[284]+x[285] == 0.0)
@constraint(m, e51, x[79]-x[85]-x[86]-x[87]-x[295]+x[301]+x[302]+x[303] == 1000.0)
@constraint(m, e52, x[97]-x[103]-x[104]-x[105]-x[313]+x[319]+x[320]+x[321] == 0.0)
@constraint(m, e53, x[115]-x[121]-x[122]-x[123]-x[331]+x[337]+x[338]+x[339] == 2000.0)
@constraint(m, e54, x[133]-x[139]-x[140]-x[141]-x[349]+x[355]+x[356]+x[357] == 1000.0)
@constraint(m, e55, x[151]-x[157]-x[158]-x[159]-x[367]+x[373]+x[374]+x[375] == 0.0)
@constraint(m, e56, x[169]-x[175]-x[176]-x[177]-x[385]+x[391]+x[392]+x[393] == 0.0)
@constraint(m, e57, x[187]-x[193]-x[194]-x[195]-x[403]+x[409]+x[410]+x[411] == -100.0)
@constraint(m, e58, x[205]-x[211]-x[212]-x[213]-x[421]+x[427]+x[428]+x[429] == 0.0)
@constraint(m, e59, x[223]-x[229]-x[230]-x[231]-x[439]+x[445]+x[446]+x[447] == -200.0)
@constraint(m, e60, x[241]-x[247]-x[248]-x[249]-x[457]+x[463]+x[464]+x[465] == -100.0)
@constraint(m, e61, x[46]+x[49]-x[52]-x[262]-x[265]+x[268] == 0.0)
@constraint(m, e62, x[64]+x[67]-x[70]-x[280]-x[283]+x[286] == 0.0)
@constraint(m, e63, x[82]+x[85]-x[88]-x[298]-x[301]+x[304] == 0.0)
@constraint(m, e64, x[100]+x[103]-x[106]-x[316]-x[319]+x[322] == 0.0)
@constraint(m, e65, x[118]+x[121]-x[124]-x[334]-x[337]+x[340] == 0.0)
@constraint(m, e66, x[136]+x[139]-x[142]-x[352]-x[355]+x[358] == 0.0)
@constraint(m, e67, x[154]+x[157]-x[160]-x[370]-x[373]+x[376] == 0.0)
@constraint(m, e68, x[172]+x[175]-x[178]-x[388]-x[391]+x[394] == 0.0)
@constraint(m, e69, x[190]+x[193]-x[196]-x[406]-x[409]+x[412] == 0.0)
@constraint(m, e70, x[208]+x[211]-x[214]-x[424]-x[427]+x[430] == 0.0)
@constraint(m, e71, x[226]+x[229]-x[232]-x[442]-x[445]+x[448] == 0.0)
@constraint(m, e72, x[244]+x[247]-x[250]-x[460]-x[463]+x[466] == 0.0)
@constraint(m, e73, x[39]+x[41]+x[44]-x[53]-x[255]-x[257]-x[260]+x[269] == 0.0)
@constraint(m, e74, x[57]+x[59]+x[62]-x[71]-x[273]-x[275]-x[278]+x[287] == 0.0)
@constraint(m, e75, x[75]+x[77]+x[80]-x[89]-x[291]-x[293]-x[296]+x[305] == 0.0)
@constraint(m, e76, x[93]+x[95]+x[98]-x[107]-x[309]-x[311]-x[314]+x[323] == 0.0)
@constraint(m, e77, x[111]+x[113]+x[116]-x[125]-x[327]-x[329]-x[332]+x[341] == 0.0)
@constraint(m, e78, x[129]+x[131]+x[134]-x[143]-x[345]-x[347]-x[350]+x[359] == 0.0)
@constraint(m, e79, x[147]+x[149]+x[152]-x[161]-x[363]-x[365]-x[368]+x[377] == 0.0)
@constraint(m, e80, x[165]+x[167]+x[170]-x[179]-x[381]-x[383]-x[386]+x[395] == 0.0)
@constraint(m, e81, x[183]+x[185]+x[188]-x[197]-x[399]-x[401]-x[404]+x[413] == 0.0)
@constraint(m, e82, x[201]+x[203]+x[206]-x[215]-x[417]-x[419]-x[422]+x[431] == 0.0)
@constraint(m, e83, x[219]+x[221]+x[224]-x[233]-x[435]-x[437]-x[440]+x[449] == 0.0)
@constraint(m, e84, x[237]+x[239]+x[242]-x[251]-x[453]-x[455]-x[458]+x[467] == 0.0)
@constraint(m, e85, x[42]+x[45]+x[47]+x[50]+x[53]-x[54]-x[258]-x[261]-x[263]-x[266]-x[269]+x[270] == 0.0)
@constraint(m, e86, x[60]+x[63]+x[65]+x[68]+x[71]-x[72]-x[276]-x[279]-x[281]-x[284]-x[287]+x[288] == 0.0)
@constraint(m, e87, x[78]+x[81]+x[83]+x[86]+x[89]-x[90]-x[294]-x[297]-x[299]-x[302]-x[305]+x[306] == 0.0)
@constraint(m, e88, x[96]+x[99]+x[101]+x[104]+x[107]-x[108]-x[312]-x[315]-x[317]-x[320]-x[323]+x[324] == 0.0)
@constraint(m, e89, x[114]+x[117]+x[119]+x[122]+x[125]-x[126]-x[330]-x[333]-x[335]-x[338]-x[341]+x[342] == 0.0)
@constraint(m, e90, x[132]+x[135]+x[137]+x[140]+x[143]-x[144]-x[348]-x[351]-x[353]-x[356]-x[359]+x[360] == 0.0)
@constraint(m, e91, x[150]+x[153]+x[155]+x[158]+x[161]-x[162]-x[366]-x[369]-x[371]-x[374]-x[377]+x[378] == 0.0)
@constraint(m, e92, x[168]+x[171]+x[173]+x[176]+x[179]-x[180]-x[384]-x[387]-x[389]-x[392]-x[395]+x[396] == 0.0)
@constraint(m, e93, x[186]+x[189]+x[191]+x[194]+x[197]-x[198]-x[402]-x[405]-x[407]-x[410]-x[413]+x[414] == 0.0)
@constraint(m, e94, x[204]+x[207]+x[209]+x[212]+x[215]-x[216]-x[420]-x[423]-x[425]-x[428]-x[431]+x[432] == 0.0)
@constraint(m, e95, x[222]+x[225]+x[227]+x[230]+x[233]-x[234]-x[438]-x[441]-x[443]-x[446]-x[449]+x[450] == 0.0)
@constraint(m, e96, x[240]+x[243]+x[245]+x[248]+x[251]-x[252]-x[456]-x[459]-x[461]-x[464]-x[467]+x[468] == 0.0)
@constraint(m, e97, x[48]+x[51]+x[52]+x[54]-x[264]-x[267]-x[268]-x[270] == 0.0)
@constraint(m, e98, x[66]+x[69]+x[70]+x[72]-x[282]-x[285]-x[286]-x[288] == 0.0)
@constraint(m, e99, x[84]+x[87]+x[88]+x[90]-x[300]-x[303]-x[304]-x[306] == 0.0)
@constraint(m, e100, x[102]+x[105]+x[106]+x[108]-x[318]-x[321]-x[322]-x[324] == 0.0)
@constraint(m, e101, x[120]+x[123]+x[124]+x[126]-x[336]-x[339]-x[340]-x[342] == 0.0)
@constraint(m, e102, x[138]+x[141]+x[142]+x[144]-x[354]-x[357]-x[358]-x[360] == 0.0)
@constraint(m, e103, x[156]+x[159]+x[160]+x[162]-x[372]-x[375]-x[376]-x[378] == 0.0)
@constraint(m, e104, x[174]+x[177]+x[178]+x[180]-x[390]-x[393]-x[394]-x[396] == 0.0)
@constraint(m, e105, x[192]+x[195]+x[196]+x[198]-x[408]-x[411]-x[412]-x[414] == 0.0)
@constraint(m, e106, x[210]+x[213]+x[214]+x[216]-x[426]-x[429]-x[430]-x[432] == 0.0)
@constraint(m, e107, x[228]+x[231]+x[232]+x[234]-x[444]-x[447]-x[448]-x[450] == 0.0)
@constraint(m, e108, x[246]+x[249]+x[250]+x[252]-x[462]-x[465]-x[466]-x[468] == 0.0)
@NLconstraint(m, e109, -1e-6*(0.35* (x[37]+x[55]+x[73]+x[91]+x[109]+x[127]+x[145]+x[163]+x[181]+x[199]+x[217]+x[235])^3/(x[1]*x[1])+0.35*x[37]+0.35*x[55]+0.35*x[73]+0.35*x[91]+0.35*x[109]+0.35*x[127]+0.35*x[145]+0.35*x[163]+0.35*x[181]+0.35*x[199]+0.35*x[217]+0.35*x[235]+0.35* (x[253]+x[271]+x[289]+x[307]+x[325]+x[343]+x[361]+x[379]+x[397]+x[415]+x[433]+x[451])^3/(x[19]*x[19])+0.35*x[253]+0.35*x[271]+0.35*x[289]+0.35*x[307]+0.35*x[325]+0.35*x[343]+0.35*x[361]+0.35*x[379]+0.35*x[397]+0.35*x[415]+0.35*x[433]+0.35*x[451]+0.35*sqrt(x[1])+0.35*sqrt(x[19])+0.4* (x[38]+x[56]+x[74]+x[92]+x[110]+x[128]+x[146]+x[164]+x[182]+x[200]+x[218]+x[236])^3/(x[2]*x[2])+0.4*x[38]+0.4*x[56]+0.4*x[74]+0.4*x[92]+0.4*x[110]+0.4*x[128]+0.4*x[146]+0.4*x[164]+0.4*x[182]+0.4*x[200]+0.4*x[218]+0.4*x[236]+0.4* (x[254]+x[272]+x[290]+x[308]+x[326]+x[344]+x[362]+x[380]+x[398]+x[416]+x[434]+x[452])^3/(x[20]*x[20])+0.4*x[254]+0.4*x[272]+0.4*x[290]+0.4*x[308]+0.4*x[326]+0.4*x[344]+0.4*x[362]+0.4*x[380]+0.4*x[398]+0.4*x[416]+0.4*x[434]+0.4*x[452]+0.4*sqrt(x[2])+0.4*sqrt(x[20])+0.3* (x[39]+x[57]+x[75]+x[93]+x[111]+x[129]+x[147]+x[165]+x[183]+x[201]+x[219]+x[237])^3/(x[3]*x[3])+0.3*x[39]+0.3*x[57]+0.3*x[75]+0.3*x[93]+0.3*x[111]+0.3*x[129]+0.3*x[147]+0.3*x[165]+0.3*x[183]+0.3*x[201]+0.3*x[219]+0.3*x[237]+0.3* (x[255]+x[273]+x[291]+x[309]+x[327]+x[345]+x[363]+x[381]+x[399]+x[417]+x[435]+x[453])^3/(x[21]*x[21])+0.3*x[255]+0.3*x[273]+0.3*x[291]+0.3*x[309]+0.3*x[327]+0.3*x[345]+0.3*x[363]+0.3*x[381]+0.3*x[399]+0.3*x[417]+0.3*x[435]+0.3*x[453]+0.3*sqrt(x[3])+0.3*sqrt(x[21])+ (x[40]+x[58]+x[76]+x[94]+x[112]+x[130]+x[148]+x[166]+x[184]+x[202]+x[220]+x[238])^3/(x[4]*x[4])+x[40]+x[58]+x[76]+x[94]+x[112]+x[130]+x[148]+x[166]+x[184]+x[202]+x[220]+x[238]+ (x[256]+x[274]+x[292]+x[310]+x[328]+x[346]+x[364]+x[382]+x[400]+x[418]+x[436]+x[454])^3/(x[22]*x[22])+x[256]+x[274]+x[292]+x[310]+x[328]+x[346]+x[364]+x[382]+x[400]+x[418]+x[436]+x[454]+sqrt((-1999.99)+x[4])+sqrt((-1999.99)+x[22])+0.15* (x[41]+x[59]+x[77]+x[95]+x[113]+x[131]+x[149]+x[167]+x[185]+x[203]+x[221]+x[239])^3/(x[5]*x[5])+0.15*x[41]+0.15*x[59]+0.15*x[77]+0.15*x[95]+0.15*x[113]+0.15*x[131]+0.15*x[149]+0.15*x[167]+0.15*x[185]+0.15*x[203]+0.15*x[221]+0.15*x[239]+0.15* (x[257]+x[275]+x[293]+x[311]+x[329]+x[347]+x[365]+x[383]+x[401]+x[419]+x[437]+x[455])^3/(x[23]*x[23])+0.15*x[257]+0.15*x[275]+0.15*x[293]+0.15*x[311]+0.15*x[329]+0.15*x[347]+0.15*x[365]+0.15*x[383]+0.15*x[401]+0.15*x[419]+0.15*x[437]+0.15*x[455]+0.15*sqrt(x[5])+0.15*sqrt(x[23])+0.55* (x[42]+x[60]+x[78]+x[96]+x[114]+x[132]+x[150]+x[168]+x[186]+x[204]+x[222]+x[240])^3/(x[6]*x[6])+0.55*x[42]+0.55*x[60]+0.55*x[78]+0.55*x[96]+0.55*x[114]+0.55*x[132]+0.55*x[150]+0.55*x[168]+0.55*x[186]+0.55*x[204]+0.55*x[222]+0.55*x[240]+0.55* (x[258]+x[276]+x[294]+x[312]+x[330]+x[348]+x[366]+x[384]+x[402]+x[420]+x[438]+x[456])^3/(x[24]*x[24])+0.55*x[258]+0.55*x[276]+0.55*x[294]+0.55*x[312]+0.55*x[330]+0.55*x[348]+0.55*x[366]+0.55*x[384]+0.55*x[402]+0.55*x[420]+0.55*x[438]+0.55*x[456]+0.55*sqrt(x[6])+0.55*sqrt(x[24])+ (x[43]+x[61]+x[79]+x[97]+x[115]+x[133]+x[151]+x[169]+x[187]+x[205]+x[223]+x[241])^3/(x[7]*x[7])+x[43]+x[61]+x[79]+x[97]+x[115]+x[133]+x[151]+x[169]+x[187]+x[205]+x[223]+x[241]+ (x[259]+x[277]+x[295]+x[313]+x[331]+x[349]+x[367]+x[385]+x[403]+x[421]+x[439]+x[457])^3/(x[25]*x[25])+x[259]+x[277]+x[295]+x[313]+x[331]+x[349]+x[367]+x[385]+x[403]+x[421]+x[439]+x[457]+sqrt(x[7])+sqrt(x[25])+0.25* (x[44]+x[62]+x[80]+x[98]+x[116]+x[134]+x[152]+x[170]+x[188]+x[206]+x[224]+x[242])^3/(x[8]*x[8])+0.25*x[44]+0.25*x[62]+0.25*x[80]+0.25*x[98]+0.25*x[116]+0.25*x[134]+0.25*x[152]+0.25*x[170]+0.25*x[188]+0.25*x[206]+0.25*x[224]+0.25*x[242]+0.25* (x[260]+x[278]+x[296]+x[314]+x[332]+x[350]+x[368]+x[386]+x[404]+x[422]+x[440]+x[458])^3/(x[26]*x[26])+0.25*x[260]+0.25*x[278]+0.25*x[296]+0.25*x[314]+0.25*x[332]+0.25*x[350]+0.25*x[368]+0.25*x[386]+0.25*x[404]+0.25*x[422]+0.25*x[440]+0.25*x[458]+0.25*sqrt(x[8])+0.25*sqrt(x[26])+0.6* (x[45]+x[63]+x[81]+x[99]+x[117]+x[135]+x[153]+x[171]+x[189]+x[207]+x[225]+x[243])^3/(x[9]*x[9])+0.6*x[45]+0.6*x[63]+0.6*x[81]+0.6*x[99]+0.6*x[117]+0.6*x[135]+0.6*x[153]+0.6*x[171]+0.6*x[189]+0.6*x[207]+0.6*x[225]+0.6*x[243]+0.6* (x[261]+x[279]+x[297]+x[315]+x[333]+x[351]+x[369]+x[387]+x[405]+x[423]+x[441]+x[459])^3/(x[27]*x[27])+0.6*x[261]+0.6*x[279]+0.6*x[297]+0.6*x[315]+0.6*x[333]+0.6*x[351]+0.6*x[369]+0.6*x[387]+0.6*x[405]+0.6*x[423]+0.6*x[441]+0.6*x[459]+0.6*sqrt(x[9])+0.6*sqrt(x[27])+0.35* (x[46]+x[64]+x[82]+x[100]+x[118]+x[136]+x[154]+x[172]+x[190]+x[208]+x[226]+x[244])^3/(x[10]*x[10])+0.35*x[46]+0.35*x[64]+0.35*x[82]+0.35*x[100]+0.35*x[118]+0.35*x[136]+0.35*x[154]+0.35*x[172]+0.35*x[190]+0.35*x[208]+0.35*x[226]+0.35*x[244]+0.35* (x[262]+x[280]+x[298]+x[316]+x[334]+x[352]+x[370]+x[388]+x[406]+x[424]+x[442]+x[460])^3/(x[28]*x[28])+0.35*x[262]+0.35*x[280]+0.35*x[298]+0.35*x[316]+0.35*x[334]+0.35*x[352]+0.35*x[370]+0.35*x[388]+0.35*x[406]+0.35*x[424]+0.35*x[442]+0.35*x[460]+0.35*sqrt(x[10])+0.35*sqrt(x[28])+0.55* (x[47]+x[65]+x[83]+x[101]+x[119]+x[137]+x[155]+x[173]+x[191]+x[209]+x[227]+x[245])^3/(x[11]*x[11])+0.55*x[47]+0.55*x[65]+0.55*x[83]+0.55*x[101]+0.55*x[119]+0.55*x[137]+0.55*x[155]+0.55*x[173]+0.55*x[191]+0.55*x[209]+0.55*x[227]+0.55*x[245]+0.55* (x[263]+x[281]+x[299]+x[317]+x[335]+x[353]+x[371]+x[389]+x[407]+x[425]+x[443]+x[461])^3/(x[29]*x[29])+0.55*x[263]+0.55*x[281]+0.55*x[299]+0.55*x[317]+0.55*x[335]+0.55*x[353]+0.55*x[371]+0.55*x[389]+0.55*x[407]+0.55*x[425]+0.55*x[443]+0.55*x[461]+0.55*sqrt(x[11])+0.55*sqrt(x[29])+0.15* (x[48]+x[66]+x[84]+x[102]+x[120]+x[138]+x[156]+x[174]+x[192]+x[210]+x[228]+x[246])^3/(x[12]*x[12])+0.15*x[48]+0.15*x[66]+0.15*x[84]+0.15*x[102]+0.15*x[120]+0.15*x[138]+0.15*x[156]+0.15*x[174]+0.15*x[192]+0.15*x[210]+0.15*x[228]+0.15*x[246]+0.15* (x[264]+x[282]+x[300]+x[318]+x[336]+x[354]+x[372]+x[390]+x[408]+x[426]+x[444]+x[462])^3/(x[30]*x[30])+0.15*x[264]+0.15*x[282]+0.15*x[300]+0.15*x[318]+0.15*x[336]+0.15*x[354]+0.15*x[372]+0.15*x[390]+0.15*x[408]+0.15*x[426]+0.15*x[444]+0.15*x[462]+0.15*sqrt(x[12])+0.15*sqrt(x[30])+0.4* (x[49]+x[67]+x[85]+x[103]+x[121]+x[139]+x[157]+x[175]+x[193]+x[211]+x[229]+x[247])^3/(x[13]*x[13])+0.4*x[49]+0.4*x[67]+0.4*x[85]+0.4*x[103]+0.4*x[121]+0.4*x[139]+0.4*x[157]+0.4*x[175]+0.4*x[193]+0.4*x[211]+0.4*x[229]+0.4*x[247]+0.4* (x[265]+x[283]+x[301]+x[319]+x[337]+x[355]+x[373]+x[391]+x[409]+x[427]+x[445]+x[463])^3/(x[31]*x[31])+0.4*x[265]+0.4*x[283]+0.4*x[301]+0.4*x[319]+0.4*x[337]+0.4*x[355]+0.4*x[373]+0.4*x[391]+0.4*x[409]+0.4*x[427]+0.4*x[445]+0.4*x[463]+0.4*sqrt(x[13])+0.4*sqrt(x[31])+0.6* (x[50]+x[68]+x[86]+x[104]+x[122]+x[140]+x[158]+x[176]+x[194]+x[212]+x[230]+x[248])^3/(x[14]*x[14])+0.6*x[50]+0.6*x[68]+0.6*x[86]+0.6*x[104]+0.6*x[122]+0.6*x[140]+0.6*x[158]+0.6*x[176]+0.6*x[194]+0.6*x[212]+0.6*x[230]+0.6*x[248]+0.6* (x[266]+x[284]+x[302]+x[320]+x[338]+x[356]+x[374]+x[392]+x[410]+x[428]+x[446]+x[464])^3/(x[32]*x[32])+0.6*x[266]+0.6*x[284]+0.6*x[302]+0.6*x[320]+0.6*x[338]+0.6*x[356]+0.6*x[374]+0.6*x[392]+0.6*x[410]+0.6*x[428]+0.6*x[446]+0.6*x[464]+0.6*sqrt(x[14])+0.6*sqrt(x[32])+0.25* (x[51]+x[69]+x[87]+x[105]+x[123]+x[141]+x[159]+x[177]+x[195]+x[213]+x[231]+x[249])^3/(x[15]*x[15])+0.25*x[51]+0.25*x[69]+0.25*x[87]+0.25*x[105]+0.25*x[123]+0.25*x[141]+0.25*x[159]+0.25*x[177]+0.25*x[195]+0.25*x[213]+0.25*x[231]+0.25*x[249]+0.25* (x[267]+x[285]+x[303]+x[321]+x[339]+x[357]+x[375]+x[393]+x[411]+x[429]+x[447]+x[465])^3/(x[33]*x[33])+0.25*x[267]+0.25*x[285]+0.25*x[303]+0.25*x[321]+0.25*x[339]+0.25*x[357]+0.25*x[375]+0.25*x[393]+0.25*x[411]+0.25*x[429]+0.25*x[447]+0.25*x[465]+0.25*sqrt(x[15])+0.25*sqrt(x[33])+0.3* (x[52]+x[70]+x[88]+x[106]+x[124]+x[142]+x[160]+x[178]+x[196]+x[214]+x[232]+x[250])^3/(x[16]*x[16])+0.3*x[52]+0.3*x[70]+0.3*x[88]+0.3*x[106]+0.3*x[124]+0.3*x[142]+0.3*x[160]+0.3*x[178]+0.3*x[196]+0.3*x[214]+0.3*x[232]+0.3*x[250]+0.3* (x[268]+x[286]+x[304]+x[322]+x[340]+x[358]+x[376]+x[394]+x[412]+x[430]+x[448]+x[466])^3/(x[34]*x[34])+0.3*x[268]+0.3*x[286]+0.3*x[304]+0.3*x[322]+0.3*x[340]+0.3*x[358]+0.3*x[376]+0.3*x[394]+0.3*x[412]+0.3*x[430]+0.3*x[448]+0.3*x[466]+0.3*sqrt(x[16])+0.3*sqrt(x[34])+0.5* (x[53]+x[71]+x[89]+x[107]+x[125]+x[143]+x[161]+x[179]+x[197]+x[215]+x[233]+x[251])^3/(x[17]*x[17])+0.5*x[53]+0.5*x[71]+0.5*x[89]+0.5*x[107]+0.5*x[125]+0.5*x[143]+0.5*x[161]+0.5*x[179]+0.5*x[197]+0.5*x[215]+0.5*x[233]+0.5*x[251]+0.5* (x[269]+x[287]+x[305]+x[323]+x[341]+x[359]+x[377]+x[395]+x[413]+x[431]+x[449]+x[467])^3/(x[35]*x[35])+0.5*x[269]+0.5*x[287]+0.5*x[305]+0.5*x[323]+0.5*x[341]+0.5*x[359]+0.5*x[377]+0.5*x[395]+0.5*x[413]+0.5*x[431]+0.5*x[449]+0.5*x[467]+0.5*sqrt(x[17])+0.5*sqrt(x[35])+0.5* (x[54]+x[72]+x[90]+x[108]+x[126]+x[144]+x[162]+x[180]+x[198]+x[216]+x[234]+x[252])^3/(x[18]*x[18])+0.5*x[54]+0.5*x[72]+0.5*x[90]+0.5*x[108]+0.5*x[126]+0.5*x[144]+0.5*x[162]+0.5*x[180]+0.5*x[198]+0.5*x[216]+0.5*x[234]+0.5*x[252]+0.5* (x[270]+x[288]+x[306]+x[324]+x[342]+x[360]+x[378]+x[396]+x[414]+x[432]+x[450]+x[468])^3/(x[36]*x[36])+0.5*x[270]+0.5*x[288]+0.5*x[306]+0.5*x[324]+0.5*x[342]+0.5*x[360]+0.5*x[378]+0.5*x[396]+0.5*x[414]+0.5*x[432]+0.5*x[450]+0.5*x[468]+0.5*sqrt(x[18])+0.5*sqrt(x[36]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
