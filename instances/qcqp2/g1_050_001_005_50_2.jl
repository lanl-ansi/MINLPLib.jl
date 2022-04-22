using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[42], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[43], 0.0)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[18], 0.0)
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
set_lower_bound(x[50], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[47], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[6], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.82*x[2]*x[3]-1.58*x[2]*x[6]+1.6*x[2]*x[7]-1.62*x[2]*x[9]-0.32*x[2]*x[14]-1.86*x[2]*x[15]+0.22*x[2]*x[17]+0.46*x[2]*x[19]+1.28*x[2]*x[21]+1.9*x[2]*x[25]+0.14*x[2]*x[31]+0.8*x[2]*x[32]+0.14*x[2]*x[33]+1.44*x[2]*x[34]-1.26*x[2]*x[35]-1.42*x[2]*x[37]+1.16*x[2]*x[39]+0.92*x[2]*x[40]-0.1*x[2]*x[44]-1.1*x[2]*x[45]-1.72*x[2]*x[46]+0.04*x[2]*x[48]-1.32*x[2]*x[51]+1.52*x[3]*x[11]-1.08*x[3]*x[6]+1.96*x[3]*x[12]-1.64*x[3]*x[14]+1.96*x[3]*x[15]-1.06*x[3]*x[19]-0.26*x[3]*x[20]-0.3*x[3]*x[25]+0.38*x[3]*x[29]-0.8*x[3]*x[30]-1.9*x[3]*x[33]-0.58*x[3]*x[35]-1.76*x[3]*x[37]-0.66*x[3]*x[38]-1.28*x[3]*x[39]+0.76*x[3]*x[40]-1.6*x[3]*x[45]+1.08*x[3]*x[46]+1.84*x[3]*x[48]+0.28*x[3]*x[49]-0.06*x[3]*x[50]-1.9*x[3]*x[51]+0.24*x[4]*x[5]-0.68*x[4]*x[11]-0.38*x[4]*x[13]+1.94*x[4]*x[14]-0.5*x[4]*x[22]-0.84*x[4]*x[23]-0.34*x[4]*x[24]-1.32*x[4]*x[26]-0.84*x[4]*x[27]+1.72*x[4]*x[28]+1.76*x[4]*x[31]+1.6*x[4]*x[32]-1.92*x[4]*x[35]+1.42*x[4]*x[37]-0.02*x[4]*x[38]+0.6*x[4]*x[40]-0.76*x[4]*x[41]-0.1*x[4]*x[43]-1.74*x[4]*x[44]-1.22*x[4]*x[45]+0.94*x[4]*x[47]+1.44*x[5]*x[6]+0.84*x[5]*x[7]-0.42*x[5]*x[8]-0.38*x[5]*x[9]+1.98*x[5]*x[11]+0.88*x[5]*x[13]-0.34*x[5]*x[14]-0.54*x[5]*x[15]-1.42*x[5]*x[16]+1.92*x[5]*x[17]-0.74*x[5]*x[19]-0.02*x[5]*x[21]+1.86*x[5]*x[23]-1.3*x[5]*x[24]+1.56*x[5]*x[28]-1.92*x[5]*x[31]-1.6*x[5]*x[32]+0.6*x[5]*x[38]-0.6*x[5]*x[39]+1.38*x[5]*x[40]-0.48*x[5]*x[41]-0.28*x[5]*x[44]-1.66*x[5]*x[47]-0.82*x[5]*x[50]+1.06*x[6]*x[10]+1.54*x[6]*x[11]+0.14*x[6]*x[19]-0.56*x[6]*x[24]+0.96*x[6]*x[26]-1.54*x[6]*x[27]+2*x[6]*x[28]+1.84*x[6]*x[29]+1.1*x[6]*x[31]+1.52*x[6]*x[32]+x[6]*x[36]+0.52*x[6]*x[37]+0.14*x[6]*x[40]+0.16*x[6]*x[43]+1.08*x[6]*x[44]-1.54*x[6]*x[45]-1.64*x[6]*x[48]+0.92*x[6]*x[49]+1.06*x[6]*x[50]+0.4*x[7]*x[8]+0.6*x[7]*x[9]+1.54*x[7]*x[11]+1.36*x[7]*x[13]+0.8*x[7]*x[14]+1.7*x[7]*x[16]+0.18*x[7]*x[17]+0.72*x[7]*x[22]+1.88*x[7]*x[24]-1.92*x[7]*x[26]+0.36*x[7]*x[27]-0.5*x[7]*x[32]+1.82*x[7]*x[36]-1.78*x[7]*x[38]-1.12*x[7]*x[40]-1.22*x[7]*x[43]+0.62*x[7]*x[44]-1.68*x[7]*x[45]+0.72*x[7]*x[46]+0.16*x[7]*x[49]+(-1.44*x[8]*x[10])-0.48*x[8]*x[12]+1.5*x[8]*x[14]+1.38*x[8]*x[16]+0.1*x[8]*x[19]+0.9*x[8]*x[21]-0.1*x[8]*x[22]-0.7*x[8]*x[23]+1.64*x[8]*x[25]+0.74*x[8]*x[27]-1.2*x[8]*x[31]+1.5*x[8]*x[34]-1.6*x[8]*x[36]-1.02*x[8]*x[38]+0.3*x[8]*x[39]-1.98*x[8]*x[40]-x[8]*x[41]-1.92*x[8]*x[45]-1.84*x[8]*x[48]-1.94*x[8]*x[49]+0.06*x[9]*x[12]+1.44*x[9]*x[15]+0.88*x[9]*x[16]-1.02*x[9]*x[18]+1.92*x[9]*x[23]+1.76*x[9]*x[26]+1.3*x[9]*x[27]+0.66*x[9]*x[29]-1.06*x[9]*x[33]+0.62*x[9]*x[34]-1.12*x[9]*x[35]+1.02*x[9]*x[38]-1.06*x[9]*x[39]+1.2*x[9]*x[44]+0.92*x[9]*x[45]-0.44*x[9]*x[46]+1.3*x[9]*x[48]+1.2*x[9]*x[49]-0.68*x[9]*x[50]+1.92*x[10]*x[14]-1.6*x[10]*x[18]-1.32*x[10]*x[19]-0.9*x[10]*x[23]+1.48*x[10]*x[26]+0.64*x[10]*x[27]+0.2*x[10]*x[32]-0.88*x[10]*x[33]+0.64*x[10]*x[35]+0.14*x[10]*x[36]+0.88*x[10]*x[37]-0.88*x[10]*x[40]+1.22*x[10]*x[42]+0.44*x[10]*x[44]+0.76*x[10]*x[46]+0.2*x[10]*x[47]-0.84*x[10]*x[49]+0.74*x[11]*x[13]+1.08*x[11]*x[16]-1.92*x[11]*x[19]+1.5*x[11]*x[25]+1.82*x[11]*x[34]-1.84*x[11]*x[35]-1.68*x[11]*x[38]-0.94*x[11]*x[40]-0.9*x[11]*x[41]-0.04*x[11]*x[42]+1.74*x[11]*x[43]+0.22*x[11]*x[46]+1.16*x[11]*x[49]+1.88*x[12]*x[13]-1.32*x[12]*x[14]-1.72*x[12]*x[15]-0.52*x[12]*x[16]+0.96*x[12]*x[17]-0.92*x[12]*x[18]-1.1*x[12]*x[19]+0.94*x[12]*x[22]-1.58*x[12]*x[23]-0.8*x[12]*x[25]+1.08*x[12]*x[26]+0.72*x[12]*x[28]-0.08*x[12]*x[30]+0.84*x[12]*x[32]+0.22*x[12]*x[36]+1.42*x[12]*x[37]-0.42*x[12]*x[39]-0.22*x[12]*x[40]-1.78*x[12]*x[43]-0.24*x[12]*x[46]+1.22*x[12]*x[48]-1.46*x[12]*x[49]+1.36*x[13]*x[14]+1.46*x[13]*x[15]-0.74*x[13]*x[18]+1.2*x[13]*x[20]+0.78*x[13]*x[22]+0.68*x[13]*x[25]+0.86*x[13]*x[26]-1.82*x[13]*x[27]-1.66*x[13]*x[28]-0.22*x[13]*x[29]+0.68*x[13]*x[33]-1.56*x[13]*x[35]+1.94*x[13]*x[38]-0.56*x[13]*x[39]+0.48*x[13]*x[40]-0.64*x[13]*x[46]-1.06*x[13]*x[47]-0.54*x[13]*x[49]-1.64*x[13]*x[50]-1.98*x[13]*x[51]+0.36*x[14]*x[15]-1.9*x[14]*x[16]+1.62*x[14]*x[17]-1.64*x[14]*x[21]-0.72*x[14]*x[24]-0.08*x[14]*x[26]+0.68*x[14]*x[29]+1.22*x[14]*x[31]-0.54*x[14]*x[33]-0.82*x[14]*x[35]-1.06*x[14]*x[37]-0.58*x[14]*x[40]+0.68*x[14]*x[41]-0.8*x[14]*x[45]+1.9*x[14]*x[48]+1.86*x[14]*x[50]+0.58*x[14]*x[51]+1.96*x[15]*x[16]+1.72*x[15]*x[18]-1.56*x[15]*x[19]+0.32*x[15]*x[20]-0.74*x[15]*x[22]+1.1*x[15]*x[23]-1.7*x[15]*x[25]+1.48*x[15]*x[26]-1.96*x[15]*x[31]-0.28*x[15]*x[34]+0.2*x[15]*x[36]-0.58*x[15]*x[38]+1.88*x[15]*x[40]+1.9*x[15]*x[42]+1.58*x[15]*x[45]-0.7*x[15]*x[51]+(-0.66*x[16]*x[17])-1.42*x[16]*x[20]+0.88*x[16]*x[21]-0.5*x[16]*x[27]+1.7*x[16]*x[30]-0.5*x[16]*x[33]-0.88*x[16]*x[35]-0.08*x[16]*x[37]-0.46*x[16]*x[40]+0.48*x[16]*x[43]-0.82*x[16]*x[44]+1.9*x[16]*x[45]-1.24*x[16]*x[46]+1.68*x[16]*x[51]+1.54*x[17]*x[21]-1.42*x[17]*x[19]-0.08*x[17]*x[23]+0.42*x[17]*x[24]-1.52*x[17]*x[25]-0.78*x[17]*x[26]-0.44*x[17]*x[27]-0.46*x[17]*x[30]+0.28*x[17]*x[31]-0.92*x[17]*x[34]-1.42*x[17]*x[35]+0.04*x[17]*x[36]-0.82*x[17]*x[39]+0.8*x[17]*x[41]-0.56*x[17]*x[43]-0.54*x[17]*x[44]-1.1*x[17]*x[45]+1.7*x[17]*x[46]-0.62*x[17]*x[47]+0.5*x[17]*x[51]+0.14*x[18]*x[26]-0.62*x[18]*x[23]-0.02*x[18]*x[28]+1.44*x[18]*x[31]-0.98*x[18]*x[32]-1.82*x[18]*x[33]-0.42*x[18]*x[35]+0.26*x[18]*x[36]-0.46*x[18]*x[39]-0.28*x[18]*x[41]+1.54*x[18]*x[42]+0.58*x[18]*x[43]-1.4*x[18]*x[45]-1.06*x[18]*x[48]-0.96*x[18]*x[49]-1.18*x[18]*x[51]+1.8*x[19]*x[22]-0.14*x[19]*x[23]-1.62*x[19]*x[25]+1.28*x[19]*x[31]-0.2*x[19]*x[32]+0.86*x[19]*x[33]+0.98*x[19]*x[35]+1.02*x[19]*x[36]-1.34*x[19]*x[44]+0.54*x[19]*x[45]+0.66*x[19]*x[50]+1.54*x[20]*x[28]-1.48*x[20]*x[24]+0.4*x[20]*x[29]+0.36*x[20]*x[30]-1.54*x[20]*x[35]+0.36*x[20]*x[36]-1.8*x[20]*x[37]-1.74*x[20]*x[39]-1.26*x[20]*x[41]+1.78*x[20]*x[48]-1.82*x[20]*x[49]-0.66*x[20]*x[50]+(-0.78*x[21]*x[22])-1.36*x[21]*x[26]+1.48*x[21]*x[27]-1.12*x[21]*x[29]-0.98*x[21]*x[31]+1.84*x[21]*x[34]-0.14*x[21]*x[37]-1.42*x[21]*x[40]-1.62*x[21]*x[41]-1.38*x[21]*x[42]+1.48*x[21]*x[43]-1.66*x[21]*x[44]-0.02*x[21]*x[46]-1.5*x[21]*x[47]+1.56*x[22]*x[24]+0.82*x[22]*x[26]-1.24*x[22]*x[27]-0.72*x[22]*x[28]+0.36*x[22]*x[29]-0.68*x[22]*x[30]+1.6*x[22]*x[31]+1.8*x[22]*x[32]+0.28*x[22]*x[33]+1.88*x[22]*x[34]+0.62*x[22]*x[35]-0.04*x[22]*x[39]+0.68*x[22]*x[40]+1.04*x[22]*x[41]-0.94*x[22]*x[42]-1.18*x[22]*x[43]-1.8*x[22]*x[44]+0.76*x[22]*x[46]-0.62*x[22]*x[48]+(-0.3*x[23]*x[28])-1.68*x[23]*x[29]+0.54*x[23]*x[33]-1.06*x[23]*x[35]-1.32*x[23]*x[36]-1.54*x[23]*x[37]-0.66*x[23]*x[38]+0.16*x[23]*x[42]+0.74*x[23]*x[43]-0.06*x[23]*x[44]+0.94*x[23]*x[45]-0.52*x[23]*x[47]-1.14*x[23]*x[48]+1.84*x[23]*x[50]+0.54*x[23]*x[51]+1.84*x[24]*x[26]-1.04*x[24]*x[28]+0.48*x[24]*x[29]-0.94*x[24]*x[31]+0.88*x[24]*x[32]+1.62*x[24]*x[34]-0.84*x[24]*x[35]-1.4*x[24]*x[38]+0.82*x[24]*x[39]+1.64*x[24]*x[40]-0.36*x[24]*x[41]+0.3*x[24]*x[42]+0.98*x[24]*x[43]+0.48*x[24]*x[44]-0.32*x[24]*x[46]-1.54*x[24]*x[48]-1.58*x[24]*x[50]+0.2*x[24]*x[51]+0.16*x[25]*x[28]-1.42*x[25]*x[27]-0.62*x[25]*x[30]+1.68*x[25]*x[31]+0.98*x[25]*x[34]+1.98*x[25]*x[36]+0.92*x[25]*x[37]-0.18*x[25]*x[38]+0.14*x[25]*x[40]+0.36*x[25]*x[41]+1.06*x[25]*x[43]+0.5*x[25]*x[44]+0.08*x[25]*x[45]+1.64*x[25]*x[46]-1.94*x[25]*x[49]-1.5*x[25]*x[51]+(-1.56*x[26]*x[27])-1.3*x[26]*x[29]-1.82*x[26]*x[30]-0.46*x[26]*x[32]-1.14*x[26]*x[33]-0.94*x[26]*x[34]-0.64*x[26]*x[36]+1.2*x[26]*x[39]-0.54*x[26]*x[40]-1.52*x[26]*x[41]-1.52*x[26]*x[42]-1.9*x[26]*x[46]+0.12*x[26]*x[47]-1.62*x[26]*x[49]+1.26*x[27]*x[32]-0.38*x[27]*x[33]-0.64*x[27]*x[34]-0.72*x[27]*x[36]+0.18*x[27]*x[37]-0.84*x[27]*x[38]+0.5*x[27]*x[39]-1.66*x[27]*x[41]+0.32*x[27]*x[42]-0.78*x[27]*x[44]-0.24*x[27]*x[45]+0.24*x[27]*x[48]+0.32*x[28]*x[29]+1.64*x[28]*x[30]-1.94*x[28]*x[31]+0.3*x[28]*x[32]+0.54*x[28]*x[34]-1.84*x[28]*x[35]-0.12*x[28]*x[36]-0.92*x[28]*x[38]-x[28]*x[40]+1.48*x[28]*x[42]+0.74*x[28]*x[44]+0.88*x[28]*x[46]+1.12*x[28]*x[48]+0.82*x[28]*x[49]+(-0.84*x[29]*x[30])-1.2*x[29]*x[34]-1.86*x[29]*x[37]-0.1*x[29]*x[40]-1.6*x[29]*x[45]+1.02*x[29]*x[47]-0.6*x[29]*x[48]-1.1*x[29]*x[49]+1.28*x[30]*x[31]+0.42*x[30]*x[33]-0.22*x[30]*x[34]-1.62*x[30]*x[35]+0.92*x[30]*x[39]-0.88*x[30]*x[43]-1.38*x[30]*x[44]-0.76*x[30]*x[45]+0.4*x[30]*x[47]-0.82*x[30]*x[48]+1.2*x[30]*x[50]+0.76*x[31]*x[34]-1.92*x[31]*x[32]+0.34*x[31]*x[35]+0.32*x[31]*x[40]-0.58*x[31]*x[41]-1.22*x[31]*x[43]+1.84*x[31]*x[47]+1.66*x[31]*x[48]+1.22*x[31]*x[49]+(-0.28*x[32]*x[37])-0.68*x[32]*x[38]+1.34*x[32]*x[39]+1.76*x[32]*x[40]-1.36*x[32]*x[42]+0.7*x[32]*x[43]+1.48*x[32]*x[44]+1.14*x[32]*x[45]+0.5*x[32]*x[47]+1.38*x[32]*x[49]+1.62*x[32]*x[50]+0.06*x[33]*x[34]+1.8*x[33]*x[36]+1.08*x[33]*x[38]+1.68*x[33]*x[39]-1.88*x[33]*x[41]+1.3*x[33]*x[42]-0.88*x[33]*x[43]-0.66*x[33]*x[45]-0.64*x[33]*x[46]+0.44*x[33]*x[50]+0.62*x[33]*x[51]+1.8*x[34]*x[35]+0.82*x[34]*x[38]+0.94*x[34]*x[41]+1.34*x[34]*x[42]-1.5*x[34]*x[46]-1.6*x[34]*x[47]-1.08*x[34]*x[50]+1.18*x[35]*x[37]-x[35]*x[38]-0.36*x[35]*x[41]-0.02*x[35]*x[42]-1.36*x[35]*x[44]+1.78*x[35]*x[45]-0.2*x[35]*x[48]-1.2*x[35]*x[49]+(-0.66*x[36]*x[38])-0.02*x[36]*x[41]+1.28*x[36]*x[42]+1.32*x[36]*x[43]+0.44*x[36]*x[44]+1.18*x[36]*x[45]+1.1*x[36]*x[47]+1.6*x[36]*x[49]-1.88*x[36]*x[50]+1.1*x[36]*x[51]+0.6*x[37]*x[39]-0.22*x[37]*x[40]-0.9*x[37]*x[41]+1.88*x[37]*x[44]-0.24*x[37]*x[45]-0.34*x[37]*x[47]+1.86*x[37]*x[48]+0.48*x[37]*x[49]+(-1.46*x[38]*x[39])-1.1*x[38]*x[40]+1.72*x[38]*x[43]+1.1*x[38]*x[45]+0.46*x[38]*x[46]+(-1.28*x[39]*x[40])-0.6*x[39]*x[41]-0.16*x[39]*x[42]+0.54*x[39]*x[43]-0.62*x[39]*x[44]-0.16*x[39]*x[46]-0.74*x[39]*x[49]+0.32*x[40]*x[42]-1.52*x[40]*x[44]+1.26*x[40]*x[47]+1.44*x[41]*x[42]-1.76*x[41]*x[45]+0.04*x[41]*x[46]-0.6*x[41]*x[47]-0.1*x[41]*x[48]+1.84*x[41]*x[50]+1.22*x[42]*x[43]-0.54*x[42]*x[45]-0.8*x[42]*x[46]+0.42*x[42]*x[47]-1.72*x[42]*x[48]+0.2*x[43]*x[46]-0.7*x[43]*x[45]+0.7*x[43]*x[48]-1.66*x[43]*x[49]+0.58*x[44]*x[47]+0.32*x[44]*x[48]+0.56*x[44]*x[50]+0.42*x[45]*x[46]+1.96*x[45]*x[47]-0.28*x[45]*x[49]+(-1.66*x[46]*x[47])-0.06*x[46]*x[50]+1.94*x[47]*x[48]-0.86*x[47]*x[49]-1.56*x[47]*x[50]+0.3*x[48]*x[49]+1.3*x[48]*x[51]+(-0.98*x[49]*x[50])-0.52*x[49]*x[51]+0.63*x[3]*x[3]+0.81*x[5]*x[5]+0.97*x[7]*x[7]+0.48*x[8]*x[8]-0.58*x[9]*x[9]-0.49*x[14]*x[14]+0.38*x[18]*x[18]+0.07*x[19]*x[19]+0.54*x[20]*x[20]-0.17*x[25]*x[25]+0.03*x[27]*x[27]+0.07*x[29]*x[29]+0.08*x[32]*x[32]+0.07*x[33]*x[33]+0.97*x[35]*x[35]-0.3*x[37]*x[37]+0.59*x[38]*x[38]-0.45*x[39]*x[39]+0.73*x[40]*x[40]+0.81*x[43]*x[43]-0.36*x[45]*x[45]+0.54*x[46]*x[46]+0.46*x[47]*x[47]+0.15*x[48]*x[48]-0.72*x[49]*x[49]-0.75*x[50]*x[50]-0.17*x[51]*x[51]-0.78*x[2]+0.9*x[3]-0.75*x[4]-0.96*x[5]-0.52*x[6]-0.35*x[7]-0.95*x[8]+0.46*x[9]+0.82*x[10]-0.05*x[11]-0.1*x[12]+0.56*x[13]+0.26*x[14]-0.95*x[15]+0.11*x[16]+0.57*x[17]+0.44*x[18]-0.19*x[19]+0.64*x[20]+0.58*x[21]+0.27*x[22]-0.03*x[23]-0.47*x[24]+0.38*x[25]-0.76*x[26]+0.96*x[27]+0.8*x[28]+0.2*x[29]-0.81*x[30]-0.34*x[31]+0.83*x[32]-0.11*x[33]+0.57*x[34]-0.24*x[35]+0.02*x[37]+0.64*x[38]+0.23*x[39]+0.4*x[40]+0.14*x[41]-0.82*x[42]+0.23*x[43]-0.65*x[44]-0.06*x[45]-0.83*x[46]-0.11*x[47]+0.66*x[48]+0.44*x[49]-0.03*x[50]-0.53*x[51])+x[1] == 0.0)
@NLconstraint(m, e2, 0.96*x[2]*x[3]+1.2*x[2]*x[6]+0.42*x[2]*x[7]+0.9*x[2]*x[9]-0.58*x[2]*x[10]-0.06*x[2]*x[11]+1.32*x[2]*x[12]+0.72*x[2]*x[13]-0.8*x[2]*x[14]-1.74*x[2]*x[15]+0.46*x[2]*x[16]+0.48*x[2]*x[17]-0.9*x[2]*x[18]-0.3*x[2]*x[22]-1.64*x[2]*x[23]-1.04*x[2]*x[24]+1.92*x[2]*x[26]-1.78*x[2]*x[27]-0.18*x[2]*x[28]-0.48*x[2]*x[29]-1.08*x[2]*x[30]+1.62*x[2]*x[31]+0.68*x[2]*x[33]+1.9*x[2]*x[35]+1.72*x[2]*x[36]+0.12*x[2]*x[37]+0.28*x[2]*x[40]-0.7*x[2]*x[43]-0.66*x[2]*x[44]-0.72*x[2]*x[47]+0.24*x[2]*x[48]-x[2]*x[50]+1.52*x[3]*x[4]+0.46*x[3]*x[7]-1.74*x[3]*x[10]-1.5*x[3]*x[12]-1.68*x[3]*x[15]+0.24*x[3]*x[17]-1.5*x[3]*x[19]-0.38*x[3]*x[20]-0.56*x[3]*x[22]+1.58*x[3]*x[24]+1.38*x[3]*x[27]+1.24*x[3]*x[32]-0.14*x[3]*x[33]+1.22*x[3]*x[38]+1.92*x[3]*x[39]+0.84*x[3]*x[42]-0.16*x[3]*x[43]-1.52*x[3]*x[44]+1.32*x[3]*x[45]+1.08*x[3]*x[46]+0.66*x[3]*x[47]+0.42*x[3]*x[49]+0.02*x[4]*x[5]+1.86*x[4]*x[6]+0.66*x[4]*x[8]-0.2*x[4]*x[10]+0.5*x[4]*x[11]-1.48*x[4]*x[18]+1.16*x[4]*x[19]-0.44*x[4]*x[22]-0.56*x[4]*x[26]-1.32*x[4]*x[30]+1.34*x[4]*x[32]+0.84*x[4]*x[34]-0.34*x[4]*x[35]+0.2*x[4]*x[36]+1.26*x[4]*x[37]-0.72*x[4]*x[39]+1.12*x[4]*x[41]-0.58*x[4]*x[43]+1.64*x[4]*x[45]+1.8*x[4]*x[48]+1.66*x[4]*x[49]-0.2*x[4]*x[50]+(-0.16*x[5]*x[7])-1.92*x[5]*x[8]-0.54*x[5]*x[9]+0.38*x[5]*x[10]-0.1*x[5]*x[11]-0.74*x[5]*x[14]+0.78*x[5]*x[15]-1.48*x[5]*x[17]+0.22*x[5]*x[19]-0.26*x[5]*x[20]+0.26*x[5]*x[21]-0.36*x[5]*x[22]-0.34*x[5]*x[23]+1.02*x[5]*x[24]-0.86*x[5]*x[25]-1.2*x[5]*x[26]+0.16*x[5]*x[27]-1.18*x[5]*x[28]-1.78*x[5]*x[29]-0.24*x[5]*x[31]+1.16*x[5]*x[37]-0.96*x[5]*x[38]-0.4*x[5]*x[39]-1.52*x[5]*x[43]-0.24*x[5]*x[49]+0.96*x[5]*x[50]+0.52*x[5]*x[51]+1.62*x[6]*x[12]-1.54*x[6]*x[9]-1.26*x[6]*x[13]-0.02*x[6]*x[15]+0.28*x[6]*x[19]+1.1*x[6]*x[20]-1.7*x[6]*x[24]+0.3*x[6]*x[28]+1.88*x[6]*x[29]+1.5*x[6]*x[31]+0.52*x[6]*x[32]+0.26*x[6]*x[33]+1.7*x[6]*x[34]+0.68*x[6]*x[37]-1.7*x[6]*x[39]-0.04*x[6]*x[40]-0.24*x[6]*x[43]+1.32*x[6]*x[46]-0.06*x[6]*x[47]-1.34*x[6]*x[48]+0.52*x[6]*x[49]-1.48*x[6]*x[51]+(-0.54*x[7]*x[8])-0.72*x[7]*x[11]+1.96*x[7]*x[13]+0.64*x[7]*x[14]-1.8*x[7]*x[15]-1.7*x[7]*x[18]+0.58*x[7]*x[19]+1.26*x[7]*x[25]-0.52*x[7]*x[27]+1.92*x[7]*x[28]+1.12*x[7]*x[29]+1.32*x[7]*x[32]-1.38*x[7]*x[40]+1.04*x[7]*x[41]-0.64*x[7]*x[42]-1.22*x[7]*x[45]+0.3*x[7]*x[48]-0.84*x[7]*x[50]+1.88*x[8]*x[11]+0.18*x[8]*x[12]-1.78*x[8]*x[13]+1.86*x[8]*x[16]+0.3*x[8]*x[18]-1.2*x[8]*x[19]+1.54*x[8]*x[20]-1.62*x[8]*x[21]-0.76*x[8]*x[24]-0.6*x[8]*x[31]+1.06*x[8]*x[32]-1.86*x[8]*x[33]-1.42*x[8]*x[34]-0.76*x[8]*x[36]-0.34*x[8]*x[37]-1.2*x[8]*x[40]-1.18*x[8]*x[41]+0.6*x[8]*x[44]-0.36*x[8]*x[48]+1.68*x[8]*x[49]+0.64*x[8]*x[50]+(-1.2*x[9]*x[10])-1.88*x[9]*x[13]+0.46*x[9]*x[18]+1.32*x[9]*x[20]+1.54*x[9]*x[24]+0.18*x[9]*x[26]-0.76*x[9]*x[27]-0.68*x[9]*x[28]-1.92*x[9]*x[29]+0.94*x[9]*x[30]-0.26*x[9]*x[31]-1.58*x[9]*x[32]+0.22*x[9]*x[35]+1.98*x[9]*x[39]-0.62*x[9]*x[41]+0.44*x[9]*x[43]-0.12*x[9]*x[44]+0.18*x[9]*x[47]+1.4*x[9]*x[48]-1.88*x[9]*x[50]-0.36*x[9]*x[51]+1.98*x[10]*x[13]+0.98*x[10]*x[14]-1.82*x[10]*x[15]-1.38*x[10]*x[18]+0.58*x[10]*x[19]-1.76*x[10]*x[22]-0.04*x[10]*x[23]-0.74*x[10]*x[25]-1.28*x[10]*x[28]+0.66*x[10]*x[30]+0.56*x[10]*x[35]+0.92*x[10]*x[36]-1.84*x[10]*x[40]+0.8*x[10]*x[41]+1.78*x[10]*x[42]-0.2*x[10]*x[45]+1.26*x[10]*x[46]-0.58*x[10]*x[48]+0.44*x[10]*x[50]+0.98*x[11]*x[14]-0.52*x[11]*x[12]+1.3*x[11]*x[16]+0.12*x[11]*x[27]+1.96*x[11]*x[28]-0.18*x[11]*x[29]-1.02*x[11]*x[32]+1.22*x[11]*x[33]+0.8*x[11]*x[35]-1.2*x[11]*x[36]+1.72*x[11]*x[37]+1.76*x[11]*x[38]-0.64*x[11]*x[40]+0.44*x[11]*x[41]-0.48*x[11]*x[42]-1.44*x[11]*x[47]+1.12*x[12]*x[13]+1.76*x[12]*x[16]-1.22*x[12]*x[17]-0.78*x[12]*x[18]+0.22*x[12]*x[20]+0.14*x[12]*x[22]-0.76*x[12]*x[23]+1.04*x[12]*x[28]-1.68*x[12]*x[29]+1.54*x[12]*x[30]-0.74*x[12]*x[34]-1.84*x[12]*x[35]-1.42*x[12]*x[36]+0.54*x[12]*x[41]+0.02*x[12]*x[42]-0.32*x[12]*x[45]+0.9*x[12]*x[46]-x[12]*x[50]-0.08*x[12]*x[51]+(-0.64*x[13]*x[16])-0.86*x[13]*x[17]-1.22*x[13]*x[20]+0.24*x[13]*x[21]-1.06*x[13]*x[23]+0.62*x[13]*x[25]-1.5*x[13]*x[26]-0.4*x[13]*x[27]-1.08*x[13]*x[29]-1.4*x[13]*x[30]-0.2*x[13]*x[31]-1.12*x[13]*x[32]+1.88*x[13]*x[36]+0.94*x[13]*x[38]-0.44*x[13]*x[39]+1.34*x[13]*x[40]-1.38*x[13]*x[42]+0.5*x[13]*x[46]+0.08*x[14]*x[15]-1.28*x[14]*x[17]-1.54*x[14]*x[19]-0.82*x[14]*x[20]+0.52*x[14]*x[26]-0.82*x[14]*x[27]-0.66*x[14]*x[28]-0.74*x[14]*x[29]-0.78*x[14]*x[30]+1.9*x[14]*x[33]+0.26*x[14]*x[37]+0.94*x[14]*x[38]-0.64*x[14]*x[39]-0.96*x[14]*x[41]+0.72*x[14]*x[43]+0.88*x[14]*x[45]+1.48*x[14]*x[49]+0.66*x[14]*x[50]+0.08*x[15]*x[17]-0.06*x[15]*x[18]+1.72*x[15]*x[19]-1.72*x[15]*x[20]-1.42*x[15]*x[22]-0.38*x[15]*x[23]-0.16*x[15]*x[25]+0.68*x[15]*x[27]-0.5*x[15]*x[29]-0.7*x[15]*x[34]-0.88*x[15]*x[35]-0.08*x[15]*x[37]+0.2*x[15]*x[39]+1.16*x[15]*x[40]-1.08*x[15]*x[41]-0.28*x[15]*x[42]-0.2*x[15]*x[47]+1.14*x[15]*x[49]-0.32*x[15]*x[50]+(-0.94*x[16]*x[23])-0.38*x[16]*x[26]-1.68*x[16]*x[29]-0.36*x[16]*x[30]+1.58*x[16]*x[31]-1.14*x[16]*x[32]-0.22*x[16]*x[33]+0.32*x[16]*x[34]+1.2*x[16]*x[36]-1.44*x[16]*x[38]-0.36*x[16]*x[40]-0.64*x[16]*x[42]-0.2*x[16]*x[43]+0.72*x[16]*x[46]-0.8*x[16]*x[48]-0.92*x[16]*x[50]+1.98*x[17]*x[18]-1.18*x[17]*x[20]+0.54*x[17]*x[21]+1.94*x[17]*x[23]-0.38*x[17]*x[27]+1.7*x[17]*x[28]-1.06*x[17]*x[30]-1.28*x[17]*x[32]+0.28*x[17]*x[36]+1.14*x[17]*x[37]-0.54*x[17]*x[42]+1.2*x[17]*x[44]-0.62*x[17]*x[46]+0.16*x[18]*x[20]-0.66*x[18]*x[21]+1.64*x[18]*x[23]+0.04*x[18]*x[24]-0.62*x[18]*x[25]-1.44*x[18]*x[26]+0.78*x[18]*x[28]+0.16*x[18]*x[33]-0.66*x[18]*x[34]-1.94*x[18]*x[35]-0.86*x[18]*x[37]+1.12*x[18]*x[40]+1.56*x[18]*x[42]-1.22*x[18]*x[43]-1.46*x[18]*x[44]-1.98*x[18]*x[45]-0.24*x[18]*x[46]+0.34*x[18]*x[47]-1.38*x[18]*x[48]+0.14*x[18]*x[49]-1.72*x[18]*x[51]+(-0.08*x[19]*x[21])-0.94*x[19]*x[22]+x[19]*x[24]-1.26*x[19]*x[27]-0.6*x[19]*x[30]+0.26*x[19]*x[31]+0.5*x[19]*x[34]+1.56*x[19]*x[36]-0.96*x[19]*x[37]+0.24*x[19]*x[38]+1.68*x[19]*x[41]-0.18*x[19]*x[42]-1.76*x[19]*x[44]+1.34*x[19]*x[46]+(-0.66*x[20]*x[22])-0.7*x[20]*x[23]-1.78*x[20]*x[24]+1.66*x[20]*x[27]+0.28*x[20]*x[28]+1.64*x[20]*x[30]-1.38*x[20]*x[31]+0.92*x[20]*x[33]+1.36*x[20]*x[37]+0.52*x[20]*x[39]+1.54*x[20]*x[40]+1.72*x[20]*x[42]+0.54*x[20]*x[43]-0.78*x[20]*x[44]+1.64*x[20]*x[46]+0.3*x[20]*x[50]+0.76*x[21]*x[24]-1.44*x[21]*x[22]-0.1*x[21]*x[25]+1.32*x[21]*x[30]+0.56*x[21]*x[32]+1.7*x[21]*x[34]-1.96*x[21]*x[35]-1.38*x[21]*x[36]+1.2*x[21]*x[37]+1.66*x[21]*x[38]-1.98*x[21]*x[43]+0.04*x[21]*x[46]+0.42*x[21]*x[48]+0.16*x[22]*x[24]-0.1*x[22]*x[23]-0.84*x[22]*x[26]-1.96*x[22]*x[27]-1.76*x[22]*x[29]-0.3*x[22]*x[30]+1.86*x[22]*x[31]+1.72*x[22]*x[34]-1.52*x[22]*x[36]-1.18*x[22]*x[38]-1.82*x[22]*x[39]+1.7*x[22]*x[40]-0.24*x[22]*x[42]-0.28*x[22]*x[43]-0.62*x[22]*x[44]+0.96*x[22]*x[45]+0.98*x[22]*x[46]+0.38*x[22]*x[49]-1.6*x[22]*x[50]+(-0.88*x[23]*x[29])-0.76*x[23]*x[30]+0.34*x[23]*x[31]+1.44*x[23]*x[32]+0.42*x[23]*x[33]+0.24*x[23]*x[35]-0.2*x[23]*x[36]-0.58*x[23]*x[37]+0.72*x[23]*x[41]-1.1*x[23]*x[46]+(-1.46*x[24]*x[25])-1.76*x[24]*x[26]-1.36*x[24]*x[27]-1.64*x[24]*x[28]+0.68*x[24]*x[29]-1.16*x[24]*x[33]+0.36*x[24]*x[34]-1.4*x[24]*x[37]+0.12*x[24]*x[39]+0.4*x[24]*x[42]-1.24*x[24]*x[43]-1.02*x[24]*x[50]+0.96*x[25]*x[28]+2*x[25]*x[30]+0.34*x[25]*x[31]+1.36*x[25]*x[33]+0.8*x[25]*x[35]+1.26*x[25]*x[37]-1.26*x[25]*x[38]+1.92*x[25]*x[39]-1.46*x[25]*x[40]-0.34*x[25]*x[41]+1.16*x[25]*x[43]+0.58*x[25]*x[45]-1.64*x[25]*x[47]+(-1.04*x[26]*x[27])-1.62*x[26]*x[28]+1.34*x[26]*x[29]+1.08*x[26]*x[32]+0.6*x[26]*x[33]-0.02*x[26]*x[34]-0.36*x[26]*x[35]+1.02*x[26]*x[39]-0.4*x[26]*x[40]-0.86*x[26]*x[42]+1.56*x[26]*x[43]-0.88*x[26]*x[44]+0.14*x[26]*x[47]+x[26]*x[50]+1.02*x[26]*x[51]+0.88*x[27]*x[28]+0.66*x[27]*x[29]+0.04*x[27]*x[30]-1.18*x[27]*x[31]+1.22*x[27]*x[32]+0.54*x[27]*x[33]+0.92*x[27]*x[36]-0.72*x[27]*x[37]+0.5*x[27]*x[39]+1.74*x[27]*x[45]-1.92*x[27]*x[47]-1.28*x[27]*x[48]+0.18*x[27]*x[49]+1.66*x[27]*x[50]+(-1.6*x[28]*x[29])-0.38*x[28]*x[30]+0.76*x[28]*x[31]+1.26*x[28]*x[32]-0.28*x[28]*x[33]-0.92*x[28]*x[35]+1.38*x[28]*x[36]+0.12*x[28]*x[37]-0.04*x[28]*x[38]+0.2*x[28]*x[41]+0.32*x[28]*x[44]-0.24*x[28]*x[46]+0.32*x[29]*x[31]+0.62*x[29]*x[32]-1.78*x[29]*x[42]+1.14*x[29]*x[50]+0.58*x[29]*x[51]+0.68*x[30]*x[31]+0.1*x[30]*x[34]+1.58*x[30]*x[35]-1.22*x[30]*x[40]+1.36*x[30]*x[41]+0.26*x[30]*x[47]+0.04*x[30]*x[48]+0.4*x[30]*x[49]+1.2*x[31]*x[34]-0.42*x[31]*x[32]+0.56*x[31]*x[36]-1.22*x[31]*x[38]-1.82*x[31]*x[40]-1.88*x[31]*x[41]+0.54*x[31]*x[47]+1.74*x[31]*x[49]+0.02*x[32]*x[36]-1.1*x[32]*x[33]-0.16*x[32]*x[37]-0.08*x[32]*x[38]-0.8*x[32]*x[43]-0.5*x[32]*x[45]-0.4*x[32]*x[46]+1.24*x[32]*x[47]+0.82*x[32]*x[48]-1.6*x[32]*x[49]+1.74*x[32]*x[50]+1.48*x[33]*x[39]+1.98*x[33]*x[43]+0.54*x[33]*x[44]-0.2*x[33]*x[47]-0.18*x[33]*x[48]+0.76*x[33]*x[50]-1.32*x[33]*x[51]+1.42*x[34]*x[36]-0.08*x[34]*x[39]-1.56*x[34]*x[40]-1.1*x[34]*x[41]+0.96*x[34]*x[42]+1.18*x[34]*x[51]+0.78*x[35]*x[36]+1.84*x[35]*x[38]+0.4*x[35]*x[39]+0.38*x[35]*x[44]+0.08*x[35]*x[47]-0.82*x[35]*x[48]-0.24*x[35]*x[51]+0.16*x[36]*x[37]+1.14*x[36]*x[38]-1.98*x[36]*x[42]-1.34*x[36]*x[43]+0.02*x[36]*x[44]+1.26*x[36]*x[45]+0.36*x[36]*x[50]+0.34*x[36]*x[51]+0.38*x[37]*x[38]-1.64*x[37]*x[41]-0.02*x[37]*x[46]-1.98*x[37]*x[48]+1.76*x[37]*x[50]+1.66*x[38]*x[43]-0.56*x[38]*x[44]+1.06*x[38]*x[50]-0.54*x[38]*x[51]+(-1.06*x[39]*x[40])-1.14*x[39]*x[41]+0.72*x[39]*x[42]+0.5*x[39]*x[43]-0.76*x[39]*x[44]-0.94*x[39]*x[46]+1.34*x[39]*x[50]+1.32*x[39]*x[51]+(-1.42*x[40]*x[41])-1.54*x[40]*x[42]-0.64*x[40]*x[45]+1.42*x[40]*x[48]+2*x[40]*x[49]-0.7*x[40]*x[50]+0.52*x[41]*x[51]-1.82*x[41]*x[48]+1.06*x[42]*x[45]-1.84*x[42]*x[43]-0.24*x[42]*x[46]+1.04*x[42]*x[47]+1.36*x[42]*x[48]-1.06*x[42]*x[50]+1.5*x[43]*x[51]-0.58*x[43]*x[44]+0.58*x[44]*x[50]+1.42*x[45]*x[47]-0.74*x[45]*x[46]-1.46*x[45]*x[48]+0.8*x[45]*x[49]+0.76*x[45]*x[51]+1.78*x[46]*x[48]+0.04*x[46]*x[50]+0.06*x[47]*x[49]-0.24*x[47]*x[50]-0.54*x[47]*x[51]+0.2*x[48]*x[51]+0.44*x[49]*x[51]+(-0.57*x[2]*x[2])-0.58*x[3]*x[3]-0.68*x[4]*x[4]-0.96*x[5]*x[5]+0.87*x[6]*x[6]-0.92*x[7]*x[7]+0.63*x[8]*x[8]+0.16*x[9]*x[9]+0.43*x[11]*x[11]-0.33*x[12]*x[12]+0.01*x[13]*x[13]-0.87*x[14]*x[14]+0.97*x[16]*x[16]-0.92*x[17]*x[17]-0.31*x[19]*x[19]-0.72*x[24]*x[24]-0.75*x[26]*x[26]-0.33*x[27]*x[27]-0.45*x[28]*x[28]+0.1*x[29]*x[29]-0.28*x[31]*x[31]+0.64*x[33]*x[33]-0.7*x[34]*x[34]-0.4*x[37]*x[37]-0.3*x[39]*x[39]+0.63*x[40]*x[40]+0.81*x[42]*x[42]+0.3*x[44]*x[44]-0.02*x[45]*x[45]+0.79*x[47]*x[47]+0.56*x[49]*x[49]-0.38*x[50]*x[50]+0.24*x[51]*x[51]+0.65*x[2]+0.36*x[3]-0.73*x[4]-0.72*x[5]+0.25*x[6]-0.07*x[7]+0.64*x[8]+0.27*x[9]+0.18*x[10]-0.13*x[11]+0.28*x[12]+0.19*x[13]+0.69*x[14]+0.15*x[15]+0.18*x[16]-0.2*x[17]-0.42*x[19]+0.01*x[20]-0.17*x[21]-0.78*x[22]-0.12*x[23]+0.74*x[24]+0.96*x[25]+0.49*x[26]+0.02*x[27]+0.91*x[28]+0.72*x[29]-0.27*x[30]-0.93*x[31]+0.25*x[32]+0.77*x[33]+0.52*x[34]+0.94*x[35]+0.26*x[36]-0.43*x[37]+0.92*x[38]+0.58*x[39]+0.47*x[40]+0.59*x[41]-0.09*x[42]-0.34*x[43]-0.05*x[44]+0.69*x[45]-0.17*x[46]+0.44*x[47]+0.16*x[48]-0.01*x[49]-0.37*x[50]-0.7*x[51] <= 11.74)
@constraint(m, e3, -0.49*x[2]-0.73*x[3]-0.08*x[4]+0.95*x[5]-0.31*x[6]-0.22*x[7]-0.01*x[8]+0.43*x[9]+0.63*x[10]+0.09*x[11]-0.79*x[12]+0.21*x[13]+0.39*x[14]+0.39*x[15]+0.24*x[16]+0.65*x[17]+0.86*x[18]+0.78*x[19]-0.18*x[20]-0.25*x[21]+0.07*x[22]+0.93*x[23]-0.65*x[24]-0.85*x[25]+0.97*x[26]-0.36*x[27]-0.22*x[28]-0.62*x[29]-0.06*x[30]-0.5*x[31]-0.06*x[32]+0.66*x[33]-0.1*x[34]-0.43*x[35]+0.65*x[36]-0.49*x[37]-0.88*x[38]-0.2*x[39]+0.97*x[40]-0.29*x[41]-0.12*x[42]+0.62*x[43]+0.67*x[44]-0.42*x[45]+0.09*x[46]-0.78*x[47]-0.25*x[48]+0.65*x[49]-0.32*x[50]-0.67*x[51] == 0.01)
@constraint(m, e4, -0.01*x[2]+0.4*x[3]+0.25*x[4]-0.66*x[5]-0.01*x[6]-0.97*x[7]-0.22*x[8]+0.2*x[9]-0.11*x[10]-0.63*x[11]-0.86*x[12]-0.1*x[13]-0.83*x[14]+0.52*x[15]+0.1*x[16]+0.88*x[17]-0.78*x[18]+0.84*x[19]+0.83*x[20]-0.83*x[21]-0.9*x[22]-0.22*x[23]-0.99*x[24]-0.54*x[25]+0.44*x[26]-0.5*x[27]-0.34*x[28]-0.11*x[29]-0.33*x[30]+0.29*x[31]+0.64*x[32]+0.69*x[33]-0.98*x[34]+0.44*x[35]-0.69*x[36]+0.18*x[37]-0.05*x[38]-0.78*x[39]+0.16*x[40]-0.69*x[41]+0.29*x[42]-0.81*x[43]+0.14*x[44]-0.12*x[45]-0.23*x[46]-0.82*x[47]-0.6*x[48]+0.54*x[49]+0.31*x[50]-0.84*x[51] == 0.27)
@constraint(m, e5, 0.18*x[2]+0.63*x[3]+0.03*x[4]+0.8*x[5]+0.17*x[6]-0.91*x[7]+0.94*x[8]-0.1*x[9]+0.35*x[10]+0.53*x[11]-0.93*x[12]+0.66*x[13]+0.28*x[14]-0.59*x[15]+0.22*x[16]+0.53*x[17]+0.74*x[18]-0.58*x[19]+0.06*x[20]-0.02*x[21]-0.96*x[22]-0.43*x[23]+0.8*x[24]+0.76*x[25]-0.85*x[26]-0.69*x[27]-0.4*x[28]-x[29]+0.01*x[30]+0.88*x[31]+0.82*x[32]+0.6*x[33]+0.65*x[34]+0.51*x[35]+0.41*x[36]-0.69*x[37]-0.45*x[38]-0.6*x[39]+0.53*x[40]-0.76*x[41]+0.78*x[42]+0.6*x[43]-0.72*x[44]-0.74*x[45]+0.43*x[46]-0.77*x[47]-0.88*x[48]-0.55*x[49]+0.93*x[50]-0.59*x[51] == -0.5)
@constraint(m, e6, 0.66*x[2]-0.95*x[3]+0.23*x[4]-0.04*x[5]-0.69*x[6]-0.34*x[7]-0.52*x[8]-0.7*x[9]-0.42*x[10]-0.59*x[11]-0.58*x[12]+0.27*x[13]+0.8*x[14]+0.85*x[15]-0.1*x[16]+0.72*x[17]-0.87*x[18]+0.42*x[19]-0.34*x[20]+0.51*x[21]-0.83*x[22]-0.12*x[23]-0.8*x[24]+0.47*x[25]+0.66*x[26]+0.17*x[27]-0.78*x[28]+0.45*x[29]-0.81*x[30]-0.98*x[31]+0.16*x[32]+0.53*x[33]+0.99*x[34]-0.59*x[35]+0.41*x[36]-0.07*x[37]-0.03*x[38]+0.66*x[39]-0.27*x[40]-0.56*x[41]-0.01*x[42]+0.64*x[43]+0.29*x[44]+0.29*x[45]-0.03*x[46]+0.63*x[47]-0.81*x[48]-0.89*x[50]-0.02*x[51] == 0.77)
@constraint(m, e7, 0.24*x[2]+0.12*x[3]+0.39*x[4]+0.35*x[5]-0.79*x[6]-0.03*x[7]-0.62*x[8]-0.78*x[9]-0.07*x[10]+0.49*x[11]+0.88*x[12]-0.06*x[13]-0.01*x[14]-0.78*x[15]-0.91*x[16]-0.61*x[17]+0.37*x[18]-0.96*x[19]+0.78*x[20]-0.84*x[21]+0.68*x[22]-0.35*x[23]+0.18*x[24]-0.31*x[25]+0.95*x[26]-0.82*x[27]+0.4*x[28]+0.76*x[29]-0.44*x[30]-0.37*x[31]+0.17*x[32]+0.2*x[33]-0.18*x[34]-0.91*x[35]+0.92*x[36]-0.98*x[37]-0.08*x[38]-0.55*x[39]-0.79*x[40]-0.73*x[41]-0.33*x[42]-0.49*x[43]+0.99*x[44]-0.9*x[45]-0.03*x[46]-0.32*x[47]+0.11*x[48]-0.51*x[49]-0.51*x[50]-0.67*x[51] == -0.54)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
