using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[53], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[52], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[49], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[45], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[44], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[46], 0.0)
set_lower_bound(x[51], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[48], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[15], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)
set_upper_bound(x[31], 1.0)
set_upper_bound(x[32], 1.0)
set_upper_bound(x[33], 1.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)
set_upper_bound(x[37], 1.0)
set_upper_bound(x[38], 1.0)
set_upper_bound(x[39], 1.0)
set_upper_bound(x[40], 1.0)
set_upper_bound(x[41], 1.0)
set_upper_bound(x[42], 1.0)
set_upper_bound(x[43], 1.0)
set_upper_bound(x[44], 1.0)
set_upper_bound(x[45], 1.0)
set_upper_bound(x[46], 1.0)
set_upper_bound(x[47], 1.0)
set_upper_bound(x[48], 1.0)
set_upper_bound(x[49], 1.0)
set_upper_bound(x[50], 1.0)
set_upper_bound(x[51], 1.0)
set_upper_bound(x[52], 1.0)
set_upper_bound(x[53], 1.0)
set_upper_bound(x[54], 1.0)
set_upper_bound(x[55], 1.0)
set_upper_bound(x[56], 1.0)
set_upper_bound(x[57], 1.0)
set_upper_bound(x[58], 1.0)
set_upper_bound(x[59], 1.0)
set_upper_bound(x[60], 1.0)
set_upper_bound(x[61], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.74*x[2]*x[6]-0.68*x[2]*x[7]-0.7*x[2]*x[9]-1.32*x[2]*x[10]+1.6*x[2]*x[13]-0.68*x[2]*x[14]-0.96*x[2]*x[17]-0.96*x[2]*x[24]-1.96*x[2]*x[26]-1.2*x[2]*x[29]+0.9*x[2]*x[30]+1.34*x[2]*x[36]+0.86*x[2]*x[38]-0.06*x[2]*x[39]-0.24*x[2]*x[42]+1.06*x[2]*x[47]-0.7*x[2]*x[50]-1.2*x[2]*x[54]+1.4*x[2]*x[55]-1.34*x[2]*x[56]+0.56*x[2]*x[59]+0.46*x[2]*x[60]+1.7*x[3]*x[4]-1.54*x[3]*x[14]+0.54*x[3]*x[17]+1.66*x[3]*x[21]+0.1*x[3]*x[28]-1.86*x[3]*x[29]+1.96*x[3]*x[30]-0.92*x[3]*x[33]+1.32*x[3]*x[40]+0.96*x[3]*x[41]-0.24*x[3]*x[53]+1.94*x[3]*x[56]+1.7*x[3]*x[60]+0.7*x[4]*x[5]+0.62*x[4]*x[9]+1.68*x[4]*x[10]+1.86*x[4]*x[14]-0.34*x[4]*x[24]+1.68*x[4]*x[27]-1.4*x[4]*x[30]-0.12*x[4]*x[32]+1.54*x[4]*x[35]+0.54*x[4]*x[42]+0.16*x[4]*x[43]+1.62*x[4]*x[47]-0.26*x[4]*x[48]+0.44*x[4]*x[49]+1.02*x[4]*x[58]+0.5*x[5]*x[6]-1.02*x[5]*x[16]+1.26*x[5]*x[17]-1.04*x[5]*x[30]+1.64*x[5]*x[36]+0.26*x[5]*x[39]+1.06*x[5]*x[51]+0.22*x[5]*x[56]+(-0.48*x[6]*x[16])-1.2*x[6]*x[22]-1.46*x[6]*x[25]+1.74*x[6]*x[27]-0.14*x[6]*x[29]+1.32*x[6]*x[33]-1.38*x[6]*x[35]+0.82*x[6]*x[38]-1.12*x[6]*x[40]-1.64*x[6]*x[43]+1.88*x[6]*x[44]-x[6]*x[46]+1.1*x[6]*x[51]-1.84*x[6]*x[54]+0.88*x[6]*x[57]-0.96*x[6]*x[60]+0.86*x[7]*x[9]-1.76*x[7]*x[10]-1.74*x[7]*x[11]+0.32*x[7]*x[20]-1.06*x[7]*x[22]+1.4*x[7]*x[24]+0.6*x[7]*x[27]-0.6*x[7]*x[32]-x[7]*x[36]+0.68*x[7]*x[38]-1.18*x[7]*x[39]+0.22*x[7]*x[41]+1.06*x[7]*x[45]-1.78*x[7]*x[47]+0.14*x[7]*x[50]+1.14*x[7]*x[53]-1.86*x[7]*x[54]-0.34*x[7]*x[61]+1.28*x[8]*x[13]-1.06*x[8]*x[11]-1.92*x[8]*x[16]-0.02*x[8]*x[18]+1.2*x[8]*x[19]-1.78*x[8]*x[23]+1.02*x[8]*x[28]+1.26*x[8]*x[36]+0.9*x[8]*x[37]+1.7*x[8]*x[40]+0.34*x[8]*x[42]-1.2*x[8]*x[57]+0.84*x[9]*x[15]-0.04*x[9]*x[21]-0.84*x[9]*x[44]-1.32*x[9]*x[59]+0.9*x[10]*x[24]+1.7*x[10]*x[27]-1.78*x[10]*x[37]+1.82*x[10]*x[39]-1.1*x[10]*x[48]-0.36*x[10]*x[55]-1.3*x[10]*x[58]+1.7*x[11]*x[16]-1.6*x[11]*x[19]-0.32*x[11]*x[20]+1.84*x[11]*x[27]-1.2*x[11]*x[31]+1.08*x[11]*x[33]+1.74*x[11]*x[34]+x[11]*x[41]-0.14*x[11]*x[46]+1.56*x[11]*x[49]+0.86*x[11]*x[51]-1.78*x[11]*x[59]+0.34*x[12]*x[13]-1.74*x[12]*x[16]-0.5*x[12]*x[20]-1.26*x[12]*x[22]-0.7*x[12]*x[23]+0.58*x[12]*x[33]+1.7*x[12]*x[34]+0.18*x[12]*x[36]-1.88*x[12]*x[42]+1.78*x[12]*x[44]-1.46*x[12]*x[47]-0.6*x[12]*x[50]-0.24*x[12]*x[51]+1.5*x[12]*x[53]-1.08*x[12]*x[55]+0.54*x[12]*x[56]-0.82*x[12]*x[58]-0.1*x[12]*x[59]+1.44*x[13]*x[17]-1.02*x[13]*x[21]+1.52*x[13]*x[23]-1.76*x[13]*x[24]+1.16*x[13]*x[26]+1.3*x[13]*x[35]-0.52*x[13]*x[42]-0.84*x[13]*x[43]-0.34*x[13]*x[44]+1.14*x[13]*x[52]+1.5*x[13]*x[54]-0.78*x[13]*x[60]-0.1*x[13]*x[61]+1.88*x[14]*x[19]+0.8*x[14]*x[24]-1.22*x[14]*x[25]+1.86*x[14]*x[27]+0.92*x[14]*x[34]-0.1*x[14]*x[44]+1.2*x[14]*x[49]-x[14]*x[50]-0.9*x[14]*x[55]+(-0.6*x[15]*x[19])-1.24*x[15]*x[21]+1.78*x[15]*x[24]+0.66*x[15]*x[28]-1.3*x[15]*x[32]+1.62*x[15]*x[35]-1.74*x[15]*x[41]+1.7*x[15]*x[44]-1.18*x[15]*x[46]+0.66*x[15]*x[47]-0.3*x[15]*x[52]-1.56*x[15]*x[54]+1.1*x[15]*x[56]+(-1.68*x[16]*x[17])-0.34*x[16]*x[19]+1.04*x[16]*x[23]-0.02*x[16]*x[25]+1.38*x[16]*x[26]+1.78*x[16]*x[31]+1.6*x[16]*x[32]-1.1*x[16]*x[37]+1.1*x[16]*x[39]-0.8*x[16]*x[41]+0.56*x[16]*x[43]+0.76*x[16]*x[44]+1.42*x[16]*x[46]+1.16*x[16]*x[49]-0.36*x[16]*x[53]+1.96*x[16]*x[60]+1.2*x[17]*x[27]+0.86*x[17]*x[34]+1.82*x[17]*x[39]-1.68*x[17]*x[44]+1.2*x[17]*x[45]-1.86*x[17]*x[51]-1.56*x[17]*x[54]+0.02*x[17]*x[59]+0.96*x[18]*x[29]-1.04*x[18]*x[30]-1.74*x[18]*x[35]+1.12*x[18]*x[39]+0.4*x[18]*x[44]-1.62*x[18]*x[45]-0.46*x[18]*x[47]-1.52*x[18]*x[51]+1.74*x[18]*x[54]-0.18*x[18]*x[55]+1.26*x[19]*x[33]-1.2*x[19]*x[28]-0.54*x[19]*x[34]-1.02*x[19]*x[35]-0.36*x[19]*x[37]-0.18*x[19]*x[52]-1.36*x[19]*x[54]+0.8*x[20]*x[23]-1.48*x[20]*x[22]-0.18*x[20]*x[25]-0.54*x[20]*x[27]+1.5*x[20]*x[29]-0.14*x[20]*x[30]+1.5*x[20]*x[37]-1.42*x[20]*x[45]+0.24*x[20]*x[49]-0.94*x[20]*x[50]+0.36*x[20]*x[51]-0.3*x[20]*x[53]-2*x[20]*x[57]+1.94*x[21]*x[29]-1.16*x[21]*x[27]+1.04*x[21]*x[34]-0.98*x[21]*x[44]+0.74*x[21]*x[49]-0.14*x[21]*x[51]-0.04*x[21]*x[55]+0.38*x[21]*x[56]+0.44*x[22]*x[24]-1.22*x[22]*x[23]+1.64*x[22]*x[26]-0.8*x[22]*x[33]+0.34*x[22]*x[34]-1.48*x[22]*x[35]-1.98*x[22]*x[39]+1.9*x[22]*x[44]+0.94*x[22]*x[45]-1.94*x[22]*x[46]-0.34*x[22]*x[48]-0.74*x[22]*x[49]-0.4*x[22]*x[50]-1.42*x[22]*x[58]-1.7*x[22]*x[60]+0.32*x[23]*x[24]-0.04*x[23]*x[31]-0.96*x[23]*x[34]+0.9*x[23]*x[39]+1.94*x[23]*x[43]+1.88*x[23]*x[50]+1.94*x[24]*x[34]-0.34*x[24]*x[25]-0.14*x[24]*x[36]+1.5*x[24]*x[37]+0.44*x[24]*x[40]-0.9*x[24]*x[57]+0.78*x[24]*x[61]+0.32*x[25]*x[29]-0.8*x[25]*x[26]+0.62*x[25]*x[38]+1.32*x[25]*x[44]+1.42*x[25]*x[45]+1.36*x[25]*x[46]-0.02*x[25]*x[47]-1.98*x[25]*x[57]-1.52*x[25]*x[61]+0.2*x[26]*x[27]+0.12*x[26]*x[29]+1.84*x[26]*x[30]-0.72*x[26]*x[31]+1.7*x[26]*x[33]-1.58*x[26]*x[35]-0.32*x[26]*x[36]-0.64*x[26]*x[41]-0.96*x[26]*x[51]-1.04*x[26]*x[57]+1.54*x[26]*x[58]+0.58*x[27]*x[28]-0.58*x[27]*x[33]+0.88*x[27]*x[40]+1.18*x[27]*x[44]+1.58*x[27]*x[47]+0.4*x[27]*x[50]-0.88*x[27]*x[53]+0.44*x[27]*x[56]+0.18*x[27]*x[57]+0.4*x[28]*x[39]+0.36*x[28]*x[40]-0.62*x[28]*x[43]+(-0.3*x[29]*x[31])-0.58*x[29]*x[32]-1.68*x[29]*x[33]+1.22*x[29]*x[39]-0.84*x[29]*x[40]+0.22*x[29]*x[43]+1.84*x[29]*x[46]+1.62*x[29]*x[53]-0.28*x[29]*x[60]+1.46*x[29]*x[61]+0.28*x[30]*x[39]-0.6*x[30]*x[34]-1.42*x[30]*x[40]-0.88*x[30]*x[42]-0.22*x[30]*x[44]-0.18*x[30]*x[46]+0.92*x[30]*x[48]-0.64*x[30]*x[58]+1.94*x[30]*x[61]+0.6*x[31]*x[33]-1.88*x[31]*x[32]-0.02*x[31]*x[42]-1.52*x[31]*x[48]+0.22*x[31]*x[53]+0.34*x[31]*x[55]+1.84*x[32]*x[33]+1.88*x[32]*x[39]+1.34*x[32]*x[42]+0.3*x[32]*x[43]+0.02*x[32]*x[47]-0.96*x[32]*x[53]+0.9*x[32]*x[54]+1.14*x[32]*x[56]+1.94*x[32]*x[59]+1.5*x[33]*x[41]-1.84*x[33]*x[44]+0.4*x[33]*x[48]+0.3*x[33]*x[53]-1.16*x[33]*x[54]+1.7*x[33]*x[60]+0.92*x[34]*x[36]+2*x[34]*x[44]-1.5*x[34]*x[53]+0.16*x[34]*x[56]-0.64*x[34]*x[61]+0.88*x[35]*x[37]+0.72*x[35]*x[43]+0.98*x[35]*x[44]-1.08*x[35]*x[45]-0.12*x[35]*x[52]+1.8*x[35]*x[53]+1.74*x[35]*x[54]+1.94*x[35]*x[56]+0.96*x[35]*x[57]+1.9*x[35]*x[58]+1.2*x[36]*x[42]-1.92*x[36]*x[38]-0.54*x[36]*x[44]+1.4*x[36]*x[47]+0.14*x[36]*x[50]+1.36*x[36]*x[52]+(-1.94*x[37]*x[39])-0.2*x[37]*x[49]-1.52*x[37]*x[50]+0.9*x[37]*x[52]+1.22*x[37]*x[55]-0.18*x[37]*x[57]+1.52*x[37]*x[59]+(-0.56*x[38]*x[41])-0.5*x[38]*x[50]+0.7*x[38]*x[51]+0.42*x[39]*x[43]-0.62*x[39]*x[53]-0.88*x[39]*x[55]+0.02*x[39]*x[61]+(-1.38*x[40]*x[45])-1.46*x[40]*x[50]-0.76*x[40]*x[57]-1.38*x[40]*x[58]+0.28*x[41]*x[49]+1.04*x[41]*x[50]-0.7*x[41]*x[52]+1.46*x[41]*x[57]+1.74*x[41]*x[58]-0.64*x[41]*x[60]+0.42*x[42]*x[43]-0.1*x[42]*x[45]-0.68*x[42]*x[50]-1.92*x[42]*x[53]+1.3*x[42]*x[56]-1.7*x[42]*x[58]+1.58*x[43]*x[49]-1.16*x[43]*x[46]-1.74*x[43]*x[50]+1.68*x[43]*x[53]+0.64*x[43]*x[61]+0.72*x[44]*x[48]+0.5*x[44]*x[57]-1.36*x[44]*x[60]+1.68*x[45]*x[50]-0.02*x[45]*x[56]+0.06*x[45]*x[57]-0.56*x[45]*x[60]+0.3*x[46]*x[58]-1.22*x[46]*x[49]+0.74*x[46]*x[59]+1.08*x[47]*x[52]-1.86*x[47]*x[51]-0.2*x[47]*x[56]+0.74*x[48]*x[51]-0.34*x[48]*x[49]+0.38*x[48]*x[58]+1.86*x[48]*x[60]+(-1.98*x[49]*x[54])-0.06*x[49]*x[56]-1.96*x[49]*x[57]+1.94*x[50]*x[52]-1.74*x[50]*x[51]+(-0.9*x[51]*x[56])-0.02*x[51]*x[59]+(-0.18*x[52]*x[53])-1.56*x[52]*x[56]+1.42*x[54]*x[58]+0.9*x[55]*x[56]-0.74*x[55]*x[59]-0.72*x[56]*x[59]-1.54*x[57]*x[60]+0.84*x[58]*x[59]-1.14*x[59]*x[60]+0.39*x[10]*x[10]-0.86*x[6]*x[6]-0.52*x[11]*x[11]-0.01*x[13]*x[13]-0.98*x[18]*x[18]-0.31*x[19]*x[19]+0.33*x[20]*x[20]-0.26*x[21]*x[21]+0.12*x[23]*x[23]-0.99*x[32]*x[32]-0.1*x[34]*x[34]+0.35*x[47]*x[47]+0.93*x[49]*x[49]-0.51*x[50]*x[50]-0.68*x[51]*x[51]+0.85*x[58]*x[58]-0.16*x[59]*x[59]-0.81*x[2]+0.58*x[3]+0.13*x[4]-0.73*x[5]+0.39*x[6]-0.02*x[7]-0.6*x[8]+0.49*x[9]-0.77*x[10]-0.09*x[11]-0.34*x[12]-0.34*x[13]-0.52*x[14]-0.6*x[15]-0.32*x[16]-0.12*x[17]+0.62*x[18]-0.83*x[19]+0.2*x[20]-0.99*x[21]+0.65*x[22]+0.96*x[23]-0.63*x[24]+0.65*x[25]-0.03*x[26]+0.11*x[27]-0.62*x[28]-0.23*x[29]-0.6*x[30]-0.16*x[31]+0.65*x[32]-0.21*x[33]-0.72*x[34]+0.67*x[35]-0.25*x[36]+0.93*x[37]-0.86*x[38]-0.51*x[39]+0.87*x[40]-0.98*x[41]+0.08*x[42]-0.91*x[43]-0.07*x[44]+0.87*x[45]-0.93*x[46]+0.07*x[47]-0.36*x[48]-0.04*x[49]-0.58*x[50]-0.87*x[51]+0.97*x[52]+0.05*x[53]-0.44*x[54]+0.7*x[55]-0.89*x[56]+0.92*x[57]+0.07*x[58]-0.58*x[59]+0.26*x[60]-0.86*x[61])+x[1] == 0.0)
@NLconstraint(m, e2, (-0.1*x[2]*x[8])-0.5*x[2]*x[19]+1.02*x[2]*x[22]-0.98*x[2]*x[23]+0.46*x[2]*x[24]+1.52*x[2]*x[31]+0.28*x[2]*x[35]-1.38*x[2]*x[38]-0.22*x[2]*x[43]-0.98*x[2]*x[45]+1.9*x[2]*x[49]+1.62*x[2]*x[57]+0.98*x[3]*x[9]-0.64*x[3]*x[11]+1.32*x[3]*x[15]-1.76*x[3]*x[17]-0.16*x[3]*x[23]+1.48*x[3]*x[26]+1.88*x[3]*x[29]+0.98*x[3]*x[33]-0.72*x[3]*x[38]+1.08*x[3]*x[41]+0.32*x[3]*x[47]+0.24*x[3]*x[48]+0.96*x[3]*x[53]-0.88*x[3]*x[61]+0.46*x[4]*x[9]-1.92*x[4]*x[12]+0.3*x[4]*x[21]+0.58*x[4]*x[26]+0.04*x[4]*x[29]+1.3*x[4]*x[35]-1.56*x[4]*x[39]+0.92*x[4]*x[40]-1.54*x[4]*x[42]-1.1*x[4]*x[43]+0.24*x[4]*x[45]-0.08*x[4]*x[46]+0.82*x[4]*x[49]-1.1*x[4]*x[50]-0.66*x[4]*x[51]-1.52*x[4]*x[52]-1.3*x[4]*x[53]-0.32*x[4]*x[54]-0.84*x[4]*x[57]+0.36*x[4]*x[58]+0.92*x[4]*x[59]-1.72*x[4]*x[60]-1.12*x[4]*x[61]+1.52*x[5]*x[9]-1.96*x[5]*x[14]-0.38*x[5]*x[22]+0.28*x[5]*x[23]-0.72*x[5]*x[24]+1.12*x[5]*x[28]+0.64*x[5]*x[32]+0.8*x[5]*x[39]-0.28*x[5]*x[41]+0.62*x[5]*x[43]-0.72*x[5]*x[60]+0.6*x[6]*x[13]-1.34*x[6]*x[15]-1.18*x[6]*x[18]-0.98*x[6]*x[19]+0.96*x[6]*x[21]+1.2*x[6]*x[24]-1.38*x[6]*x[31]+1.38*x[6]*x[33]-1.1*x[6]*x[36]-0.28*x[6]*x[38]-0.96*x[6]*x[46]+1.22*x[6]*x[49]-0.84*x[6]*x[51]-1.76*x[6]*x[52]-1.16*x[6]*x[54]+1.66*x[7]*x[9]-1.22*x[7]*x[8]+1.22*x[7]*x[22]-0.18*x[7]*x[26]+0.32*x[7]*x[27]-0.32*x[7]*x[28]-1.66*x[7]*x[32]+0.38*x[7]*x[37]+0.28*x[7]*x[39]-1.88*x[7]*x[41]-0.62*x[7]*x[42]+0.08*x[7]*x[48]+0.28*x[7]*x[54]+0.12*x[7]*x[55]+0.22*x[7]*x[58]+1.16*x[7]*x[61]+(-1.52*x[8]*x[10])-1.36*x[8]*x[13]-1.52*x[8]*x[21]-0.84*x[8]*x[23]+0.14*x[8]*x[36]+0.54*x[8]*x[42]-1.86*x[8]*x[47]+1.94*x[8]*x[49]-1.14*x[8]*x[52]-1.58*x[8]*x[54]-1.64*x[8]*x[59]+0.24*x[8]*x[60]+0.36*x[8]*x[61]+0.24*x[9]*x[13]-0.9*x[9]*x[11]-1.2*x[9]*x[17]-1.08*x[9]*x[25]-0.44*x[9]*x[36]+0.04*x[9]*x[37]-1.44*x[9]*x[39]+1.06*x[9]*x[41]-1.4*x[9]*x[43]-1.88*x[9]*x[44]+1.08*x[9]*x[49]-1.54*x[9]*x[53]+0.84*x[9]*x[55]+1.94*x[9]*x[56]+1.12*x[10]*x[16]-1.92*x[10]*x[11]-1.92*x[10]*x[21]+1.72*x[10]*x[25]+1.64*x[10]*x[26]-1.4*x[10]*x[30]-1.6*x[10]*x[33]-1.6*x[10]*x[38]+0.46*x[10]*x[39]+0.5*x[10]*x[42]+1.94*x[10]*x[46]-0.98*x[10]*x[49]-0.08*x[10]*x[50]-1.82*x[10]*x[53]+1.64*x[10]*x[59]+(-0.28*x[11]*x[17])-0.1*x[11]*x[24]-0.5*x[11]*x[25]-0.1*x[11]*x[26]-0.66*x[11]*x[30]-1.64*x[11]*x[33]+1.76*x[11]*x[34]+0.52*x[11]*x[43]-1.76*x[11]*x[45]+1.66*x[11]*x[48]-0.58*x[11]*x[53]-0.32*x[11]*x[56]+(-0.5*x[12]*x[13])-1.86*x[12]*x[16]+1.04*x[12]*x[22]+0.7*x[12]*x[24]-0.06*x[12]*x[26]-1.28*x[12]*x[28]+0.04*x[12]*x[40]-1.22*x[12]*x[41]-0.86*x[12]*x[44]+0.32*x[12]*x[46]+1.16*x[12]*x[50]+1.02*x[13]*x[25]-1.3*x[13]*x[22]+1.04*x[13]*x[28]-1.24*x[13]*x[33]-0.32*x[13]*x[36]-0.62*x[13]*x[37]-1.7*x[13]*x[45]+1.18*x[13]*x[46]-0.82*x[13]*x[54]+1.82*x[13]*x[55]+1.92*x[13]*x[56]+x[13]*x[58]+0.66*x[13]*x[59]+1.52*x[14]*x[18]-1.02*x[14]*x[15]+1.94*x[14]*x[20]-1.12*x[14]*x[23]-0.76*x[14]*x[24]+1.12*x[14]*x[25]-1.4*x[14]*x[27]-0.74*x[14]*x[37]-0.38*x[14]*x[38]-1.32*x[14]*x[41]-0.3*x[14]*x[42]-1.36*x[14]*x[45]-1.44*x[14]*x[51]+0.38*x[14]*x[55]-0.5*x[14]*x[60]+0.72*x[15]*x[19]-1.96*x[15]*x[20]-1.62*x[15]*x[22]-1.92*x[15]*x[23]-0.6*x[15]*x[26]-0.54*x[15]*x[34]+1.82*x[15]*x[36]-1.6*x[15]*x[38]+0.02*x[15]*x[39]+1.6*x[15]*x[41]-0.68*x[15]*x[44]-0.7*x[15]*x[54]-0.42*x[15]*x[59]+0.26*x[16]*x[19]-0.36*x[16]*x[27]-1.72*x[16]*x[33]+1.7*x[16]*x[35]-1.24*x[16]*x[36]-0.66*x[16]*x[40]+1.2*x[16]*x[44]+0.64*x[16]*x[50]+0.58*x[16]*x[53]+0.32*x[16]*x[54]+1.04*x[16]*x[57]+1.9*x[16]*x[59]+0.04*x[16]*x[60]+1.88*x[16]*x[61]+(-1.8*x[17]*x[22])-1.44*x[17]*x[24]-1.88*x[17]*x[26]-1.86*x[17]*x[29]-0.72*x[17]*x[35]+0.34*x[17]*x[38]+0.84*x[17]*x[45]-0.6*x[17]*x[51]+1.8*x[17]*x[52]+1.1*x[17]*x[60]+1.62*x[18]*x[21]+1.44*x[18]*x[24]+1.9*x[18]*x[26]-0.54*x[18]*x[28]+0.24*x[18]*x[32]+0.98*x[18]*x[33]+1.48*x[18]*x[37]+0.76*x[18]*x[38]+1.74*x[18]*x[44]+0.08*x[18]*x[45]-1.98*x[18]*x[53]-0.68*x[18]*x[61]+(-0.4*x[19]*x[24])-0.64*x[19]*x[33]-0.86*x[19]*x[37]+1.22*x[19]*x[47]-1.58*x[19]*x[51]-0.96*x[19]*x[52]+0.04*x[19]*x[54]+0.5*x[19]*x[56]+(-0.88*x[20]*x[21])-0.84*x[20]*x[23]+1.36*x[20]*x[24]+0.06*x[20]*x[26]+1.74*x[20]*x[35]+0.3*x[20]*x[37]+1.22*x[20]*x[38]-0.2*x[20]*x[47]+1.4*x[20]*x[48]-0.3*x[20]*x[49]-1.62*x[20]*x[54]+0.6*x[20]*x[60]+1.44*x[21]*x[30]+1.72*x[21]*x[32]-1.54*x[21]*x[35]-0.96*x[21]*x[38]+0.9*x[21]*x[41]-0.22*x[21]*x[44]-1.2*x[21]*x[49]-0.42*x[21]*x[60]+(-0.08*x[22]*x[24])-0.98*x[22]*x[28]-0.56*x[22]*x[33]+0.16*x[22]*x[35]+0.3*x[22]*x[39]-0.04*x[22]*x[42]+0.14*x[22]*x[47]+0.32*x[22]*x[51]+0.9*x[22]*x[56]+0.44*x[22]*x[60]-0.7*x[22]*x[61]+0.34*x[23]*x[38]-1.12*x[23]*x[25]+0.4*x[23]*x[39]-1.54*x[23]*x[41]-1.3*x[23]*x[45]+1.3*x[23]*x[51]+0.12*x[23]*x[52]-1.18*x[23]*x[53]-1.82*x[23]*x[54]-0.52*x[23]*x[58]+0.18*x[24]*x[25]+1.52*x[24]*x[26]-1.28*x[24]*x[30]+0.78*x[24]*x[31]-0.84*x[24]*x[47]+1.72*x[24]*x[55]+0.68*x[25]*x[27]+1.92*x[25]*x[33]+0.86*x[25]*x[38]+1.54*x[25]*x[40]-1.6*x[25]*x[41]+1.74*x[25]*x[44]-1.18*x[25]*x[46]+1.28*x[25]*x[57]+1.74*x[25]*x[59]+0.82*x[26]*x[27]-1.38*x[26]*x[30]-1.3*x[26]*x[42]-1.64*x[26]*x[45]-1.64*x[26]*x[48]-0.3*x[26]*x[49]-1.14*x[26]*x[54]+0.88*x[26]*x[57]+0.38*x[27]*x[33]+x[27]*x[40]+0.5*x[27]*x[45]-1.38*x[27]*x[46]-1.14*x[27]*x[50]-1.96*x[27]*x[51]+0.5*x[28]*x[35]-0.58*x[28]*x[29]+0.12*x[28]*x[46]+1.18*x[28]*x[47]+1.72*x[28]*x[54]+0.04*x[28]*x[60]+1.92*x[29]*x[36]-0.94*x[29]*x[31]+0.52*x[29]*x[41]+1.66*x[29]*x[42]+0.86*x[29]*x[44]+1.16*x[29]*x[47]-1.84*x[29]*x[48]-0.52*x[29]*x[55]-1.42*x[29]*x[56]+1.32*x[29]*x[58]+1.34*x[30]*x[35]-1.76*x[30]*x[54]-0.4*x[30]*x[58]+0.04*x[31]*x[45]+0.42*x[31]*x[50]+1.8*x[31]*x[55]-1.72*x[31]*x[57]+0.64*x[32]*x[36]-0.06*x[32]*x[47]+(-0.68*x[33]*x[34])-1.16*x[33]*x[37]-0.86*x[33]*x[42]-1.84*x[33]*x[47]+0.32*x[33]*x[53]-1.96*x[33]*x[57]+1.78*x[33]*x[59]+1.06*x[33]*x[60]+x[34]*x[44]-0.58*x[34]*x[48]+1.58*x[34]*x[52]+0.74*x[34]*x[59]+1.98*x[35]*x[38]+0.68*x[35]*x[41]+0.66*x[35]*x[47]-0.2*x[35]*x[49]-1.62*x[35]*x[54]+0.22*x[35]*x[55]+0.56*x[35]*x[56]+0.26*x[35]*x[57]-0.98*x[35]*x[61]+1.42*x[36]*x[41]-2*x[36]*x[38]-0.76*x[36]*x[43]+0.5*x[36]*x[49]+1.42*x[36]*x[60]+0.32*x[37]*x[44]-0.8*x[37]*x[45]-0.62*x[37]*x[50]-0.2*x[37]*x[51]-1.44*x[37]*x[56]+1.6*x[37]*x[59]+1.26*x[37]*x[60]+(-0.12*x[38]*x[46])-1.8*x[38]*x[49]-1.92*x[38]*x[52]-1.16*x[38]*x[57]+0.6*x[38]*x[58]+1.34*x[39]*x[42]+0.8*x[39]*x[43]-1.6*x[39]*x[44]-0.02*x[39]*x[46]+1.74*x[39]*x[48]+1.1*x[39]*x[52]+1.92*x[39]*x[53]-1.42*x[39]*x[54]+1.44*x[40]*x[42]+0.9*x[40]*x[43]+0.14*x[40]*x[47]+1.34*x[40]*x[48]+0.6*x[40]*x[53]+(-1.26*x[41]*x[52])-0.34*x[41]*x[57]+0.38*x[41]*x[59]+1.7*x[42]*x[46]-1.84*x[42]*x[44]-0.78*x[42]*x[51]-0.14*x[42]*x[53]-0.88*x[42]*x[60]-0.84*x[42]*x[61]+1.66*x[43]*x[44]-1.18*x[43]*x[47]-0.34*x[43]*x[48]+1.36*x[43]*x[49]-1.06*x[43]*x[61]+0.68*x[44]*x[46]+1.74*x[44]*x[55]+0.26*x[44]*x[56]+1.18*x[45]*x[49]-0.22*x[45]*x[48]+1.08*x[45]*x[50]+(-1.66*x[46]*x[53])-0.06*x[46]*x[55]+1.96*x[47]*x[55]-1.5*x[47]*x[50]+1.58*x[47]*x[61]+0.68*x[49]*x[52]-1.06*x[49]*x[53]+1.38*x[50]*x[51]+1.42*x[50]*x[53]-0.16*x[50]*x[54]+1.22*x[50]*x[60]+1.04*x[51]*x[53]-1.28*x[51]*x[55]+1.06*x[51]*x[58]+1.58*x[51]*x[59]-0.92*x[51]*x[60]+(-1.1*x[52]*x[53])-0.2*x[52]*x[54]+1.48*x[52]*x[58]+1.1*x[52]*x[59]-1.32*x[52]*x[60]+1.74*x[53]*x[56]-0.52*x[53]*x[57]-1.6*x[56]*x[57]-0.68*x[57]*x[60]+1.26*x[58]*x[61]-1.28*x[58]*x[60]-1.52*x[59]*x[61]+0.29*x[8]*x[8]+0.69*x[15]*x[15]+0.17*x[17]*x[17]-0.47*x[20]*x[20]+0.59*x[25]*x[25]-0.45*x[29]*x[29]-0.82*x[34]*x[34]-0.96*x[37]*x[37]+0.58*x[39]*x[39]+0.98*x[44]*x[44]-0.86*x[50]*x[50]-0.49*x[56]*x[56]-0.97*x[61]*x[61]+0.74*x[2]+0.9*x[3]-0.52*x[4]-0.37*x[5]-0.64*x[6]-0.79*x[7]-0.91*x[8]+0.19*x[9]+0.66*x[10]+0.59*x[11]-0.78*x[12]-0.91*x[13]+0.23*x[14]-0.2*x[15]+0.58*x[16]-0.41*x[17]-0.8*x[18]-0.61*x[19]-0.43*x[20]-0.63*x[21]+0.14*x[22]+0.34*x[23]+0.94*x[24]-0.02*x[25]-0.04*x[26]+0.12*x[27]+0.57*x[28]+0.14*x[29]-0.28*x[30]+0.79*x[31]-0.99*x[32]+0.47*x[33]+0.22*x[34]+0.83*x[35]+0.69*x[36]+0.11*x[37]-0.13*x[38]-0.42*x[39]+0.37*x[40]-0.53*x[41]+0.83*x[42]-0.77*x[43]+0.24*x[44]+0.31*x[45]-0.14*x[46]-0.13*x[47]+0.21*x[48]-0.6*x[49]+0.31*x[50]+0.94*x[51]-0.1*x[52]+0.86*x[53]-0.49*x[54]-0.39*x[55]+0.07*x[56]-0.07*x[57]-0.32*x[58]-0.31*x[59]+0.86*x[60]+0.38*x[61] <= 23.9)
@constraint(m, e3, 0.6*x[2]+0.95*x[3]+0.35*x[4]+0.58*x[5]+0.59*x[6]+0.85*x[7]+0.76*x[8]-0.86*x[9]-0.78*x[10]-0.75*x[11]+0.56*x[12]+0.82*x[13]-0.19*x[14]+0.1*x[15]+0.86*x[16]-0.81*x[17]-0.48*x[18]-0.62*x[19]+0.12*x[21]-0.92*x[22]-0.54*x[23]-0.04*x[24]-0.57*x[25]+0.76*x[26]+0.29*x[27]-0.13*x[28]-0.27*x[29]-0.47*x[30]-0.09*x[31]-0.99*x[32]+0.99*x[33]-0.28*x[34]+0.21*x[35]-0.52*x[36]-0.89*x[37]+0.33*x[38]+0.87*x[39]+0.83*x[40]-0.57*x[41]+0.87*x[42]+0.16*x[43]+0.57*x[44]-0.29*x[45]-0.9*x[46]+0.87*x[47]+0.5*x[48]-0.94*x[49]+0.61*x[50]+0.9*x[51]-0.28*x[52]-0.51*x[53]+0.17*x[54]-0.52*x[55]-0.36*x[56]-0.52*x[57]+0.56*x[58]+0.11*x[59]+0.35*x[60]+0.51*x[61] == 0.05)
@constraint(m, e4, 0.28*x[2]-0.4*x[3]-0.16*x[4]-0.14*x[5]+0.48*x[6]+0.53*x[7]-0.39*x[8]+0.14*x[9]-0.95*x[10]+0.76*x[11]-0.46*x[12]+0.36*x[13]-0.92*x[14]+0.43*x[15]-0.08*x[16]+0.39*x[17]-0.23*x[18]-0.92*x[19]-0.82*x[20]+0.97*x[21]+0.27*x[22]+0.2*x[23]-0.53*x[24]-0.61*x[25]-0.52*x[26]+0.29*x[27]+0.3*x[28]+0.77*x[29]-0.63*x[30]+0.04*x[31]+0.88*x[32]+0.43*x[33]-0.07*x[34]-0.2*x[35]+0.59*x[36]-0.84*x[37]-0.66*x[38]-0.42*x[39]+0.14*x[40]+0.98*x[41]+0.65*x[42]-0.53*x[43]+0.63*x[44]-0.07*x[45]-0.25*x[46]-0.56*x[47]+0.22*x[48]-0.32*x[49]+0.35*x[50]-0.75*x[51]+0.37*x[52]+0.48*x[53]+0.23*x[54]+0.07*x[55]+0.07*x[56]-0.59*x[57]+0.65*x[58]+0.05*x[59]-0.93*x[60]+0.07*x[61] == 0.25)
@constraint(m, e5, -0.04*x[2]+0.97*x[3]+0.69*x[4]+0.73*x[5]-0.22*x[6]+0.35*x[7]+0.24*x[8]+0.32*x[9]-0.31*x[10]+0.58*x[11]+0.41*x[12]+0.92*x[13]-0.63*x[14]+0.27*x[15]-0.3*x[16]+0.45*x[17]-0.64*x[18]+0.26*x[19]-0.96*x[20]+0.66*x[21]+0.66*x[22]-0.56*x[23]+0.1*x[24]+0.31*x[25]+0.19*x[26]+0.47*x[27]-0.12*x[28]+0.45*x[29]+0.4*x[30]-0.72*x[31]-0.01*x[32]+0.02*x[33]-0.66*x[34]-0.08*x[35]+0.78*x[36]-0.26*x[37]+0.55*x[38]+0.27*x[39]+0.49*x[40]-0.14*x[41]+0.14*x[42]+0.14*x[43]+0.52*x[44]-0.18*x[45]-0.11*x[46]-0.33*x[47]-0.91*x[48]-0.27*x[49]+0.36*x[50]-0.18*x[51]-0.9*x[52]+0.11*x[53]-0.23*x[54]-0.35*x[55]+0.55*x[56]+0.46*x[57]-0.86*x[58]+0.82*x[59]-0.19*x[60]-0.43*x[61] == 0.16)
@constraint(m, e6, -0.54*x[2]-0.26*x[3]+0.15*x[4]+0.37*x[5]-0.29*x[6]-0.2*x[7]+0.04*x[8]+0.21*x[9]-0.62*x[10]-0.36*x[11]-0.89*x[12]+0.32*x[13]+0.74*x[14]-0.1*x[15]-0.62*x[16]-0.39*x[17]-0.62*x[18]-0.19*x[19]+0.54*x[20]-0.14*x[21]+0.33*x[22]-0.43*x[23]-0.47*x[24]+0.1*x[25]+0.19*x[26]+0.5*x[27]+0.69*x[28]-0.68*x[29]+0.96*x[30]+0.02*x[31]+0.36*x[32]+0.87*x[33]-0.31*x[34]+0.48*x[35]+0.96*x[36]+0.39*x[37]+0.66*x[38]+0.83*x[39]+0.25*x[40]-0.22*x[41]-0.29*x[42]+0.75*x[43]+0.85*x[44]+0.84*x[45]+0.85*x[46]+0.98*x[47]-0.53*x[48]+0.04*x[49]-0.72*x[50]+0.9*x[51]-0.76*x[52]-0.07*x[53]-0.26*x[54]+0.25*x[55]-0.11*x[56]-0.96*x[57]-0.57*x[58]+0.58*x[59]-0.73*x[60]-0.37*x[61] == 0.66)
@constraint(m, e7, -0.26*x[2]-0.89*x[3]-0.33*x[4]+0.85*x[5]+0.36*x[6]+0.38*x[7]+0.7*x[8]+0.3*x[9]+0.36*x[10]-0.46*x[11]-0.19*x[12]-0.44*x[13]+0.25*x[14]+0.21*x[15]+0.18*x[16]+0.98*x[17]-0.94*x[18]+0.61*x[19]+0.64*x[20]-0.51*x[21]+0.28*x[22]-0.76*x[23]-0.24*x[24]-0.19*x[25]+0.74*x[26]+0.54*x[27]-0.51*x[28]-0.55*x[29]+0.96*x[30]-0.2*x[31]+0.06*x[32]-0.49*x[33]+0.42*x[34]-0.61*x[35]+0.82*x[36]+0.94*x[37]-0.7*x[38]-0.3*x[39]+0.57*x[40]+0.94*x[41]-0.78*x[42]+0.62*x[43]-0.57*x[44]-0.15*x[45]-0.82*x[46]+0.24*x[47]+0.76*x[48]-0.88*x[49]-0.84*x[50]+0.15*x[51]-0.42*x[52]-0.78*x[53]-0.34*x[54]-0.25*x[55]+0.96*x[56]-0.31*x[57]+0.87*x[58]+0.73*x[59]-0.67*x[60]-0.54*x[61] == 0.6)
@constraint(m, e8, 0.96*x[2]-0.76*x[3]+0.74*x[4]+0.6*x[5]-0.82*x[6]+0.08*x[7]-0.33*x[8]-0.43*x[9]-0.94*x[10]+0.57*x[11]+0.02*x[12]-0.78*x[13]-0.17*x[14]-0.22*x[15]+0.65*x[16]+0.02*x[17]-0.64*x[18]-0.55*x[19]-0.66*x[20]-0.94*x[21]+0.58*x[22]+0.54*x[23]-0.59*x[24]-0.28*x[25]+0.05*x[26]-0.11*x[27]-0.17*x[28]+0.21*x[29]-0.76*x[30]-0.18*x[31]-0.19*x[32]+0.14*x[33]+0.34*x[34]-0.54*x[35]+0.64*x[36]-0.22*x[37]-0.51*x[38]+0.88*x[39]-0.13*x[40]+0.98*x[41]+0.9*x[42]+0.19*x[43]-0.3*x[44]+0.23*x[45]+0.31*x[46]+0.53*x[47]+0.14*x[48]+0.8*x[49]+0.55*x[50]-0.39*x[51]-x[52]+0.75*x[53]-0.03*x[54]-0.28*x[55]+0.82*x[56]+0.32*x[57]-0.68*x[58]+0.06*x[59]+0.33*x[60]+0.63*x[61] == -0.84)
@constraint(m, e9, -0.29*x[2]+0.56*x[3]+0.83*x[4]+0.87*x[5]+0.06*x[6]+0.11*x[7]+0.32*x[8]+0.64*x[9]-0.18*x[10]-0.51*x[11]-0.7*x[12]-0.56*x[13]-0.42*x[14]+0.5*x[15]+0.1*x[16]-0.8*x[17]-0.21*x[18]+0.9*x[19]-0.51*x[20]+0.68*x[21]-0.86*x[22]+0.24*x[23]+0.48*x[24]-0.99*x[25]+0.38*x[26]+0.49*x[27]+0.54*x[28]+0.96*x[29]+0.56*x[30]-0.19*x[31]-0.02*x[32]+0.04*x[33]-0.84*x[34]+0.86*x[35]+0.57*x[36]+0.47*x[37]+0.11*x[38]+0.73*x[39]+0.41*x[40]-0.56*x[41]-0.9*x[42]-0.5*x[43]-0.04*x[44]-0.4*x[45]-0.76*x[46]+0.88*x[47]-0.94*x[48]+0.5*x[49]+0.91*x[50]-0.54*x[51]+0.65*x[52]-0.26*x[53]-0.56*x[54]-0.36*x[55]+0.98*x[56]+0.92*x[57]+0.52*x[58]-0.61*x[59]-0.7*x[60]-0.44*x[61] == 0.85)
@constraint(m, e10, -0.61*x[2]-0.12*x[3]-0.56*x[4]+0.16*x[5]+0.67*x[6]+0.18*x[7]-0.27*x[8]+0.39*x[9]-0.44*x[10]+0.96*x[11]+0.04*x[12]-0.32*x[13]+0.68*x[14]-0.26*x[15]+0.32*x[16]-0.97*x[17]-0.29*x[18]-0.9*x[19]-0.84*x[20]-0.1*x[21]+0.87*x[22]-0.78*x[23]-0.98*x[24]+0.99*x[25]-0.19*x[26]-0.68*x[27]-0.61*x[28]+0.12*x[29]+0.16*x[30]+0.73*x[31]-0.7*x[32]+0.83*x[33]-0.75*x[34]+x[35]-0.23*x[36]-0.64*x[37]+0.45*x[38]+0.1*x[39]+0.23*x[40]-0.56*x[41]-0.03*x[42]-0.11*x[43]-0.51*x[44]+0.83*x[45]-0.89*x[46]+0.21*x[47]+0.49*x[48]-0.33*x[49]+0.61*x[50]+0.1*x[51]-0.22*x[52]+0.22*x[53]-0.56*x[54]-0.59*x[55]-0.01*x[56]+0.91*x[57]-0.82*x[58]-0.06*x[59]+0.63*x[60]-0.7*x[61] == 0.57)
@constraint(m, e11, -x[2]-0.64*x[3]-0.69*x[4]+0.69*x[5]+0.61*x[6]-0.36*x[7]-0.53*x[8]-0.26*x[9]+0.05*x[10]-0.58*x[11]-0.04*x[12]-0.72*x[13]-0.42*x[14]-0.63*x[15]+0.4*x[16]-0.15*x[17]-0.84*x[18]+0.61*x[19]-0.37*x[20]-0.85*x[21]+0.31*x[22]+0.25*x[23]+0.67*x[24]-0.86*x[25]-0.79*x[26]-0.01*x[27]+0.52*x[28]-0.48*x[29]+0.21*x[30]+0.33*x[31]+0.27*x[32]-0.37*x[33]-0.25*x[34]+0.55*x[35]-0.06*x[36]-0.01*x[37]+0.21*x[38]+0.87*x[39]-0.32*x[40]+0.96*x[41]+0.19*x[42]-0.94*x[43]-0.84*x[44]-0.47*x[45]-0.14*x[46]-0.6*x[47]-0.31*x[48]+0.84*x[49]-0.85*x[50]-0.65*x[51]-0.09*x[52]+0.06*x[53]-0.36*x[54]-0.32*x[55]+0.94*x[56]-0.09*x[57]+0.59*x[58]+0.21*x[59]+0.86*x[60]-0.63*x[61] == 0.18)
@constraint(m, e12, -0.48*x[2]+0.34*x[3]+0.7*x[4]+0.59*x[5]+0.65*x[6]-0.87*x[7]+0.17*x[8]+0.32*x[9]+0.09*x[10]+0.49*x[11]-0.33*x[12]+0.38*x[13]-0.26*x[14]-0.09*x[15]-0.39*x[16]+0.05*x[17]-0.21*x[18]+0.74*x[19]-0.98*x[20]-0.22*x[21]-0.9*x[22]+0.34*x[23]-0.95*x[24]-0.58*x[25]+0.57*x[26]+0.68*x[27]-0.58*x[28]-0.38*x[29]+0.9*x[30]+0.38*x[31]-0.72*x[32]+0.21*x[33]+0.01*x[34]+0.06*x[35]-0.38*x[36]+0.77*x[37]-0.54*x[38]-0.57*x[39]-0.2*x[40]+0.39*x[41]-0.51*x[42]-0.45*x[43]-0.13*x[44]-0.09*x[45]-0.83*x[46]+0.42*x[47]+0.83*x[48]+0.75*x[49]-0.32*x[50]-0.69*x[51]-0.61*x[52]-0.39*x[53]+0.22*x[54]-0.25*x[55]-0.66*x[56]+0.41*x[57]-0.59*x[58]+0.44*x[59]-0.15*x[60]+0.53*x[61] == -0.19)
@constraint(m, e13, -0.22*x[2]+0.27*x[3]-0.44*x[4]-0.72*x[5]-0.3*x[6]+0.59*x[7]-0.72*x[8]+0.73*x[9]+0.24*x[10]-0.05*x[11]+0.56*x[12]+0.06*x[13]-0.23*x[14]+0.69*x[15]+0.41*x[16]+0.88*x[17]-0.66*x[18]+0.32*x[19]+0.48*x[20]+0.68*x[21]-0.5*x[22]-0.36*x[23]-0.69*x[24]-0.13*x[25]+0.68*x[26]+0.04*x[27]-0.82*x[28]-0.32*x[29]-0.41*x[31]+0.71*x[32]+0.56*x[33]+0.08*x[34]-0.76*x[35]+0.4*x[36]+0.45*x[37]-0.87*x[38]+0.26*x[39]-0.48*x[40]-0.9*x[41]-0.07*x[42]-0.16*x[43]+0.4*x[44]-0.04*x[45]+0.32*x[46]-0.6*x[47]+0.54*x[48]-0.55*x[49]+0.79*x[50]-0.48*x[51]-0.95*x[52]+0.56*x[53]+0.73*x[54]-0.22*x[55]-0.95*x[57]+0.79*x[58]-0.15*x[59]-0.6*x[60]+0.27*x[61] == -0.89)
@constraint(m, e14, 0.33*x[2]+0.74*x[3]-0.03*x[4]-0.03*x[5]-0.72*x[6]+0.08*x[7]-0.45*x[8]+0.03*x[9]-0.53*x[10]-0.33*x[11]+0.5*x[12]+0.56*x[13]+0.32*x[14]+0.72*x[15]-0.59*x[16]+0.13*x[17]+0.64*x[18]+0.72*x[19]+0.07*x[20]+0.06*x[21]+0.14*x[22]+0.07*x[23]+0.31*x[24]-0.86*x[25]-0.91*x[26]+0.81*x[27]+0.27*x[28]+0.11*x[29]-0.89*x[30]+0.72*x[31]+0.36*x[32]+0.15*x[33]+0.95*x[34]-0.36*x[35]-0.47*x[36]+0.1*x[37]+0.74*x[38]+0.68*x[39]+0.45*x[40]-0.02*x[41]-0.73*x[42]-0.42*x[43]-0.89*x[44]+0.16*x[45]+0.17*x[46]-0.25*x[47]+0.79*x[48]-0.51*x[49]+0.11*x[50]-0.95*x[51]+0.06*x[52]-0.45*x[53]-0.03*x[54]+0.76*x[55]-0.71*x[56]+0.01*x[57]-0.39*x[58]+0.61*x[59]-0.96*x[60]-0.48*x[61] == -0.19)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
