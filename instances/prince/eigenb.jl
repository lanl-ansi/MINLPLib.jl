using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-2)+x[2]*x[2]*x[1]+x[3]*x[3]*x[12]+x[4]*x[4]*x[23]+x[5]*x[5]*x[34]+x[6]*x[6]*x[45]+x[7]*x[7]*x[56]+x[8]*x[8]*x[67]+x[9]*x[9]*x[78]+x[10]*x[10]*x[89]+x[11]*x[11]*x[100])^2+ ((-1)+x[2]*x[2]+x[3]*x[3]+x[4]*x[4]+x[5]*x[5]+x[6]*x[6]+x[7]*x[7]+x[8]*x[8]+x[9]*x[9]+x[10]*x[10]+x[11]*x[11])^2+ (1+x[2]*x[13]*x[1]+x[3]*x[14]*x[12]+x[4]*x[15]*x[23]+x[5]*x[16]*x[34]+x[6]*x[17]*x[45]+x[7]*x[18]*x[56]+x[8]*x[19]*x[67]+x[9]*x[20]*x[78]+x[10]*x[21]*x[89]+x[11]*x[22]*x[100])^2+ (x[2]*x[13]+x[3]*x[14]+x[4]*x[15]+x[5]*x[16]+x[6]*x[17]+x[7]*x[18]+x[8]*x[19]+x[9]*x[20]+x[10]*x[21]+x[11]*x[22])^2+ ((-2)+x[13]*x[13]*x[1]+x[14]*x[14]*x[12]+x[15]*x[15]*x[23]+x[16]*x[16]*x[34]+x[17]*x[17]*x[45]+x[18]*x[18]*x[56]+x[19]*x[19]*x[67]+x[20]*x[20]*x[78]+x[21]*x[21]*x[89]+x[22]*x[22]*x[100])^2+ ((-1)+x[13]*x[13]+x[14]*x[14]+x[15]*x[15]+x[16]*x[16]+x[17]*x[17]+x[18]*x[18]+x[19]*x[19]+x[20]*x[20]+x[21]*x[21]+x[22]*x[22])^2+ (x[2]*x[24]*x[1]+x[3]*x[25]*x[12]+x[4]*x[26]*x[23]+x[5]*x[27]*x[34]+x[6]*x[28]*x[45]+x[7]*x[29]*x[56]+x[8]*x[30]*x[67]+x[9]*x[31]*x[78]+x[10]*x[32]*x[89]+x[11]*x[33]*x[100])^2+ (x[2]*x[24]+x[3]*x[25]+x[4]*x[26]+x[5]*x[27]+x[6]*x[28]+x[7]*x[29]+x[8]*x[30]+x[9]*x[31]+x[10]*x[32]+x[11]*x[33])^2+ (1+x[13]*x[24]*x[1]+x[14]*x[25]*x[12]+x[15]*x[26]*x[23]+x[16]*x[27]*x[34]+x[17]*x[28]*x[45]+x[18]*x[29]*x[56]+x[19]*x[30]*x[67]+x[20]*x[31]*x[78]+x[21]*x[32]*x[89]+x[22]*x[33]*x[100])^2+ (x[13]*x[24]+x[14]*x[25]+x[15]*x[26]+x[16]*x[27]+x[17]*x[28]+x[18]*x[29]+x[19]*x[30]+x[20]*x[31]+x[21]*x[32]+x[22]*x[33])^2+ ((-2)+x[24]*x[24]*x[1]+x[25]*x[25]*x[12]+x[26]*x[26]*x[23]+x[27]*x[27]*x[34]+x[28]*x[28]*x[45]+x[29]*x[29]*x[56]+x[30]*x[30]*x[67]+x[31]*x[31]*x[78]+x[32]*x[32]*x[89]+x[33]*x[33]*x[100])^2+ ((-1)+x[24]*x[24]+x[25]*x[25]+x[26]*x[26]+x[27]*x[27]+x[28]*x[28]+x[29]*x[29]+x[30]*x[30]+x[31]*x[31]+x[32]*x[32]+x[33]*x[33])^2+ (x[2]*x[35]*x[1]+x[3]*x[36]*x[12]+x[4]*x[37]*x[23]+x[5]*x[38]*x[34]+x[6]*x[39]*x[45]+x[7]*x[40]*x[56]+x[8]*x[41]*x[67]+x[9]*x[42]*x[78]+x[10]*x[43]*x[89]+x[11]*x[44]*x[100])^2+ (x[2]*x[35]+x[3]*x[36]+x[4]*x[37]+x[5]*x[38]+x[6]*x[39]+x[7]*x[40]+x[8]*x[41]+x[9]*x[42]+x[10]*x[43]+x[11]*x[44])^2+ (x[13]*x[35]*x[1]+x[14]*x[36]*x[12]+x[15]*x[37]*x[23]+x[16]*x[38]*x[34]+x[17]*x[39]*x[45]+x[18]*x[40]*x[56]+x[19]*x[41]*x[67]+x[20]*x[42]*x[78]+x[21]*x[43]*x[89]+x[22]*x[44]*x[100])^2+ (x[13]*x[35]+x[14]*x[36]+x[15]*x[37]+x[16]*x[38]+x[17]*x[39]+x[18]*x[40]+x[19]*x[41]+x[20]*x[42]+x[21]*x[43]+x[22]*x[44])^2+ (1+x[24]*x[35]*x[1]+x[25]*x[36]*x[12]+x[26]*x[37]*x[23]+x[27]*x[38]*x[34]+x[28]*x[39]*x[45]+x[29]*x[40]*x[56]+x[30]*x[41]*x[67]+x[31]*x[42]*x[78]+x[32]*x[43]*x[89]+x[33]*x[44]*x[100])^2+ (x[24]*x[35]+x[25]*x[36]+x[26]*x[37]+x[27]*x[38]+x[28]*x[39]+x[29]*x[40]+x[30]*x[41]+x[31]*x[42]+x[32]*x[43]+x[33]*x[44])^2+ ((-2)+x[35]*x[35]*x[1]+x[36]*x[36]*x[12]+x[37]*x[37]*x[23]+x[38]*x[38]*x[34]+x[39]*x[39]*x[45]+x[40]*x[40]*x[56]+x[41]*x[41]*x[67]+x[42]*x[42]*x[78]+x[43]*x[43]*x[89]+x[44]*x[44]*x[100])^2+ ((-1)+x[35]*x[35]+x[36]*x[36]+x[37]*x[37]+x[38]*x[38]+x[39]*x[39]+x[40]*x[40]+x[41]*x[41]+x[42]*x[42]+x[43]*x[43]+x[44]*x[44])^2+ (x[2]*x[46]*x[1]+x[3]*x[47]*x[12]+x[4]*x[48]*x[23]+x[5]*x[49]*x[34]+x[6]*x[50]*x[45]+x[7]*x[51]*x[56]+x[8]*x[52]*x[67]+x[9]*x[53]*x[78]+x[10]*x[54]*x[89]+x[11]*x[55]*x[100])^2+ (x[2]*x[46]+x[3]*x[47]+x[4]*x[48]+x[5]*x[49]+x[6]*x[50]+x[7]*x[51]+x[8]*x[52]+x[9]*x[53]+x[10]*x[54]+x[11]*x[55])^2+ (x[13]*x[46]*x[1]+x[14]*x[47]*x[12]+x[15]*x[48]*x[23]+x[16]*x[49]*x[34]+x[17]*x[50]*x[45]+x[18]*x[51]*x[56]+x[19]*x[52]*x[67]+x[20]*x[53]*x[78]+x[21]*x[54]*x[89]+x[22]*x[55]*x[100])^2+ (x[13]*x[46]+x[14]*x[47]+x[15]*x[48]+x[16]*x[49]+x[17]*x[50]+x[18]*x[51]+x[19]*x[52]+x[20]*x[53]+x[21]*x[54]+x[22]*x[55])^2+ (x[24]*x[46]*x[1]+x[25]*x[47]*x[12]+x[26]*x[48]*x[23]+x[27]*x[49]*x[34]+x[28]*x[50]*x[45]+x[29]*x[51]*x[56]+x[30]*x[52]*x[67]+x[31]*x[53]*x[78]+x[32]*x[54]*x[89]+x[33]*x[55]*x[100])^2+ (x[24]*x[46]+x[25]*x[47]+x[26]*x[48]+x[27]*x[49]+x[28]*x[50]+x[29]*x[51]+x[30]*x[52]+x[31]*x[53]+x[32]*x[54]+x[33]*x[55])^2+ (1+x[35]*x[46]*x[1]+x[36]*x[47]*x[12]+x[37]*x[48]*x[23]+x[38]*x[49]*x[34]+x[39]*x[50]*x[45]+x[40]*x[51]*x[56]+x[41]*x[52]*x[67]+x[42]*x[53]*x[78]+x[43]*x[54]*x[89]+x[44]*x[55]*x[100])^2+ (x[35]*x[46]+x[36]*x[47]+x[37]*x[48]+x[38]*x[49]+x[39]*x[50]+x[40]*x[51]+x[41]*x[52]+x[42]*x[53]+x[43]*x[54]+x[44]*x[55])^2+ ((-2)+x[46]*x[46]*x[1]+x[47]*x[47]*x[12]+x[48]*x[48]*x[23]+x[49]*x[49]*x[34]+x[50]*x[50]*x[45]+x[51]*x[51]*x[56]+x[52]*x[52]*x[67]+x[53]*x[53]*x[78]+x[54]*x[54]*x[89]+x[55]*x[55]*x[100])^2+ ((-1)+x[46]*x[46]+x[47]*x[47]+x[48]*x[48]+x[49]*x[49]+x[50]*x[50]+x[51]*x[51]+x[52]*x[52]+x[53]*x[53]+x[54]*x[54]+x[55]*x[55])^2+ (x[2]*x[57]*x[1]+x[3]*x[58]*x[12]+x[4]*x[59]*x[23]+x[5]*x[60]*x[34]+x[6]*x[61]*x[45]+x[7]*x[62]*x[56]+x[8]*x[63]*x[67]+x[9]*x[64]*x[78]+x[10]*x[65]*x[89]+x[11]*x[66]*x[100])^2+ (x[2]*x[57]+x[3]*x[58]+x[4]*x[59]+x[5]*x[60]+x[6]*x[61]+x[7]*x[62]+x[8]*x[63]+x[9]*x[64]+x[10]*x[65]+x[11]*x[66])^2+ (x[13]*x[57]*x[1]+x[14]*x[58]*x[12]+x[15]*x[59]*x[23]+x[16]*x[60]*x[34]+x[17]*x[61]*x[45]+x[18]*x[62]*x[56]+x[19]*x[63]*x[67]+x[20]*x[64]*x[78]+x[21]*x[65]*x[89]+x[22]*x[66]*x[100])^2+ (x[13]*x[57]+x[14]*x[58]+x[15]*x[59]+x[16]*x[60]+x[17]*x[61]+x[18]*x[62]+x[19]*x[63]+x[20]*x[64]+x[21]*x[65]+x[22]*x[66])^2+ (x[24]*x[57]*x[1]+x[25]*x[58]*x[12]+x[26]*x[59]*x[23]+x[27]*x[60]*x[34]+x[28]*x[61]*x[45]+x[29]*x[62]*x[56]+x[30]*x[63]*x[67]+x[31]*x[64]*x[78]+x[32]*x[65]*x[89]+x[33]*x[66]*x[100])^2+ (x[24]*x[57]+x[25]*x[58]+x[26]*x[59]+x[27]*x[60]+x[28]*x[61]+x[29]*x[62]+x[30]*x[63]+x[31]*x[64]+x[32]*x[65]+x[33]*x[66])^2+ (x[35]*x[57]*x[1]+x[36]*x[58]*x[12]+x[37]*x[59]*x[23]+x[38]*x[60]*x[34]+x[39]*x[61]*x[45]+x[40]*x[62]*x[56]+x[41]*x[63]*x[67]+x[42]*x[64]*x[78]+x[43]*x[65]*x[89]+x[44]*x[66]*x[100])^2+ (x[35]*x[57]+x[36]*x[58]+x[37]*x[59]+x[38]*x[60]+x[39]*x[61]+x[40]*x[62]+x[41]*x[63]+x[42]*x[64]+x[43]*x[65]+x[44]*x[66])^2+ (1+x[46]*x[57]*x[1]+x[47]*x[58]*x[12]+x[48]*x[59]*x[23]+x[49]*x[60]*x[34]+x[50]*x[61]*x[45]+x[51]*x[62]*x[56]+x[52]*x[63]*x[67]+x[53]*x[64]*x[78]+x[54]*x[65]*x[89]+x[55]*x[66]*x[100])^2+ (x[46]*x[57]+x[47]*x[58]+x[48]*x[59]+x[49]*x[60]+x[50]*x[61]+x[51]*x[62]+x[52]*x[63]+x[53]*x[64]+x[54]*x[65]+x[55]*x[66])^2+ ((-2)+x[57]*x[57]*x[1]+x[58]*x[58]*x[12]+x[59]*x[59]*x[23]+x[60]*x[60]*x[34]+x[61]*x[61]*x[45]+x[62]*x[62]*x[56]+x[63]*x[63]*x[67]+x[64]*x[64]*x[78]+x[65]*x[65]*x[89]+x[66]*x[66]*x[100])^2+ ((-1)+x[57]*x[57]+x[58]*x[58]+x[59]*x[59]+x[60]*x[60]+x[61]*x[61]+x[62]*x[62]+x[63]*x[63]+x[64]*x[64]+x[65]*x[65]+x[66]*x[66])^2+ (x[2]*x[68]*x[1]+x[3]*x[69]*x[12]+x[4]*x[70]*x[23]+x[5]*x[71]*x[34]+x[6]*x[72]*x[45]+x[7]*x[73]*x[56]+x[8]*x[74]*x[67]+x[9]*x[75]*x[78]+x[10]*x[76]*x[89]+x[11]*x[77]*x[100])^2+ (x[2]*x[68]+x[3]*x[69]+x[4]*x[70]+x[5]*x[71]+x[6]*x[72]+x[7]*x[73]+x[8]*x[74]+x[9]*x[75]+x[10]*x[76]+x[11]*x[77])^2+ (x[13]*x[68]*x[1]+x[14]*x[69]*x[12]+x[15]*x[70]*x[23]+x[16]*x[71]*x[34]+x[17]*x[72]*x[45]+x[18]*x[73]*x[56]+x[19]*x[74]*x[67]+x[20]*x[75]*x[78]+x[21]*x[76]*x[89]+x[22]*x[77]*x[100])^2+ (x[13]*x[68]+x[14]*x[69]+x[15]*x[70]+x[16]*x[71]+x[17]*x[72]+x[18]*x[73]+x[19]*x[74]+x[20]*x[75]+x[21]*x[76]+x[22]*x[77])^2+ (x[24]*x[68]*x[1]+x[25]*x[69]*x[12]+x[26]*x[70]*x[23]+x[27]*x[71]*x[34]+x[28]*x[72]*x[45]+x[29]*x[73]*x[56]+x[30]*x[74]*x[67]+x[31]*x[75]*x[78]+x[32]*x[76]*x[89]+x[33]*x[77]*x[100])^2+ (x[24]*x[68]+x[25]*x[69]+x[26]*x[70]+x[27]*x[71]+x[28]*x[72]+x[29]*x[73]+x[30]*x[74]+x[31]*x[75]+x[32]*x[76]+x[33]*x[77])^2+ (x[35]*x[68]*x[1]+x[36]*x[69]*x[12]+x[37]*x[70]*x[23]+x[38]*x[71]*x[34]+x[39]*x[72]*x[45]+x[40]*x[73]*x[56]+x[41]*x[74]*x[67]+x[42]*x[75]*x[78]+x[43]*x[76]*x[89]+x[44]*x[77]*x[100])^2+ (x[35]*x[68]+x[36]*x[69]+x[37]*x[70]+x[38]*x[71]+x[39]*x[72]+x[40]*x[73]+x[41]*x[74]+x[42]*x[75]+x[43]*x[76]+x[44]*x[77])^2+ (x[46]*x[68]*x[1]+x[47]*x[69]*x[12]+x[48]*x[70]*x[23]+x[49]*x[71]*x[34]+x[50]*x[72]*x[45]+x[51]*x[73]*x[56]+x[52]*x[74]*x[67]+x[53]*x[75]*x[78]+x[54]*x[76]*x[89]+x[55]*x[77]*x[100])^2+ (x[46]*x[68]+x[47]*x[69]+x[48]*x[70]+x[49]*x[71]+x[50]*x[72]+x[51]*x[73]+x[52]*x[74]+x[53]*x[75]+x[54]*x[76]+x[55]*x[77])^2+ (1+x[57]*x[68]*x[1]+x[58]*x[69]*x[12]+x[59]*x[70]*x[23]+x[60]*x[71]*x[34]+x[61]*x[72]*x[45]+x[62]*x[73]*x[56]+x[63]*x[74]*x[67]+x[64]*x[75]*x[78]+x[65]*x[76]*x[89]+x[66]*x[77]*x[100])^2+ (x[57]*x[68]+x[58]*x[69]+x[59]*x[70]+x[60]*x[71]+x[61]*x[72]+x[62]*x[73]+x[63]*x[74]+x[64]*x[75]+x[65]*x[76]+x[66]*x[77])^2+ ((-2)+x[68]*x[68]*x[1]+x[69]*x[69]*x[12]+x[70]*x[70]*x[23]+x[71]*x[71]*x[34]+x[72]*x[72]*x[45]+x[73]*x[73]*x[56]+x[74]*x[74]*x[67]+x[75]*x[75]*x[78]+x[76]*x[76]*x[89]+x[77]*x[77]*x[100])^2+ ((-1)+x[68]*x[68]+x[69]*x[69]+x[70]*x[70]+x[71]*x[71]+x[72]*x[72]+x[73]*x[73]+x[74]*x[74]+x[75]*x[75]+x[76]*x[76]+x[77]*x[77])^2+ (x[2]*x[79]*x[1]+x[3]*x[80]*x[12]+x[4]*x[81]*x[23]+x[5]*x[82]*x[34]+x[6]*x[83]*x[45]+x[7]*x[84]*x[56]+x[8]*x[85]*x[67]+x[9]*x[86]*x[78]+x[10]*x[87]*x[89]+x[11]*x[88]*x[100])^2+ (x[2]*x[79]+x[3]*x[80]+x[4]*x[81]+x[5]*x[82]+x[6]*x[83]+x[7]*x[84]+x[8]*x[85]+x[9]*x[86]+x[10]*x[87]+x[11]*x[88])^2+ (x[13]*x[79]*x[1]+x[14]*x[80]*x[12]+x[15]*x[81]*x[23]+x[16]*x[82]*x[34]+x[17]*x[83]*x[45]+x[18]*x[84]*x[56]+x[19]*x[85]*x[67]+x[20]*x[86]*x[78]+x[21]*x[87]*x[89]+x[22]*x[88]*x[100])^2+ (x[13]*x[79]+x[14]*x[80]+x[15]*x[81]+x[16]*x[82]+x[17]*x[83]+x[18]*x[84]+x[19]*x[85]+x[20]*x[86]+x[21]*x[87]+x[22]*x[88])^2+ (x[24]*x[79]*x[1]+x[25]*x[80]*x[12]+x[26]*x[81]*x[23]+x[27]*x[82]*x[34]+x[28]*x[83]*x[45]+x[29]*x[84]*x[56]+x[30]*x[85]*x[67]+x[31]*x[86]*x[78]+x[32]*x[87]*x[89]+x[33]*x[88]*x[100])^2+ (x[24]*x[79]+x[25]*x[80]+x[26]*x[81]+x[27]*x[82]+x[28]*x[83]+x[29]*x[84]+x[30]*x[85]+x[31]*x[86]+x[32]*x[87]+x[33]*x[88])^2+ (x[35]*x[79]*x[1]+x[36]*x[80]*x[12]+x[37]*x[81]*x[23]+x[38]*x[82]*x[34]+x[39]*x[83]*x[45]+x[40]*x[84]*x[56]+x[41]*x[85]*x[67]+x[42]*x[86]*x[78]+x[43]*x[87]*x[89]+x[44]*x[88]*x[100])^2+ (x[35]*x[79]+x[36]*x[80]+x[37]*x[81]+x[38]*x[82]+x[39]*x[83]+x[40]*x[84]+x[41]*x[85]+x[42]*x[86]+x[43]*x[87]+x[44]*x[88])^2+ (x[46]*x[79]*x[1]+x[47]*x[80]*x[12]+x[48]*x[81]*x[23]+x[49]*x[82]*x[34]+x[50]*x[83]*x[45]+x[51]*x[84]*x[56]+x[52]*x[85]*x[67]+x[53]*x[86]*x[78]+x[54]*x[87]*x[89]+x[55]*x[88]*x[100])^2+ (x[46]*x[79]+x[47]*x[80]+x[48]*x[81]+x[49]*x[82]+x[50]*x[83]+x[51]*x[84]+x[52]*x[85]+x[53]*x[86]+x[54]*x[87]+x[55]*x[88])^2+ (x[57]*x[79]*x[1]+x[58]*x[80]*x[12]+x[59]*x[81]*x[23]+x[60]*x[82]*x[34]+x[61]*x[83]*x[45]+x[62]*x[84]*x[56]+x[63]*x[85]*x[67]+x[64]*x[86]*x[78]+x[65]*x[87]*x[89]+x[66]*x[88]*x[100])^2+ (x[57]*x[79]+x[58]*x[80]+x[59]*x[81]+x[60]*x[82]+x[61]*x[83]+x[62]*x[84]+x[63]*x[85]+x[64]*x[86]+x[65]*x[87]+x[66]*x[88])^2+ (1+x[68]*x[79]*x[1]+x[69]*x[80]*x[12]+x[70]*x[81]*x[23]+x[71]*x[82]*x[34]+x[72]*x[83]*x[45]+x[73]*x[84]*x[56]+x[74]*x[85]*x[67]+x[75]*x[86]*x[78]+x[76]*x[87]*x[89]+x[77]*x[88]*x[100])^2+ (x[68]*x[79]+x[69]*x[80]+x[70]*x[81]+x[71]*x[82]+x[72]*x[83]+x[73]*x[84]+x[74]*x[85]+x[75]*x[86]+x[76]*x[87]+x[77]*x[88])^2+ ((-2)+x[79]*x[79]*x[1]+x[80]*x[80]*x[12]+x[81]*x[81]*x[23]+x[82]*x[82]*x[34]+x[83]*x[83]*x[45]+x[84]*x[84]*x[56]+x[85]*x[85]*x[67]+x[86]*x[86]*x[78]+x[87]*x[87]*x[89]+x[88]*x[88]*x[100])^2+ ((-1)+x[79]*x[79]+x[80]*x[80]+x[81]*x[81]+x[82]*x[82]+x[83]*x[83]+x[84]*x[84]+x[85]*x[85]+x[86]*x[86]+x[87]*x[87]+x[88]*x[88])^2+ (x[2]*x[90]*x[1]+x[3]*x[91]*x[12]+x[4]*x[92]*x[23]+x[5]*x[93]*x[34]+x[6]*x[94]*x[45]+x[7]*x[95]*x[56]+x[8]*x[96]*x[67]+x[9]*x[97]*x[78]+x[10]*x[98]*x[89]+x[11]*x[99]*x[100])^2+ (x[2]*x[90]+x[3]*x[91]+x[4]*x[92]+x[5]*x[93]+x[6]*x[94]+x[7]*x[95]+x[8]*x[96]+x[9]*x[97]+x[10]*x[98]+x[11]*x[99])^2+ (x[13]*x[90]*x[1]+x[14]*x[91]*x[12]+x[15]*x[92]*x[23]+x[16]*x[93]*x[34]+x[17]*x[94]*x[45]+x[18]*x[95]*x[56]+x[19]*x[96]*x[67]+x[20]*x[97]*x[78]+x[21]*x[98]*x[89]+x[22]*x[99]*x[100])^2+ (x[13]*x[90]+x[14]*x[91]+x[15]*x[92]+x[16]*x[93]+x[17]*x[94]+x[18]*x[95]+x[19]*x[96]+x[20]*x[97]+x[21]*x[98]+x[22]*x[99])^2+ (x[24]*x[90]*x[1]+x[25]*x[91]*x[12]+x[26]*x[92]*x[23]+x[27]*x[93]*x[34]+x[28]*x[94]*x[45]+x[29]*x[95]*x[56]+x[30]*x[96]*x[67]+x[31]*x[97]*x[78]+x[32]*x[98]*x[89]+x[33]*x[99]*x[100])^2+ (x[24]*x[90]+x[25]*x[91]+x[26]*x[92]+x[27]*x[93]+x[28]*x[94]+x[29]*x[95]+x[30]*x[96]+x[31]*x[97]+x[32]*x[98]+x[33]*x[99])^2+ (x[35]*x[90]*x[1]+x[36]*x[91]*x[12]+x[37]*x[92]*x[23]+x[38]*x[93]*x[34]+x[39]*x[94]*x[45]+x[40]*x[95]*x[56]+x[41]*x[96]*x[67]+x[42]*x[97]*x[78]+x[43]*x[98]*x[89]+x[44]*x[99]*x[100])^2+ (x[35]*x[90]+x[36]*x[91]+x[37]*x[92]+x[38]*x[93]+x[39]*x[94]+x[40]*x[95]+x[41]*x[96]+x[42]*x[97]+x[43]*x[98]+x[44]*x[99])^2+ (x[46]*x[90]*x[1]+x[47]*x[91]*x[12]+x[48]*x[92]*x[23]+x[49]*x[93]*x[34]+x[50]*x[94]*x[45]+x[51]*x[95]*x[56]+x[52]*x[96]*x[67]+x[53]*x[97]*x[78]+x[54]*x[98]*x[89]+x[55]*x[99]*x[100])^2+ (x[46]*x[90]+x[47]*x[91]+x[48]*x[92]+x[49]*x[93]+x[50]*x[94]+x[51]*x[95]+x[52]*x[96]+x[53]*x[97]+x[54]*x[98]+x[55]*x[99])^2+ (x[57]*x[90]*x[1]+x[58]*x[91]*x[12]+x[59]*x[92]*x[23]+x[60]*x[93]*x[34]+x[61]*x[94]*x[45]+x[62]*x[95]*x[56]+x[63]*x[96]*x[67]+x[64]*x[97]*x[78]+x[65]*x[98]*x[89]+x[66]*x[99]*x[100])^2+ (x[57]*x[90]+x[58]*x[91]+x[59]*x[92]+x[60]*x[93]+x[61]*x[94]+x[62]*x[95]+x[63]*x[96]+x[64]*x[97]+x[65]*x[98]+x[66]*x[99])^2+ (x[68]*x[90]*x[1]+x[69]*x[91]*x[12]+x[70]*x[92]*x[23]+x[71]*x[93]*x[34]+x[72]*x[94]*x[45]+x[73]*x[95]*x[56]+x[74]*x[96]*x[67]+x[75]*x[97]*x[78]+x[76]*x[98]*x[89]+x[77]*x[99]*x[100])^2+ (x[68]*x[90]+x[69]*x[91]+x[70]*x[92]+x[71]*x[93]+x[72]*x[94]+x[73]*x[95]+x[74]*x[96]+x[75]*x[97]+x[76]*x[98]+x[77]*x[99])^2+ (1+x[79]*x[90]*x[1]+x[80]*x[91]*x[12]+x[81]*x[92]*x[23]+x[82]*x[93]*x[34]+x[83]*x[94]*x[45]+x[84]*x[95]*x[56]+x[85]*x[96]*x[67]+x[86]*x[97]*x[78]+x[87]*x[98]*x[89]+x[88]*x[99]*x[100])^2+ (x[79]*x[90]+x[80]*x[91]+x[81]*x[92]+x[82]*x[93]+x[83]*x[94]+x[84]*x[95]+x[85]*x[96]+x[86]*x[97]+x[87]*x[98]+x[88]*x[99])^2+ ((-2)+x[90]*x[90]*x[1]+x[91]*x[91]*x[12]+x[92]*x[92]*x[23]+x[93]*x[93]*x[34]+x[94]*x[94]*x[45]+x[95]*x[95]*x[56]+x[96]*x[96]*x[67]+x[97]*x[97]*x[78]+x[98]*x[98]*x[89]+x[99]*x[99]*x[100])^2+ ((-1)+x[90]*x[90]+x[91]*x[91]+x[92]*x[92]+x[93]*x[93]+x[94]*x[94]+x[95]*x[95]+x[96]*x[96]+x[97]*x[97]+x[98]*x[98]+x[99]*x[99])^2+ (x[2]*x[101]*x[1]+x[3]*x[102]*x[12]+x[4]*x[103]*x[23]+x[5]*x[104]*x[34]+x[6]*x[105]*x[45]+x[7]*x[106]*x[56]+x[8]*x[107]*x[67]+x[9]*x[108]*x[78]+x[10]*x[109]*x[89]+x[11]*x[110]*x[100])^2+ (x[2]*x[101]+x[3]*x[102]+x[4]*x[103]+x[5]*x[104]+x[6]*x[105]+x[7]*x[106]+x[8]*x[107]+x[9]*x[108]+x[10]*x[109]+x[11]*x[110])^2+ (x[13]*x[101]*x[1]+x[14]*x[102]*x[12]+x[15]*x[103]*x[23]+x[16]*x[104]*x[34]+x[17]*x[105]*x[45]+x[18]*x[106]*x[56]+x[19]*x[107]*x[67]+x[20]*x[108]*x[78]+x[21]*x[109]*x[89]+x[22]*x[110]*x[100])^2+ (x[13]*x[101]+x[14]*x[102]+x[15]*x[103]+x[16]*x[104]+x[17]*x[105]+x[18]*x[106]+x[19]*x[107]+x[20]*x[108]+x[21]*x[109]+x[22]*x[110])^2+ (x[24]*x[101]*x[1]+x[25]*x[102]*x[12]+x[26]*x[103]*x[23]+x[27]*x[104]*x[34]+x[28]*x[105]*x[45]+x[29]*x[106]*x[56]+x[30]*x[107]*x[67]+x[31]*x[108]*x[78]+x[32]*x[109]*x[89]+x[33]*x[110]*x[100])^2+ (x[24]*x[101]+x[25]*x[102]+x[26]*x[103]+x[27]*x[104]+x[28]*x[105]+x[29]*x[106]+x[30]*x[107]+x[31]*x[108]+x[32]*x[109]+x[33]*x[110])^2+ (x[35]*x[101]*x[1]+x[36]*x[102]*x[12]+x[37]*x[103]*x[23]+x[38]*x[104]*x[34]+x[39]*x[105]*x[45]+x[40]*x[106]*x[56]+x[41]*x[107]*x[67]+x[42]*x[108]*x[78]+x[43]*x[109]*x[89]+x[44]*x[110]*x[100])^2+ (x[35]*x[101]+x[36]*x[102]+x[37]*x[103]+x[38]*x[104]+x[39]*x[105]+x[40]*x[106]+x[41]*x[107]+x[42]*x[108]+x[43]*x[109]+x[44]*x[110])^2+ (x[46]*x[101]*x[1]+x[47]*x[102]*x[12]+x[48]*x[103]*x[23]+x[49]*x[104]*x[34]+x[50]*x[105]*x[45]+x[51]*x[106]*x[56]+x[52]*x[107]*x[67]+x[53]*x[108]*x[78]+x[54]*x[109]*x[89]+x[55]*x[110]*x[100])^2+ (x[46]*x[101]+x[47]*x[102]+x[48]*x[103]+x[49]*x[104]+x[50]*x[105]+x[51]*x[106]+x[52]*x[107]+x[53]*x[108]+x[54]*x[109]+x[55]*x[110])^2+ (x[57]*x[101]*x[1]+x[58]*x[102]*x[12]+x[59]*x[103]*x[23]+x[60]*x[104]*x[34]+x[61]*x[105]*x[45]+x[62]*x[106]*x[56]+x[63]*x[107]*x[67]+x[64]*x[108]*x[78]+x[65]*x[109]*x[89]+x[66]*x[110]*x[100])^2+ (x[57]*x[101]+x[58]*x[102]+x[59]*x[103]+x[60]*x[104]+x[61]*x[105]+x[62]*x[106]+x[63]*x[107]+x[64]*x[108]+x[65]*x[109]+x[66]*x[110])^2+ (x[68]*x[101]*x[1]+x[69]*x[102]*x[12]+x[70]*x[103]*x[23]+x[71]*x[104]*x[34]+x[72]*x[105]*x[45]+x[73]*x[106]*x[56]+x[74]*x[107]*x[67]+x[75]*x[108]*x[78]+x[76]*x[109]*x[89]+x[77]*x[110]*x[100])^2+ (x[68]*x[101]+x[69]*x[102]+x[70]*x[103]+x[71]*x[104]+x[72]*x[105]+x[73]*x[106]+x[74]*x[107]+x[75]*x[108]+x[76]*x[109]+x[77]*x[110])^2+ (x[79]*x[101]*x[1]+x[80]*x[102]*x[12]+x[81]*x[103]*x[23]+x[82]*x[104]*x[34]+x[83]*x[105]*x[45]+x[84]*x[106]*x[56]+x[85]*x[107]*x[67]+x[86]*x[108]*x[78]+x[87]*x[109]*x[89]+x[88]*x[110]*x[100])^2+ (x[79]*x[101]+x[80]*x[102]+x[81]*x[103]+x[82]*x[104]+x[83]*x[105]+x[84]*x[106]+x[85]*x[107]+x[86]*x[108]+x[87]*x[109]+x[88]*x[110])^2+ (1+x[90]*x[101]*x[1]+x[91]*x[102]*x[12]+x[92]*x[103]*x[23]+x[93]*x[104]*x[34]+x[94]*x[105]*x[45]+x[95]*x[106]*x[56]+x[96]*x[107]*x[67]+x[97]*x[108]*x[78]+x[98]*x[109]*x[89]+x[99]*x[110]*x[100])^2+ (x[90]*x[101]+x[91]*x[102]+x[92]*x[103]+x[93]*x[104]+x[94]*x[105]+x[95]*x[106]+x[96]*x[107]+x[97]*x[108]+x[98]*x[109]+x[99]*x[110])^2+ ((-2)+x[101]*x[101]*x[1]+x[102]*x[102]*x[12]+x[103]*x[103]*x[23]+x[104]*x[104]*x[34]+x[105]*x[105]*x[45]+x[106]*x[106]*x[56]+x[107]*x[107]*x[67]+x[108]*x[108]*x[78]+x[109]*x[109]*x[89]+x[110]*x[110]*x[100])^2+ ((-1)+x[101]*x[101]+x[102]*x[102]+x[103]*x[103]+x[104]*x[104]+x[105]*x[105]+x[106]*x[106]+x[107]*x[107]+x[108]*x[108]+x[109]*x[109]+x[110]*x[110])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
