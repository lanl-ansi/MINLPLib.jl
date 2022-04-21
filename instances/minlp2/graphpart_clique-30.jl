using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
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
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@NLconstraint(m, e31, b[1]*b[4]+2*b[1]*b[7]+3*b[1]*b[10]+4*b[1]*b[13]+5*b[1]*b[16]+6*b[1]*b[19]+7*b[1]*b[22]+8*b[1]*b[25]+9*b[1]*b[28]+10*b[1]*b[31]+11*b[1]*b[34]+12*b[1]*b[37]+13*b[1]*b[40]+14*b[1]*b[43]+15*b[1]*b[46]+16*b[1]*b[49]+17*b[1]*b[52]+18*b[1]*b[55]+19*b[1]*b[58]+20*b[1]*b[61]+21*b[1]*b[64]+22*b[1]*b[67]+23*b[1]*b[70]+24*b[1]*b[73]+25*b[1]*b[76]+26*b[1]*b[79]+27*b[1]*b[82]+28*b[1]*b[85]+29*b[1]*b[88]+b[2]*b[5]+2*b[2]*b[8]+3*b[2]*b[11]+4*b[2]*b[14]+5*b[2]*b[17]+6*b[2]*b[20]+7*b[2]*b[23]+8*b[2]*b[26]+9*b[2]*b[29]+10*b[2]*b[32]+11*b[2]*b[35]+12*b[2]*b[38]+13*b[2]*b[41]+14*b[2]*b[44]+15*b[2]*b[47]+16*b[2]*b[50]+17*b[2]*b[53]+18*b[2]*b[56]+19*b[2]*b[59]+20*b[2]*b[62]+21*b[2]*b[65]+22*b[2]*b[68]+23*b[2]*b[71]+24*b[2]*b[74]+25*b[2]*b[77]+26*b[2]*b[80]+27*b[2]*b[83]+28*b[2]*b[86]+29*b[2]*b[89]+b[3]*b[6]+2*b[3]*b[9]+3*b[3]*b[12]+4*b[3]*b[15]+5*b[3]*b[18]+6*b[3]*b[21]+7*b[3]*b[24]+8*b[3]*b[27]+9*b[3]*b[30]+10*b[3]*b[33]+11*b[3]*b[36]+12*b[3]*b[39]+13*b[3]*b[42]+14*b[3]*b[45]+15*b[3]*b[48]+16*b[3]*b[51]+17*b[3]*b[54]+18*b[3]*b[57]+19*b[3]*b[60]+20*b[3]*b[63]+21*b[3]*b[66]+22*b[3]*b[69]+23*b[3]*b[72]+24*b[3]*b[75]+25*b[3]*b[78]+26*b[3]*b[81]+27*b[3]*b[84]+28*b[3]*b[87]+29*b[3]*b[90]+b[4]*b[7]+2*b[4]*b[10]+3*b[4]*b[13]+4*b[4]*b[16]+5*b[4]*b[19]+6*b[4]*b[22]+7*b[4]*b[25]+8*b[4]*b[28]+9*b[4]*b[31]+10*b[4]*b[34]+11*b[4]*b[37]+12*b[4]*b[40]+13*b[4]*b[43]+14*b[4]*b[46]+15*b[4]*b[49]+16*b[4]*b[52]+17*b[4]*b[55]+18*b[4]*b[58]+19*b[4]*b[61]+20*b[4]*b[64]+21*b[4]*b[67]+22*b[4]*b[70]+23*b[4]*b[73]+24*b[4]*b[76]+25*b[4]*b[79]+26*b[4]*b[82]+27*b[4]*b[85]+28*b[4]*b[88]+b[5]*b[8]+2*b[5]*b[11]+3*b[5]*b[14]+4*b[5]*b[17]+5*b[5]*b[20]+6*b[5]*b[23]+7*b[5]*b[26]+8*b[5]*b[29]+9*b[5]*b[32]+10*b[5]*b[35]+11*b[5]*b[38]+12*b[5]*b[41]+13*b[5]*b[44]+14*b[5]*b[47]+15*b[5]*b[50]+16*b[5]*b[53]+17*b[5]*b[56]+18*b[5]*b[59]+19*b[5]*b[62]+20*b[5]*b[65]+21*b[5]*b[68]+22*b[5]*b[71]+23*b[5]*b[74]+24*b[5]*b[77]+25*b[5]*b[80]+26*b[5]*b[83]+27*b[5]*b[86]+28*b[5]*b[89]+b[6]*b[9]+2*b[6]*b[12]+3*b[6]*b[15]+4*b[6]*b[18]+5*b[6]*b[21]+6*b[6]*b[24]+7*b[6]*b[27]+8*b[6]*b[30]+9*b[6]*b[33]+10*b[6]*b[36]+11*b[6]*b[39]+12*b[6]*b[42]+13*b[6]*b[45]+14*b[6]*b[48]+15*b[6]*b[51]+16*b[6]*b[54]+17*b[6]*b[57]+18*b[6]*b[60]+19*b[6]*b[63]+20*b[6]*b[66]+21*b[6]*b[69]+22*b[6]*b[72]+23*b[6]*b[75]+24*b[6]*b[78]+25*b[6]*b[81]+26*b[6]*b[84]+27*b[6]*b[87]+28*b[6]*b[90]+b[7]*b[10]+2*b[7]*b[13]+3*b[7]*b[16]+4*b[7]*b[19]+5*b[7]*b[22]+6*b[7]*b[25]+7*b[7]*b[28]+8*b[7]*b[31]+9*b[7]*b[34]+10*b[7]*b[37]+11*b[7]*b[40]+12*b[7]*b[43]+13*b[7]*b[46]+14*b[7]*b[49]+15*b[7]*b[52]+16*b[7]*b[55]+17*b[7]*b[58]+18*b[7]*b[61]+19*b[7]*b[64]+20*b[7]*b[67]+21*b[7]*b[70]+22*b[7]*b[73]+23*b[7]*b[76]+24*b[7]*b[79]+25*b[7]*b[82]+26*b[7]*b[85]+27*b[7]*b[88]+b[8]*b[11]+2*b[8]*b[14]+3*b[8]*b[17]+4*b[8]*b[20]+5*b[8]*b[23]+6*b[8]*b[26]+7*b[8]*b[29]+8*b[8]*b[32]+9*b[8]*b[35]+10*b[8]*b[38]+11*b[8]*b[41]+12*b[8]*b[44]+13*b[8]*b[47]+14*b[8]*b[50]+15*b[8]*b[53]+16*b[8]*b[56]+17*b[8]*b[59]+18*b[8]*b[62]+19*b[8]*b[65]+20*b[8]*b[68]+21*b[8]*b[71]+22*b[8]*b[74]+23*b[8]*b[77]+24*b[8]*b[80]+25*b[8]*b[83]+26*b[8]*b[86]+27*b[8]*b[89]+b[9]*b[12]+2*b[9]*b[15]+3*b[9]*b[18]+4*b[9]*b[21]+5*b[9]*b[24]+6*b[9]*b[27]+7*b[9]*b[30]+8*b[9]*b[33]+9*b[9]*b[36]+10*b[9]*b[39]+11*b[9]*b[42]+12*b[9]*b[45]+13*b[9]*b[48]+14*b[9]*b[51]+15*b[9]*b[54]+16*b[9]*b[57]+17*b[9]*b[60]+18*b[9]*b[63]+19*b[9]*b[66]+20*b[9]*b[69]+21*b[9]*b[72]+22*b[9]*b[75]+23*b[9]*b[78]+24*b[9]*b[81]+25*b[9]*b[84]+26*b[9]*b[87]+27*b[9]*b[90]+b[10]*b[13]+2*b[10]*b[16]+3*b[10]*b[19]+4*b[10]*b[22]+5*b[10]*b[25]+6*b[10]*b[28]+7*b[10]*b[31]+8*b[10]*b[34]+9*b[10]*b[37]+10*b[10]*b[40]+11*b[10]*b[43]+12*b[10]*b[46]+13*b[10]*b[49]+14*b[10]*b[52]+15*b[10]*b[55]+16*b[10]*b[58]+17*b[10]*b[61]+18*b[10]*b[64]+19*b[10]*b[67]+20*b[10]*b[70]+21*b[10]*b[73]+22*b[10]*b[76]+23*b[10]*b[79]+24*b[10]*b[82]+25*b[10]*b[85]+26*b[10]*b[88]+b[11]*b[14]+2*b[11]*b[17]+3*b[11]*b[20]+4*b[11]*b[23]+5*b[11]*b[26]+6*b[11]*b[29]+7*b[11]*b[32]+8*b[11]*b[35]+9*b[11]*b[38]+10*b[11]*b[41]+11*b[11]*b[44]+12*b[11]*b[47]+13*b[11]*b[50]+14*b[11]*b[53]+15*b[11]*b[56]+16*b[11]*b[59]+17*b[11]*b[62]+18*b[11]*b[65]+19*b[11]*b[68]+20*b[11]*b[71]+21*b[11]*b[74]+22*b[11]*b[77]+23*b[11]*b[80]+24*b[11]*b[83]+25*b[11]*b[86]+26*b[11]*b[89]+b[12]*b[15]+2*b[12]*b[18]+3*b[12]*b[21]+4*b[12]*b[24]+5*b[12]*b[27]+6*b[12]*b[30]+7*b[12]*b[33]+8*b[12]*b[36]+9*b[12]*b[39]+10*b[12]*b[42]+11*b[12]*b[45]+12*b[12]*b[48]+13*b[12]*b[51]+14*b[12]*b[54]+15*b[12]*b[57]+16*b[12]*b[60]+17*b[12]*b[63]+18*b[12]*b[66]+19*b[12]*b[69]+20*b[12]*b[72]+21*b[12]*b[75]+22*b[12]*b[78]+23*b[12]*b[81]+24*b[12]*b[84]+25*b[12]*b[87]+26*b[12]*b[90]+b[13]*b[16]+2*b[13]*b[19]+3*b[13]*b[22]+4*b[13]*b[25]+5*b[13]*b[28]+6*b[13]*b[31]+7*b[13]*b[34]+8*b[13]*b[37]+9*b[13]*b[40]+10*b[13]*b[43]+11*b[13]*b[46]+12*b[13]*b[49]+13*b[13]*b[52]+14*b[13]*b[55]+15*b[13]*b[58]+16*b[13]*b[61]+17*b[13]*b[64]+18*b[13]*b[67]+19*b[13]*b[70]+20*b[13]*b[73]+21*b[13]*b[76]+22*b[13]*b[79]+23*b[13]*b[82]+24*b[13]*b[85]+25*b[13]*b[88]+b[14]*b[17]+2*b[14]*b[20]+3*b[14]*b[23]+4*b[14]*b[26]+5*b[14]*b[29]+6*b[14]*b[32]+7*b[14]*b[35]+8*b[14]*b[38]+9*b[14]*b[41]+10*b[14]*b[44]+11*b[14]*b[47]+12*b[14]*b[50]+13*b[14]*b[53]+14*b[14]*b[56]+15*b[14]*b[59]+16*b[14]*b[62]+17*b[14]*b[65]+18*b[14]*b[68]+19*b[14]*b[71]+20*b[14]*b[74]+21*b[14]*b[77]+22*b[14]*b[80]+23*b[14]*b[83]+24*b[14]*b[86]+25*b[14]*b[89]+b[15]*b[18]+2*b[15]*b[21]+3*b[15]*b[24]+4*b[15]*b[27]+5*b[15]*b[30]+6*b[15]*b[33]+7*b[15]*b[36]+8*b[15]*b[39]+9*b[15]*b[42]+10*b[15]*b[45]+11*b[15]*b[48]+12*b[15]*b[51]+13*b[15]*b[54]+14*b[15]*b[57]+15*b[15]*b[60]+16*b[15]*b[63]+17*b[15]*b[66]+18*b[15]*b[69]+19*b[15]*b[72]+20*b[15]*b[75]+21*b[15]*b[78]+22*b[15]*b[81]+23*b[15]*b[84]+24*b[15]*b[87]+25*b[15]*b[90]+b[16]*b[19]+2*b[16]*b[22]+3*b[16]*b[25]+4*b[16]*b[28]+5*b[16]*b[31]+6*b[16]*b[34]+7*b[16]*b[37]+8*b[16]*b[40]+9*b[16]*b[43]+10*b[16]*b[46]+11*b[16]*b[49]+12*b[16]*b[52]+13*b[16]*b[55]+14*b[16]*b[58]+15*b[16]*b[61]+16*b[16]*b[64]+17*b[16]*b[67]+18*b[16]*b[70]+19*b[16]*b[73]+20*b[16]*b[76]+21*b[16]*b[79]+22*b[16]*b[82]+23*b[16]*b[85]+24*b[16]*b[88]+b[17]*b[20]+2*b[17]*b[23]+3*b[17]*b[26]+4*b[17]*b[29]+5*b[17]*b[32]+6*b[17]*b[35]+7*b[17]*b[38]+8*b[17]*b[41]+9*b[17]*b[44]+10*b[17]*b[47]+11*b[17]*b[50]+12*b[17]*b[53]+13*b[17]*b[56]+14*b[17]*b[59]+15*b[17]*b[62]+16*b[17]*b[65]+17*b[17]*b[68]+18*b[17]*b[71]+19*b[17]*b[74]+20*b[17]*b[77]+21*b[17]*b[80]+22*b[17]*b[83]+23*b[17]*b[86]+24*b[17]*b[89]+b[18]*b[21]+2*b[18]*b[24]+3*b[18]*b[27]+4*b[18]*b[30]+5*b[18]*b[33]+6*b[18]*b[36]+7*b[18]*b[39]+8*b[18]*b[42]+9*b[18]*b[45]+10*b[18]*b[48]+11*b[18]*b[51]+12*b[18]*b[54]+13*b[18]*b[57]+14*b[18]*b[60]+15*b[18]*b[63]+16*b[18]*b[66]+17*b[18]*b[69]+18*b[18]*b[72]+19*b[18]*b[75]+20*b[18]*b[78]+21*b[18]*b[81]+22*b[18]*b[84]+23*b[18]*b[87]+24*b[18]*b[90]+b[19]*b[22]+2*b[19]*b[25]+3*b[19]*b[28]+4*b[19]*b[31]+5*b[19]*b[34]+6*b[19]*b[37]+7*b[19]*b[40]+8*b[19]*b[43]+9*b[19]*b[46]+10*b[19]*b[49]+11*b[19]*b[52]+12*b[19]*b[55]+13*b[19]*b[58]+14*b[19]*b[61]+15*b[19]*b[64]+16*b[19]*b[67]+17*b[19]*b[70]+18*b[19]*b[73]+19*b[19]*b[76]+20*b[19]*b[79]+21*b[19]*b[82]+22*b[19]*b[85]+23*b[19]*b[88]+b[20]*b[23]+2*b[20]*b[26]+3*b[20]*b[29]+4*b[20]*b[32]+5*b[20]*b[35]+6*b[20]*b[38]+7*b[20]*b[41]+8*b[20]*b[44]+9*b[20]*b[47]+10*b[20]*b[50]+11*b[20]*b[53]+12*b[20]*b[56]+13*b[20]*b[59]+14*b[20]*b[62]+15*b[20]*b[65]+16*b[20]*b[68]+17*b[20]*b[71]+18*b[20]*b[74]+19*b[20]*b[77]+20*b[20]*b[80]+21*b[20]*b[83]+22*b[20]*b[86]+23*b[20]*b[89]+b[21]*b[24]+2*b[21]*b[27]+3*b[21]*b[30]+4*b[21]*b[33]+5*b[21]*b[36]+6*b[21]*b[39]+7*b[21]*b[42]+8*b[21]*b[45]+9*b[21]*b[48]+10*b[21]*b[51]+11*b[21]*b[54]+12*b[21]*b[57]+13*b[21]*b[60]+14*b[21]*b[63]+15*b[21]*b[66]+16*b[21]*b[69]+17*b[21]*b[72]+18*b[21]*b[75]+19*b[21]*b[78]+20*b[21]*b[81]+21*b[21]*b[84]+22*b[21]*b[87]+23*b[21]*b[90]+b[22]*b[25]+2*b[22]*b[28]+3*b[22]*b[31]+4*b[22]*b[34]+5*b[22]*b[37]+6*b[22]*b[40]+7*b[22]*b[43]+8*b[22]*b[46]+9*b[22]*b[49]+10*b[22]*b[52]+11*b[22]*b[55]+12*b[22]*b[58]+13*b[22]*b[61]+14*b[22]*b[64]+15*b[22]*b[67]+16*b[22]*b[70]+17*b[22]*b[73]+18*b[22]*b[76]+19*b[22]*b[79]+20*b[22]*b[82]+21*b[22]*b[85]+22*b[22]*b[88]+b[23]*b[26]+2*b[23]*b[29]+3*b[23]*b[32]+4*b[23]*b[35]+5*b[23]*b[38]+6*b[23]*b[41]+7*b[23]*b[44]+8*b[23]*b[47]+9*b[23]*b[50]+10*b[23]*b[53]+11*b[23]*b[56]+12*b[23]*b[59]+13*b[23]*b[62]+14*b[23]*b[65]+15*b[23]*b[68]+16*b[23]*b[71]+17*b[23]*b[74]+18*b[23]*b[77]+19*b[23]*b[80]+20*b[23]*b[83]+21*b[23]*b[86]+22*b[23]*b[89]+b[24]*b[27]+2*b[24]*b[30]+3*b[24]*b[33]+4*b[24]*b[36]+5*b[24]*b[39]+6*b[24]*b[42]+7*b[24]*b[45]+8*b[24]*b[48]+9*b[24]*b[51]+10*b[24]*b[54]+11*b[24]*b[57]+12*b[24]*b[60]+13*b[24]*b[63]+14*b[24]*b[66]+15*b[24]*b[69]+16*b[24]*b[72]+17*b[24]*b[75]+18*b[24]*b[78]+19*b[24]*b[81]+20*b[24]*b[84]+21*b[24]*b[87]+22*b[24]*b[90]+b[25]*b[28]+2*b[25]*b[31]+3*b[25]*b[34]+4*b[25]*b[37]+5*b[25]*b[40]+6*b[25]*b[43]+7*b[25]*b[46]+8*b[25]*b[49]+9*b[25]*b[52]+10*b[25]*b[55]+11*b[25]*b[58]+12*b[25]*b[61]+13*b[25]*b[64]+14*b[25]*b[67]+15*b[25]*b[70]+16*b[25]*b[73]+17*b[25]*b[76]+18*b[25]*b[79]+19*b[25]*b[82]+20*b[25]*b[85]+21*b[25]*b[88]+b[26]*b[29]+2*b[26]*b[32]+3*b[26]*b[35]+4*b[26]*b[38]+5*b[26]*b[41]+6*b[26]*b[44]+7*b[26]*b[47]+8*b[26]*b[50]+9*b[26]*b[53]+10*b[26]*b[56]+11*b[26]*b[59]+12*b[26]*b[62]+13*b[26]*b[65]+14*b[26]*b[68]+15*b[26]*b[71]+16*b[26]*b[74]+17*b[26]*b[77]+18*b[26]*b[80]+19*b[26]*b[83]+20*b[26]*b[86]+21*b[26]*b[89]+b[27]*b[30]+2*b[27]*b[33]+3*b[27]*b[36]+4*b[27]*b[39]+5*b[27]*b[42]+6*b[27]*b[45]+7*b[27]*b[48]+8*b[27]*b[51]+9*b[27]*b[54]+10*b[27]*b[57]+11*b[27]*b[60]+12*b[27]*b[63]+13*b[27]*b[66]+14*b[27]*b[69]+15*b[27]*b[72]+16*b[27]*b[75]+17*b[27]*b[78]+18*b[27]*b[81]+19*b[27]*b[84]+20*b[27]*b[87]+21*b[27]*b[90]+b[28]*b[31]+2*b[28]*b[34]+3*b[28]*b[37]+4*b[28]*b[40]+5*b[28]*b[43]+6*b[28]*b[46]+7*b[28]*b[49]+8*b[28]*b[52]+9*b[28]*b[55]+10*b[28]*b[58]+11*b[28]*b[61]+12*b[28]*b[64]+13*b[28]*b[67]+14*b[28]*b[70]+15*b[28]*b[73]+16*b[28]*b[76]+17*b[28]*b[79]+18*b[28]*b[82]+19*b[28]*b[85]+20*b[28]*b[88]+b[29]*b[32]+2*b[29]*b[35]+3*b[29]*b[38]+4*b[29]*b[41]+5*b[29]*b[44]+6*b[29]*b[47]+7*b[29]*b[50]+8*b[29]*b[53]+9*b[29]*b[56]+10*b[29]*b[59]+11*b[29]*b[62]+12*b[29]*b[65]+13*b[29]*b[68]+14*b[29]*b[71]+15*b[29]*b[74]+16*b[29]*b[77]+17*b[29]*b[80]+18*b[29]*b[83]+19*b[29]*b[86]+20*b[29]*b[89]+b[30]*b[33]+2*b[30]*b[36]+3*b[30]*b[39]+4*b[30]*b[42]+5*b[30]*b[45]+6*b[30]*b[48]+7*b[30]*b[51]+8*b[30]*b[54]+9*b[30]*b[57]+10*b[30]*b[60]+11*b[30]*b[63]+12*b[30]*b[66]+13*b[30]*b[69]+14*b[30]*b[72]+15*b[30]*b[75]+16*b[30]*b[78]+17*b[30]*b[81]+18*b[30]*b[84]+19*b[30]*b[87]+20*b[30]*b[90]+b[31]*b[34]+2*b[31]*b[37]+3*b[31]*b[40]+4*b[31]*b[43]+5*b[31]*b[46]+6*b[31]*b[49]+7*b[31]*b[52]+8*b[31]*b[55]+9*b[31]*b[58]+10*b[31]*b[61]+11*b[31]*b[64]+12*b[31]*b[67]+13*b[31]*b[70]+14*b[31]*b[73]+15*b[31]*b[76]+16*b[31]*b[79]+17*b[31]*b[82]+18*b[31]*b[85]+19*b[31]*b[88]+b[32]*b[35]+2*b[32]*b[38]+3*b[32]*b[41]+4*b[32]*b[44]+5*b[32]*b[47]+6*b[32]*b[50]+7*b[32]*b[53]+8*b[32]*b[56]+9*b[32]*b[59]+10*b[32]*b[62]+11*b[32]*b[65]+12*b[32]*b[68]+13*b[32]*b[71]+14*b[32]*b[74]+15*b[32]*b[77]+16*b[32]*b[80]+17*b[32]*b[83]+18*b[32]*b[86]+19*b[32]*b[89]+b[33]*b[36]+2*b[33]*b[39]+3*b[33]*b[42]+4*b[33]*b[45]+5*b[33]*b[48]+6*b[33]*b[51]+7*b[33]*b[54]+8*b[33]*b[57]+9*b[33]*b[60]+10*b[33]*b[63]+11*b[33]*b[66]+12*b[33]*b[69]+13*b[33]*b[72]+14*b[33]*b[75]+15*b[33]*b[78]+16*b[33]*b[81]+17*b[33]*b[84]+18*b[33]*b[87]+19*b[33]*b[90]+b[34]*b[37]+2*b[34]*b[40]+3*b[34]*b[43]+4*b[34]*b[46]+5*b[34]*b[49]+6*b[34]*b[52]+7*b[34]*b[55]+8*b[34]*b[58]+9*b[34]*b[61]+10*b[34]*b[64]+11*b[34]*b[67]+12*b[34]*b[70]+13*b[34]*b[73]+14*b[34]*b[76]+15*b[34]*b[79]+16*b[34]*b[82]+17*b[34]*b[85]+18*b[34]*b[88]+b[35]*b[38]+2*b[35]*b[41]+3*b[35]*b[44]+4*b[35]*b[47]+5*b[35]*b[50]+6*b[35]*b[53]+7*b[35]*b[56]+8*b[35]*b[59]+9*b[35]*b[62]+10*b[35]*b[65]+11*b[35]*b[68]+12*b[35]*b[71]+13*b[35]*b[74]+14*b[35]*b[77]+15*b[35]*b[80]+16*b[35]*b[83]+17*b[35]*b[86]+18*b[35]*b[89]+b[36]*b[39]+2*b[36]*b[42]+3*b[36]*b[45]+4*b[36]*b[48]+5*b[36]*b[51]+6*b[36]*b[54]+7*b[36]*b[57]+8*b[36]*b[60]+9*b[36]*b[63]+10*b[36]*b[66]+11*b[36]*b[69]+12*b[36]*b[72]+13*b[36]*b[75]+14*b[36]*b[78]+15*b[36]*b[81]+16*b[36]*b[84]+17*b[36]*b[87]+18*b[36]*b[90]+b[37]*b[40]+2*b[37]*b[43]+3*b[37]*b[46]+4*b[37]*b[49]+5*b[37]*b[52]+6*b[37]*b[55]+7*b[37]*b[58]+8*b[37]*b[61]+9*b[37]*b[64]+10*b[37]*b[67]+11*b[37]*b[70]+12*b[37]*b[73]+13*b[37]*b[76]+14*b[37]*b[79]+15*b[37]*b[82]+16*b[37]*b[85]+17*b[37]*b[88]+b[38]*b[41]+2*b[38]*b[44]+3*b[38]*b[47]+4*b[38]*b[50]+5*b[38]*b[53]+6*b[38]*b[56]+7*b[38]*b[59]+8*b[38]*b[62]+9*b[38]*b[65]+10*b[38]*b[68]+11*b[38]*b[71]+12*b[38]*b[74]+13*b[38]*b[77]+14*b[38]*b[80]+15*b[38]*b[83]+16*b[38]*b[86]+17*b[38]*b[89]+b[39]*b[42]+2*b[39]*b[45]+3*b[39]*b[48]+4*b[39]*b[51]+5*b[39]*b[54]+6*b[39]*b[57]+7*b[39]*b[60]+8*b[39]*b[63]+9*b[39]*b[66]+10*b[39]*b[69]+11*b[39]*b[72]+12*b[39]*b[75]+13*b[39]*b[78]+14*b[39]*b[81]+15*b[39]*b[84]+16*b[39]*b[87]+17*b[39]*b[90]+b[40]*b[43]+2*b[40]*b[46]+3*b[40]*b[49]+4*b[40]*b[52]+5*b[40]*b[55]+6*b[40]*b[58]+7*b[40]*b[61]+8*b[40]*b[64]+9*b[40]*b[67]+10*b[40]*b[70]+11*b[40]*b[73]+12*b[40]*b[76]+13*b[40]*b[79]+14*b[40]*b[82]+15*b[40]*b[85]+16*b[40]*b[88]+b[41]*b[44]+2*b[41]*b[47]+3*b[41]*b[50]+4*b[41]*b[53]+5*b[41]*b[56]+6*b[41]*b[59]+7*b[41]*b[62]+8*b[41]*b[65]+9*b[41]*b[68]+10*b[41]*b[71]+11*b[41]*b[74]+12*b[41]*b[77]+13*b[41]*b[80]+14*b[41]*b[83]+15*b[41]*b[86]+16*b[41]*b[89]+b[42]*b[45]+2*b[42]*b[48]+3*b[42]*b[51]+4*b[42]*b[54]+5*b[42]*b[57]+6*b[42]*b[60]+7*b[42]*b[63]+8*b[42]*b[66]+9*b[42]*b[69]+10*b[42]*b[72]+11*b[42]*b[75]+12*b[42]*b[78]+13*b[42]*b[81]+14*b[42]*b[84]+15*b[42]*b[87]+16*b[42]*b[90]+b[43]*b[46]+2*b[43]*b[49]+3*b[43]*b[52]+4*b[43]*b[55]+5*b[43]*b[58]+6*b[43]*b[61]+7*b[43]*b[64]+8*b[43]*b[67]+9*b[43]*b[70]+10*b[43]*b[73]+11*b[43]*b[76]+12*b[43]*b[79]+13*b[43]*b[82]+14*b[43]*b[85]+15*b[43]*b[88]+b[44]*b[47]+2*b[44]*b[50]+3*b[44]*b[53]+4*b[44]*b[56]+5*b[44]*b[59]+6*b[44]*b[62]+7*b[44]*b[65]+8*b[44]*b[68]+9*b[44]*b[71]+10*b[44]*b[74]+11*b[44]*b[77]+12*b[44]*b[80]+13*b[44]*b[83]+14*b[44]*b[86]+15*b[44]*b[89]+b[45]*b[48]+2*b[45]*b[51]+3*b[45]*b[54]+4*b[45]*b[57]+5*b[45]*b[60]+6*b[45]*b[63]+7*b[45]*b[66]+8*b[45]*b[69]+9*b[45]*b[72]+10*b[45]*b[75]+11*b[45]*b[78]+12*b[45]*b[81]+13*b[45]*b[84]+14*b[45]*b[87]+15*b[45]*b[90]+b[46]*b[49]+2*b[46]*b[52]+3*b[46]*b[55]+4*b[46]*b[58]+5*b[46]*b[61]+6*b[46]*b[64]+7*b[46]*b[67]+8*b[46]*b[70]+9*b[46]*b[73]+10*b[46]*b[76]+11*b[46]*b[79]+12*b[46]*b[82]+13*b[46]*b[85]+14*b[46]*b[88]+b[47]*b[50]+2*b[47]*b[53]+3*b[47]*b[56]+4*b[47]*b[59]+5*b[47]*b[62]+6*b[47]*b[65]+7*b[47]*b[68]+8*b[47]*b[71]+9*b[47]*b[74]+10*b[47]*b[77]+11*b[47]*b[80]+12*b[47]*b[83]+13*b[47]*b[86]+14*b[47]*b[89]+b[48]*b[51]+2*b[48]*b[54]+3*b[48]*b[57]+4*b[48]*b[60]+5*b[48]*b[63]+6*b[48]*b[66]+7*b[48]*b[69]+8*b[48]*b[72]+9*b[48]*b[75]+10*b[48]*b[78]+11*b[48]*b[81]+12*b[48]*b[84]+13*b[48]*b[87]+14*b[48]*b[90]+b[49]*b[52]+2*b[49]*b[55]+3*b[49]*b[58]+4*b[49]*b[61]+5*b[49]*b[64]+6*b[49]*b[67]+7*b[49]*b[70]+8*b[49]*b[73]+9*b[49]*b[76]+10*b[49]*b[79]+11*b[49]*b[82]+12*b[49]*b[85]+13*b[49]*b[88]+b[50]*b[53]+2*b[50]*b[56]+3*b[50]*b[59]+4*b[50]*b[62]+5*b[50]*b[65]+6*b[50]*b[68]+7*b[50]*b[71]+8*b[50]*b[74]+9*b[50]*b[77]+10*b[50]*b[80]+11*b[50]*b[83]+12*b[50]*b[86]+13*b[50]*b[89]+b[51]*b[54]+2*b[51]*b[57]+3*b[51]*b[60]+4*b[51]*b[63]+5*b[51]*b[66]+6*b[51]*b[69]+7*b[51]*b[72]+8*b[51]*b[75]+9*b[51]*b[78]+10*b[51]*b[81]+11*b[51]*b[84]+12*b[51]*b[87]+13*b[51]*b[90]+b[52]*b[55]+2*b[52]*b[58]+3*b[52]*b[61]+4*b[52]*b[64]+5*b[52]*b[67]+6*b[52]*b[70]+7*b[52]*b[73]+8*b[52]*b[76]+9*b[52]*b[79]+10*b[52]*b[82]+11*b[52]*b[85]+12*b[52]*b[88]+b[53]*b[56]+2*b[53]*b[59]+3*b[53]*b[62]+4*b[53]*b[65]+5*b[53]*b[68]+6*b[53]*b[71]+7*b[53]*b[74]+8*b[53]*b[77]+9*b[53]*b[80]+10*b[53]*b[83]+11*b[53]*b[86]+12*b[53]*b[89]+b[54]*b[57]+2*b[54]*b[60]+3*b[54]*b[63]+4*b[54]*b[66]+5*b[54]*b[69]+6*b[54]*b[72]+7*b[54]*b[75]+8*b[54]*b[78]+9*b[54]*b[81]+10*b[54]*b[84]+11*b[54]*b[87]+12*b[54]*b[90]+b[55]*b[58]+2*b[55]*b[61]+3*b[55]*b[64]+4*b[55]*b[67]+5*b[55]*b[70]+6*b[55]*b[73]+7*b[55]*b[76]+8*b[55]*b[79]+9*b[55]*b[82]+10*b[55]*b[85]+11*b[55]*b[88]+b[56]*b[59]+2*b[56]*b[62]+3*b[56]*b[65]+4*b[56]*b[68]+5*b[56]*b[71]+6*b[56]*b[74]+7*b[56]*b[77]+8*b[56]*b[80]+9*b[56]*b[83]+10*b[56]*b[86]+11*b[56]*b[89]+b[57]*b[60]+2*b[57]*b[63]+3*b[57]*b[66]+4*b[57]*b[69]+5*b[57]*b[72]+6*b[57]*b[75]+7*b[57]*b[78]+8*b[57]*b[81]+9*b[57]*b[84]+10*b[57]*b[87]+11*b[57]*b[90]+b[58]*b[61]+2*b[58]*b[64]+3*b[58]*b[67]+4*b[58]*b[70]+5*b[58]*b[73]+6*b[58]*b[76]+7*b[58]*b[79]+8*b[58]*b[82]+9*b[58]*b[85]+10*b[58]*b[88]+b[59]*b[62]+2*b[59]*b[65]+3*b[59]*b[68]+4*b[59]*b[71]+5*b[59]*b[74]+6*b[59]*b[77]+7*b[59]*b[80]+8*b[59]*b[83]+9*b[59]*b[86]+10*b[59]*b[89]+b[60]*b[63]+2*b[60]*b[66]+3*b[60]*b[69]+4*b[60]*b[72]+5*b[60]*b[75]+6*b[60]*b[78]+7*b[60]*b[81]+8*b[60]*b[84]+9*b[60]*b[87]+10*b[60]*b[90]+b[61]*b[64]+2*b[61]*b[67]+3*b[61]*b[70]+4*b[61]*b[73]+5*b[61]*b[76]+6*b[61]*b[79]+7*b[61]*b[82]+8*b[61]*b[85]+9*b[61]*b[88]+b[62]*b[65]+2*b[62]*b[68]+3*b[62]*b[71]+4*b[62]*b[74]+5*b[62]*b[77]+6*b[62]*b[80]+7*b[62]*b[83]+8*b[62]*b[86]+9*b[62]*b[89]+b[63]*b[66]+2*b[63]*b[69]+3*b[63]*b[72]+4*b[63]*b[75]+5*b[63]*b[78]+6*b[63]*b[81]+7*b[63]*b[84]+8*b[63]*b[87]+9*b[63]*b[90]+b[64]*b[67]+2*b[64]*b[70]+3*b[64]*b[73]+4*b[64]*b[76]+5*b[64]*b[79]+6*b[64]*b[82]+7*b[64]*b[85]+8*b[64]*b[88]+b[65]*b[68]+2*b[65]*b[71]+3*b[65]*b[74]+4*b[65]*b[77]+5*b[65]*b[80]+6*b[65]*b[83]+7*b[65]*b[86]+8*b[65]*b[89]+b[66]*b[69]+2*b[66]*b[72]+3*b[66]*b[75]+4*b[66]*b[78]+5*b[66]*b[81]+6*b[66]*b[84]+7*b[66]*b[87]+8*b[66]*b[90]+b[67]*b[70]+2*b[67]*b[73]+3*b[67]*b[76]+4*b[67]*b[79]+5*b[67]*b[82]+6*b[67]*b[85]+7*b[67]*b[88]+b[68]*b[71]+2*b[68]*b[74]+3*b[68]*b[77]+4*b[68]*b[80]+5*b[68]*b[83]+6*b[68]*b[86]+7*b[68]*b[89]+b[69]*b[72]+2*b[69]*b[75]+3*b[69]*b[78]+4*b[69]*b[81]+5*b[69]*b[84]+6*b[69]*b[87]+7*b[69]*b[90]+b[70]*b[73]+2*b[70]*b[76]+3*b[70]*b[79]+4*b[70]*b[82]+5*b[70]*b[85]+6*b[70]*b[88]+b[71]*b[74]+2*b[71]*b[77]+3*b[71]*b[80]+4*b[71]*b[83]+5*b[71]*b[86]+6*b[71]*b[89]+b[72]*b[75]+2*b[72]*b[78]+3*b[72]*b[81]+4*b[72]*b[84]+5*b[72]*b[87]+6*b[72]*b[90]+b[73]*b[76]+2*b[73]*b[79]+3*b[73]*b[82]+4*b[73]*b[85]+5*b[73]*b[88]+b[74]*b[77]+2*b[74]*b[80]+3*b[74]*b[83]+4*b[74]*b[86]+5*b[74]*b[89]+b[75]*b[78]+2*b[75]*b[81]+3*b[75]*b[84]+4*b[75]*b[87]+5*b[75]*b[90]+b[76]*b[79]+2*b[76]*b[82]+3*b[76]*b[85]+4*b[76]*b[88]+b[77]*b[80]+2*b[77]*b[83]+3*b[77]*b[86]+4*b[77]*b[89]+b[78]*b[81]+2*b[78]*b[84]+3*b[78]*b[87]+4*b[78]*b[90]+b[79]*b[82]+2*b[79]*b[85]+3*b[79]*b[88]+b[80]*b[83]+2*b[80]*b[86]+3*b[80]*b[89]+b[81]*b[84]+2*b[81]*b[87]+3*b[81]*b[90]+b[82]*b[85]+2*b[82]*b[88]+b[83]*b[86]+2*b[83]*b[89]+b[84]*b[87]+2*b[84]*b[90]+b[85]*b[88]+b[86]*b[89]+b[87]*b[90]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 