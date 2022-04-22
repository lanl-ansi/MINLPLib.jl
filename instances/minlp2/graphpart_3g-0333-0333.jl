using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@NLconstraint(m, e28, 129255*b[1]*b[7]-2042*b[1]*b[4]-8522*b[1]*b[10]+36910*b[1]*b[19]-145869*b[1]*b[28]+127657*b[1]*b[55]-2042*b[2]*b[5]+129255*b[2]*b[8]-8522*b[2]*b[11]+36910*b[2]*b[20]-145869*b[2]*b[29]+127657*b[2]*b[56]-2042*b[3]*b[6]+129255*b[3]*b[9]-8522*b[3]*b[12]+36910*b[3]*b[21]-145869*b[3]*b[30]+127657*b[3]*b[57]-33798*b[4]*b[7]-39758*b[4]*b[13]+11107*b[4]*b[22]+15677*b[4]*b[31]+73973*b[4]*b[58]-33798*b[5]*b[8]-39758*b[5]*b[14]+11107*b[5]*b[23]+15677*b[5]*b[32]+73973*b[5]*b[59]-33798*b[6]*b[9]-39758*b[6]*b[15]+11107*b[6]*b[24]+15677*b[6]*b[33]+73973*b[6]*b[60]-107376*b[7]*b[16]+22779*b[7]*b[25]-25900*b[7]*b[34]+148330*b[7]*b[61]-107376*b[8]*b[17]+22779*b[8]*b[26]-25900*b[8]*b[35]+148330*b[8]*b[62]-107376*b[9]*b[18]+22779*b[9]*b[27]-25900*b[9]*b[36]+148330*b[9]*b[63]+91287*b[10]*b[13]+124870*b[10]*b[16]+162003*b[10]*b[19]-11373*b[10]*b[37]-47393*b[10]*b[64]+91287*b[11]*b[14]+124870*b[11]*b[17]+162003*b[11]*b[20]-11373*b[11]*b[38]-47393*b[11]*b[65]+91287*b[12]*b[15]+124870*b[12]*b[18]+162003*b[12]*b[21]-11373*b[12]*b[39]-47393*b[12]*b[66]+124357*b[13]*b[16]+13532*b[13]*b[22]+4677*b[13]*b[40]-1151*b[13]*b[67]+124357*b[14]*b[17]+13532*b[14]*b[23]+4677*b[14]*b[41]-1151*b[14]*b[68]+124357*b[15]*b[18]+13532*b[15]*b[24]+4677*b[15]*b[42]-1151*b[15]*b[69]+184*b[16]*b[25]+47897*b[16]*b[43]+44236*b[16]*b[70]+184*b[17]*b[26]+47897*b[17]*b[44]+44236*b[17]*b[71]+184*b[18]*b[27]+47897*b[18]*b[45]+44236*b[18]*b[72]+244323*b[19]*b[22]+86471*b[19]*b[25]+77346*b[19]*b[46]+79541*b[19]*b[73]+244323*b[20]*b[23]+86471*b[20]*b[26]+77346*b[20]*b[47]+79541*b[20]*b[74]+244323*b[21]*b[24]+86471*b[21]*b[27]+77346*b[21]*b[48]+79541*b[21]*b[75]-253603*b[22]*b[25]-64607*b[22]*b[49]-15251*b[22]*b[76]-253603*b[23]*b[26]-64607*b[23]*b[50]-15251*b[23]*b[77]-253603*b[24]*b[27]-64607*b[24]*b[51]-15251*b[24]*b[78]+161607*b[25]*b[52]-38842*b[25]*b[79]+161607*b[26]*b[53]-38842*b[26]*b[80]+161607*b[27]*b[54]-38842*b[27]*b[81]-141201*b[28]*b[31]+98698*b[28]*b[34]+126297*b[28]*b[37]+55703*b[28]*b[46]-109445*b[28]*b[55]-141201*b[29]*b[32]+98698*b[29]*b[35]+126297*b[29]*b[38]+55703*b[29]*b[47]-109445*b[29]*b[56]-141201*b[30]*b[33]+98698*b[30]*b[36]+126297*b[30]*b[39]+55703*b[30]*b[48]-109445*b[30]*b[57]-133217*b[31]*b[34]-85164*b[31]*b[40]+83576*b[31]*b[49]+109539*b[31]*b[58]-133217*b[32]*b[35]-85164*b[32]*b[41]+83576*b[32]*b[50]+109539*b[32]*b[59]-133217*b[33]*b[36]-85164*b[33]*b[42]+83576*b[33]*b[51]+109539*b[33]*b[60]+16583*b[34]*b[43]+79672*b[34]*b[52]-30705*b[34]*b[61]+16583*b[35]*b[44]+79672*b[35]*b[53]-30705*b[35]*b[62]+16583*b[36]*b[45]+79672*b[36]*b[54]-30705*b[36]*b[63]-23313*b[37]*b[40]+89988*b[37]*b[43]+230817*b[37]*b[46]-45147*b[37]*b[64]-23313*b[38]*b[41]+89988*b[38]*b[44]+230817*b[38]*b[47]-45147*b[38]*b[65]-23313*b[39]*b[42]+89988*b[39]*b[45]+230817*b[39]*b[48]-45147*b[39]*b[66]+64517*b[40]*b[43]+144765*b[40]*b[49]+24227*b[40]*b[67]+64517*b[41]*b[44]+144765*b[41]*b[50]+24227*b[41]*b[68]+64517*b[42]*b[45]+144765*b[42]*b[51]+24227*b[42]*b[69]-72744*b[43]*b[52]-37029*b[43]*b[70]-72744*b[44]*b[53]-37029*b[44]*b[71]-72744*b[45]*b[54]-37029*b[45]*b[72]+62016*b[46]*b[49]+4269*b[46]*b[52]-55976*b[46]*b[73]+62016*b[47]*b[50]+4269*b[47]*b[53]-55976*b[47]*b[74]+62016*b[48]*b[51]+4269*b[48]*b[54]-55976*b[48]*b[75]-18978*b[49]*b[52]+93391*b[49]*b[76]-18978*b[50]*b[53]+93391*b[50]*b[77]-18978*b[51]*b[54]+93391*b[51]*b[78]+19705*b[52]*b[79]+19705*b[53]*b[80]+19705*b[54]*b[81]-209910*b[55]*b[58]-212130*b[55]*b[61]+34970*b[55]*b[64]-105842*b[55]*b[73]-209910*b[56]*b[59]-212130*b[56]*b[62]+34970*b[56]*b[65]-105842*b[56]*b[74]-209910*b[57]*b[60]-212130*b[57]*b[63]+34970*b[57]*b[66]-105842*b[57]*b[75]-636*b[58]*b[61]+22984*b[58]*b[67]-194676*b[58]*b[76]-636*b[59]*b[62]+22984*b[59]*b[68]-194676*b[59]*b[77]-636*b[60]*b[63]+22984*b[60]*b[69]-194676*b[60]*b[78]+18051*b[61]*b[70]+14026*b[61]*b[79]+18051*b[62]*b[71]+14026*b[62]*b[80]+18051*b[63]*b[72]+14026*b[63]*b[81]+37051*b[64]*b[67]-14833*b[64]*b[70]-13122*b[64]*b[73]+37051*b[65]*b[68]-14833*b[65]*b[71]-13122*b[65]*b[74]+37051*b[66]*b[69]-14833*b[66]*b[72]-13122*b[66]*b[75]-66834*b[67]*b[70]+51800*b[67]*b[76]-66834*b[68]*b[71]+51800*b[68]*b[77]-66834*b[69]*b[72]+51800*b[69]*b[78]+108829*b[70]*b[79]+108829*b[71]*b[80]+108829*b[72]*b[81]+62586*b[73]*b[76]-78649*b[73]*b[79]+62586*b[74]*b[77]-78649*b[74]*b[80]+62586*b[75]*b[78]-78649*b[75]*b[81]+11036*b[76]*b[79]+11036*b[77]*b[80]+11036*b[78]*b[81]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
