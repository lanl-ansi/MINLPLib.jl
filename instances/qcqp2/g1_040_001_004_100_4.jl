using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[32], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[38], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[37], 0.0)
set_lower_bound(x[40], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[41], 0.0)
set_lower_bound(x[39], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[33], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.58*x[2]*x[3]-0.32*x[2]*x[4]-0.88*x[2]*x[5]-1.62*x[2]*x[6]+1.06*x[2]*x[7]+0.98*x[2]*x[8]-0.08*x[2]*x[9]-1.38*x[2]*x[10]+0.3*x[2]*x[11]-0.4*x[2]*x[12]-1.92*x[2]*x[13]-1.76*x[2]*x[14]+0.16*x[2]*x[15]+0.6*x[2]*x[16]+0.16*x[2]*x[17]-1.76*x[2]*x[18]+1.92*x[2]*x[19]-1.72*x[2]*x[20]-1.04*x[2]*x[21]-0.54*x[2]*x[22]+1.08*x[2]*x[23]+1.54*x[2]*x[24]+0.68*x[2]*x[25]+0.2*x[2]*x[26]+1.12*x[2]*x[27]-0.9*x[2]*x[28]+1.16*x[2]*x[29]+0.6*x[2]*x[30]+1.62*x[2]*x[31]-0.94*x[2]*x[32]+0.06*x[2]*x[33]-0.14*x[2]*x[34]+1.88*x[2]*x[35]-1.54*x[2]*x[36]+1.22*x[2]*x[37]+1.02*x[2]*x[38]+1.6*x[2]*x[39]+0.8*x[2]*x[40]+0.9*x[2]*x[41]+(-1.86*x[3]*x[4])-0.5*x[3]*x[5]-1.1*x[3]*x[6]+1.1*x[3]*x[7]+2*x[3]*x[8]+1.86*x[3]*x[9]+1.32*x[3]*x[10]-1.26*x[3]*x[11]+0.04*x[3]*x[12]-1.58*x[3]*x[13]-1.16*x[3]*x[14]+0.4*x[3]*x[15]-0.58*x[3]*x[16]+0.68*x[3]*x[17]-1.12*x[3]*x[18]+0.34*x[3]*x[19]-0.04*x[3]*x[20]-1.3*x[3]*x[21]-0.1*x[3]*x[22]+0.5*x[3]*x[23]-1.38*x[3]*x[24]-1.22*x[3]*x[25]-0.7*x[3]*x[26]-0.56*x[3]*x[27]-0.28*x[3]*x[28]-1.52*x[3]*x[29]-0.7*x[3]*x[30]-0.38*x[3]*x[31]-0.06*x[3]*x[32]-1.3*x[3]*x[33]+0.94*x[3]*x[34]+0.38*x[3]*x[35]+1.34*x[3]*x[36]-1.6*x[3]*x[37]+1.7*x[3]*x[38]+1.2*x[3]*x[39]-0.04*x[3]*x[40]+1.44*x[3]*x[41]+(-0.04*x[4]*x[5])-0.44*x[4]*x[6]-0.36*x[4]*x[7]-0.16*x[4]*x[8]+0.56*x[4]*x[9]+1.14*x[4]*x[10]+0.96*x[4]*x[11]-0.12*x[4]*x[12]-1.78*x[4]*x[13]-1.38*x[4]*x[15]-0.8*x[4]*x[16]-1.9*x[4]*x[17]-0.16*x[4]*x[18]-1.78*x[4]*x[19]-0.22*x[4]*x[20]-1.38*x[4]*x[21]+1.9*x[4]*x[22]+0.34*x[4]*x[23]-0.7*x[4]*x[24]-0.84*x[4]*x[25]+0.04*x[4]*x[26]+1.88*x[4]*x[27]-0.26*x[4]*x[28]+1.12*x[4]*x[30]-1.1*x[4]*x[31]+1.1*x[4]*x[32]+1.92*x[4]*x[34]+0.1*x[4]*x[35]+1.12*x[4]*x[36]-0.96*x[4]*x[37]-0.68*x[4]*x[38]+1.18*x[4]*x[39]-1.4*x[4]*x[40]+1.48*x[4]*x[41]+1.7*x[5]*x[6]+0.38*x[5]*x[7]-0.68*x[5]*x[8]-1.84*x[5]*x[9]+0.16*x[5]*x[10]+1.82*x[5]*x[11]+1.06*x[5]*x[12]-0.36*x[5]*x[13]+1.36*x[5]*x[14]-0.44*x[5]*x[15]+1.04*x[5]*x[16]+1.16*x[5]*x[17]-0.64*x[5]*x[18]+0.46*x[5]*x[19]+1.74*x[5]*x[20]+1.68*x[5]*x[21]-1.12*x[5]*x[22]-1.84*x[5]*x[23]+1.26*x[5]*x[24]-0.2*x[5]*x[25]-1.62*x[5]*x[26]+0.88*x[5]*x[27]-1.84*x[5]*x[28]-0.6*x[5]*x[29]+0.56*x[5]*x[30]+1.02*x[5]*x[31]+1.68*x[5]*x[32]-0.26*x[5]*x[33]-0.94*x[5]*x[34]-0.56*x[5]*x[35]-0.78*x[5]*x[36]-0.8*x[5]*x[37]-1.3*x[5]*x[38]+0.12*x[5]*x[39]-1.66*x[5]*x[40]+0.48*x[5]*x[41]+(-1.54*x[6]*x[7])-1.18*x[6]*x[8]+1.34*x[6]*x[9]+1.52*x[6]*x[10]-0.78*x[6]*x[11]-1.88*x[6]*x[12]-0.12*x[6]*x[13]-0.3*x[6]*x[14]-0.18*x[6]*x[15]-1.56*x[6]*x[16]-1.68*x[6]*x[17]-1.3*x[6]*x[18]-1.16*x[6]*x[19]-0.34*x[6]*x[20]-1.64*x[6]*x[21]+1.2*x[6]*x[22]-0.56*x[6]*x[23]-0.8*x[6]*x[24]+0.92*x[6]*x[25]+1.02*x[6]*x[26]+0.14*x[6]*x[27]-0.8*x[6]*x[28]-0.68*x[6]*x[29]+x[6]*x[30]+0.72*x[6]*x[31]-0.84*x[6]*x[32]+0.86*x[6]*x[33]+1.86*x[6]*x[34]-1.86*x[6]*x[35]-1.06*x[6]*x[36]-1.8*x[6]*x[37]+1.98*x[6]*x[38]+1.8*x[6]*x[39]+1.26*x[6]*x[40]-1.52*x[6]*x[41]+1.84*x[7]*x[9]-0.18*x[7]*x[10]+1.24*x[7]*x[11]-1.4*x[7]*x[12]+1.72*x[7]*x[13]+1.78*x[7]*x[14]-1.46*x[7]*x[15]-0.06*x[7]*x[16]+0.58*x[7]*x[18]-1.22*x[7]*x[19]-0.24*x[7]*x[20]-1.7*x[7]*x[21]+0.68*x[7]*x[22]-0.8*x[7]*x[23]-0.18*x[7]*x[24]+0.38*x[7]*x[25]-0.36*x[7]*x[26]+0.82*x[7]*x[27]-1.42*x[7]*x[28]-0.68*x[7]*x[29]+1.44*x[7]*x[30]-0.04*x[7]*x[31]-1.04*x[7]*x[32]+1.8*x[7]*x[33]-1.28*x[7]*x[34]-1.92*x[7]*x[35]-1.86*x[7]*x[37]-0.32*x[7]*x[38]+0.98*x[7]*x[39]-0.44*x[7]*x[40]-1.16*x[7]*x[41]+(-1.88*x[8]*x[10])-1.56*x[8]*x[11]+0.7*x[8]*x[12]-1.14*x[8]*x[13]+0.42*x[8]*x[14]+0.2*x[8]*x[15]+1.38*x[8]*x[16]-1.14*x[8]*x[17]+1.38*x[8]*x[18]+0.92*x[8]*x[19]-1.36*x[8]*x[20]+1.16*x[8]*x[21]-1.6*x[8]*x[22]-0.02*x[8]*x[23]-1.16*x[8]*x[24]-0.24*x[8]*x[25]+0.06*x[8]*x[26]-0.58*x[8]*x[27]-1.96*x[8]*x[28]-1.82*x[8]*x[29]-0.96*x[8]*x[30]-0.8*x[8]*x[31]+0.52*x[8]*x[32]-0.18*x[8]*x[33]+0.76*x[8]*x[34]-1.92*x[8]*x[36]+0.92*x[8]*x[37]+1.62*x[8]*x[38]+1.84*x[8]*x[39]+0.84*x[8]*x[40]-1.64*x[8]*x[41]+0.12*x[9]*x[10]+0.98*x[9]*x[11]-0.58*x[9]*x[12]+0.5*x[9]*x[13]-0.8*x[9]*x[14]+1.1*x[9]*x[15]-1.36*x[9]*x[16]+1.92*x[9]*x[17]+0.84*x[9]*x[18]-1.58*x[9]*x[19]+0.7*x[9]*x[20]-0.38*x[9]*x[21]-1.08*x[9]*x[22]+1.58*x[9]*x[24]+1.8*x[9]*x[25]+0.42*x[9]*x[26]-0.56*x[9]*x[27]+0.54*x[9]*x[28]-0.38*x[9]*x[29]+0.78*x[9]*x[30]-1.86*x[9]*x[31]+0.38*x[9]*x[32]-0.92*x[9]*x[33]-1.36*x[9]*x[34]-0.94*x[9]*x[35]-0.1*x[9]*x[36]+x[9]*x[37]-0.6*x[9]*x[38]-0.3*x[9]*x[39]+0.04*x[9]*x[41]+1.78*x[10]*x[12]-1.02*x[10]*x[11]-1.44*x[10]*x[13]-0.16*x[10]*x[14]-0.88*x[10]*x[15]-0.7*x[10]*x[16]-1.06*x[10]*x[17]+1.98*x[10]*x[18]-0.6*x[10]*x[19]+1.2*x[10]*x[20]+0.64*x[10]*x[21]+1.12*x[10]*x[22]-1.38*x[10]*x[23]-0.98*x[10]*x[24]+1.54*x[10]*x[25]+1.78*x[10]*x[26]+1.76*x[10]*x[27]+0.52*x[10]*x[28]+1.68*x[10]*x[29]-0.08*x[10]*x[30]-0.64*x[10]*x[31]+0.58*x[10]*x[32]-1.94*x[10]*x[33]-1.94*x[10]*x[34]+0.82*x[10]*x[35]-1.76*x[10]*x[36]-0.14*x[10]*x[37]-1.42*x[10]*x[38]+0.98*x[10]*x[39]-1.58*x[10]*x[40]-x[10]*x[41]+0.08*x[11]*x[12]+1.16*x[11]*x[13]+0.74*x[11]*x[14]+1.86*x[11]*x[15]+1.08*x[11]*x[16]-1.08*x[11]*x[17]+1.74*x[11]*x[18]+1.08*x[11]*x[19]+1.24*x[11]*x[20]+0.2*x[11]*x[21]+1.44*x[11]*x[22]+1.66*x[11]*x[23]-0.32*x[11]*x[24]-0.48*x[11]*x[25]-0.24*x[11]*x[26]+0.02*x[11]*x[27]-1.08*x[11]*x[28]-1.54*x[11]*x[29]-0.9*x[11]*x[30]+0.86*x[11]*x[31]+0.94*x[11]*x[32]-1.86*x[11]*x[33]+1.48*x[11]*x[34]-0.32*x[11]*x[35]+0.12*x[11]*x[36]+1.88*x[11]*x[37]+1.92*x[11]*x[38]-1.06*x[11]*x[39]+1.96*x[11]*x[40]+1.76*x[11]*x[41]+(-1.38*x[12]*x[13])-1.6*x[12]*x[14]+1.36*x[12]*x[15]+1.28*x[12]*x[16]-0.96*x[12]*x[17]+0.66*x[12]*x[18]+1.1*x[12]*x[19]+1.84*x[12]*x[20]-1.96*x[12]*x[21]-1.58*x[12]*x[22]+0.4*x[12]*x[24]-1.68*x[12]*x[25]-0.28*x[12]*x[26]-0.34*x[12]*x[27]+1.92*x[12]*x[28]+x[12]*x[29]+1.3*x[12]*x[30]+0.48*x[12]*x[31]+1.14*x[12]*x[32]+1.76*x[12]*x[33]+1.36*x[12]*x[34]+0.88*x[12]*x[35]+0.72*x[12]*x[36]+1.18*x[12]*x[37]-0.26*x[12]*x[38]+0.04*x[12]*x[39]-0.94*x[12]*x[41]+(-1.14*x[13]*x[14])-1.14*x[13]*x[15]+1.12*x[13]*x[16]+1.26*x[13]*x[17]-1.88*x[13]*x[18]+1.84*x[13]*x[19]+1.94*x[13]*x[20]+0.92*x[13]*x[21]+1.66*x[13]*x[23]+0.24*x[13]*x[24]+1.34*x[13]*x[25]-1.84*x[13]*x[26]-1.9*x[13]*x[27]+0.38*x[13]*x[28]+1.18*x[13]*x[29]-1.82*x[13]*x[30]+0.42*x[13]*x[31]-0.56*x[13]*x[32]-0.54*x[13]*x[33]-0.38*x[13]*x[34]-1.94*x[13]*x[35]-x[13]*x[36]+0.64*x[13]*x[37]+1.42*x[13]*x[38]+0.16*x[13]*x[39]+1.22*x[13]*x[40]+0.4*x[13]*x[41]+1.3*x[14]*x[15]+0.3*x[14]*x[16]+0.34*x[14]*x[17]+0.54*x[14]*x[18]-0.2*x[14]*x[20]-0.34*x[14]*x[21]-1.64*x[14]*x[22]-0.54*x[14]*x[23]+0.9*x[14]*x[24]-0.68*x[14]*x[25]+0.74*x[14]*x[26]-0.16*x[14]*x[27]+0.7*x[14]*x[28]+1.76*x[14]*x[29]+1.18*x[14]*x[30]-1.78*x[14]*x[31]+1.24*x[14]*x[32]+0.5*x[14]*x[33]-1.28*x[14]*x[35]+1.88*x[14]*x[36]-0.86*x[14]*x[37]+1.72*x[14]*x[38]+0.6*x[14]*x[39]-1.72*x[14]*x[40]+1.98*x[14]*x[41]+1.32*x[15]*x[16]-0.32*x[15]*x[17]+0.36*x[15]*x[18]+1.08*x[15]*x[19]+1.88*x[15]*x[20]-0.18*x[15]*x[21]-1.58*x[15]*x[22]-1.06*x[15]*x[23]-0.38*x[15]*x[24]+0.08*x[15]*x[25]+1.1*x[15]*x[26]-1.74*x[15]*x[27]+0.92*x[15]*x[28]+0.52*x[15]*x[29]+0.06*x[15]*x[30]-1.24*x[15]*x[31]-1.56*x[15]*x[32]-0.98*x[15]*x[34]+1.8*x[15]*x[35]-0.66*x[15]*x[36]-1.8*x[15]*x[37]-0.44*x[15]*x[38]-1.74*x[15]*x[39]+0.8*x[15]*x[40]-1.82*x[15]*x[41]+(-0.96*x[16]*x[17])-0.86*x[16]*x[18]-0.04*x[16]*x[19]+1.86*x[16]*x[20]+0.78*x[16]*x[21]-1.16*x[16]*x[22]+0.34*x[16]*x[23]-1.34*x[16]*x[24]-0.68*x[16]*x[25]-0.02*x[16]*x[26]+0.18*x[16]*x[27]+1.96*x[16]*x[28]-0.4*x[16]*x[29]+1.3*x[16]*x[30]+0.54*x[16]*x[31]+1.38*x[16]*x[32]+0.26*x[16]*x[33]+1.38*x[16]*x[34]+0.96*x[16]*x[35]+1.22*x[16]*x[36]-1.6*x[16]*x[37]-1.88*x[16]*x[38]+1.92*x[16]*x[39]+1.04*x[16]*x[40]-0.6*x[16]*x[41]+(-1.78*x[17]*x[18])-0.6*x[17]*x[19]+1.14*x[17]*x[20]-0.22*x[17]*x[21]+1.94*x[17]*x[22]+0.1*x[17]*x[23]+0.08*x[17]*x[24]-1.54*x[17]*x[25]+0.22*x[17]*x[26]+0.1*x[17]*x[27]-0.84*x[17]*x[28]+0.1*x[17]*x[29]-1.84*x[17]*x[30]+0.02*x[17]*x[31]-1.64*x[17]*x[32]+0.54*x[17]*x[33]+1.38*x[17]*x[34]-0.1*x[17]*x[35]-1.96*x[17]*x[36]-0.12*x[17]*x[37]-0.88*x[17]*x[39]-0.94*x[17]*x[40]-0.98*x[17]*x[41]+1.76*x[18]*x[19]-1.76*x[18]*x[20]+0.58*x[18]*x[21]-1.7*x[18]*x[22]+0.56*x[18]*x[23]+0.16*x[18]*x[24]+1.36*x[18]*x[25]-0.88*x[18]*x[26]-1.44*x[18]*x[27]+1.38*x[18]*x[28]-1.3*x[18]*x[29]+1.56*x[18]*x[30]+1.16*x[18]*x[31]+1.16*x[18]*x[32]-0.76*x[18]*x[33]+1.18*x[18]*x[34]-1.62*x[18]*x[35]-0.1*x[18]*x[36]+1.98*x[18]*x[37]-0.76*x[18]*x[38]+0.76*x[18]*x[39]+1.36*x[18]*x[40]+1.18*x[18]*x[41]+1.64*x[19]*x[20]+0.92*x[19]*x[21]-1.36*x[19]*x[22]+0.72*x[19]*x[23]+0.72*x[19]*x[24]-0.1*x[19]*x[25]-1.34*x[19]*x[26]+1.16*x[19]*x[27]+0.14*x[19]*x[28]+1.62*x[19]*x[29]+1.3*x[19]*x[30]-0.76*x[19]*x[31]-1.2*x[19]*x[32]-1.42*x[19]*x[33]-0.58*x[19]*x[34]+0.28*x[19]*x[35]-0.66*x[19]*x[36]-1.74*x[19]*x[37]-1.98*x[19]*x[38]+1.76*x[19]*x[39]-1.42*x[19]*x[40]-0.32*x[19]*x[41]+(-1.84*x[20]*x[21])-1.78*x[20]*x[22]-1.86*x[20]*x[24]+0.94*x[20]*x[26]-0.7*x[20]*x[28]+0.58*x[20]*x[29]-0.78*x[20]*x[31]+0.7*x[20]*x[32]+0.9*x[20]*x[33]-1.3*x[20]*x[34]-1.5*x[20]*x[35]+0.08*x[20]*x[36]-0.88*x[20]*x[37]-0.82*x[20]*x[38]-0.64*x[20]*x[39]+0.64*x[20]*x[40]+0.62*x[20]*x[41]+1.92*x[21]*x[23]-1.62*x[21]*x[22]-1.84*x[21]*x[24]-0.52*x[21]*x[25]+0.64*x[21]*x[26]+1.8*x[21]*x[27]-0.78*x[21]*x[28]-0.16*x[21]*x[29]+1.44*x[21]*x[30]+1.4*x[21]*x[31]-0.94*x[21]*x[32]+1.54*x[21]*x[33]-0.68*x[21]*x[34]+0.36*x[21]*x[35]+0.22*x[21]*x[37]-0.22*x[21]*x[38]+1.74*x[21]*x[39]+1.26*x[21]*x[40]+(-1.76*x[22]*x[23])-1.36*x[22]*x[24]+1.9*x[22]*x[25]+0.54*x[22]*x[26]+0.46*x[22]*x[27]-0.78*x[22]*x[28]-0.18*x[22]*x[29]+x[22]*x[30]-0.52*x[22]*x[31]+1.78*x[22]*x[32]-0.84*x[22]*x[33]+1.5*x[22]*x[34]-0.42*x[22]*x[35]-0.54*x[22]*x[36]-0.28*x[22]*x[37]+1.88*x[22]*x[38]-0.92*x[22]*x[39]+1.66*x[22]*x[40]-1.14*x[22]*x[41]+(-1.36*x[23]*x[24])-0.12*x[23]*x[25]-0.92*x[23]*x[26]+1.38*x[23]*x[27]-1.52*x[23]*x[28]+1.26*x[23]*x[29]-1.92*x[23]*x[30]-1.46*x[23]*x[31]-1.96*x[23]*x[32]-1.82*x[23]*x[33]+0.58*x[23]*x[34]+0.72*x[23]*x[35]-1.94*x[23]*x[36]-1.22*x[23]*x[37]-0.36*x[23]*x[38]-1.52*x[23]*x[39]+1.12*x[23]*x[40]-0.76*x[23]*x[41]+1.96*x[24]*x[26]-0.94*x[24]*x[25]+1.8*x[24]*x[27]-0.76*x[24]*x[28]+1.12*x[24]*x[29]-1.24*x[24]*x[30]-0.7*x[24]*x[31]-0.34*x[24]*x[32]-0.18*x[24]*x[33]+1.9*x[24]*x[34]+0.38*x[24]*x[35]+1.02*x[24]*x[36]-x[24]*x[37]+0.8*x[24]*x[38]-0.98*x[24]*x[39]-0.18*x[24]*x[40]-1.86*x[24]*x[41]+(-0.08*x[25]*x[26])-0.22*x[25]*x[27]+0.32*x[25]*x[28]-1.22*x[25]*x[29]-1.6*x[25]*x[30]-1.7*x[25]*x[31]+0.4*x[25]*x[32]-0.98*x[25]*x[33]-0.4*x[25]*x[34]-0.48*x[25]*x[35]-1.6*x[25]*x[36]-1.64*x[25]*x[37]+0.42*x[25]*x[38]+0.22*x[25]*x[39]+1.46*x[25]*x[40]+0.02*x[25]*x[41]+1.74*x[26]*x[27]+0.26*x[26]*x[28]-0.6*x[26]*x[29]-0.68*x[26]*x[30]-0.16*x[26]*x[31]-0.32*x[26]*x[32]+0.14*x[26]*x[33]+1.04*x[26]*x[34]-0.78*x[26]*x[35]-0.2*x[26]*x[36]+0.24*x[26]*x[37]-1.2*x[26]*x[38]+0.14*x[26]*x[39]+1.3*x[26]*x[40]+1.86*x[26]*x[41]+1.62*x[27]*x[28]-1.88*x[27]*x[29]-0.34*x[27]*x[30]-1.72*x[27]*x[31]+1.34*x[27]*x[32]-0.02*x[27]*x[33]+1.8*x[27]*x[34]-0.44*x[27]*x[35]+0.16*x[27]*x[36]+1.6*x[27]*x[37]-1.38*x[27]*x[38]-1.32*x[27]*x[39]-0.32*x[27]*x[40]+1.92*x[27]*x[41]+1.58*x[28]*x[30]-1.02*x[28]*x[29]-1.38*x[28]*x[31]-0.14*x[28]*x[32]-1.88*x[28]*x[33]+1.2*x[28]*x[34]+1.3*x[28]*x[35]+1.12*x[28]*x[36]+1.88*x[28]*x[37]+1.6*x[28]*x[38]-0.14*x[28]*x[39]+1.4*x[28]*x[40]-0.32*x[28]*x[41]+(-0.38*x[29]*x[30])-0.58*x[29]*x[31]-1.14*x[29]*x[32]+1.72*x[29]*x[33]+0.18*x[29]*x[34]-1.4*x[29]*x[35]-0.5*x[29]*x[36]-1.42*x[29]*x[37]+1.54*x[29]*x[38]+0.12*x[29]*x[39]-0.76*x[29]*x[40]+0.9*x[29]*x[41]+0.06*x[30]*x[31]-0.68*x[30]*x[32]-0.14*x[30]*x[33]-1.16*x[30]*x[34]+0.7*x[30]*x[35]-0.34*x[30]*x[36]-0.54*x[30]*x[37]+0.6*x[30]*x[38]-1.3*x[30]*x[39]-0.8*x[30]*x[40]-0.5*x[30]*x[41]+(-1.96*x[31]*x[32])-1.08*x[31]*x[33]+0.28*x[31]*x[34]-0.82*x[31]*x[35]-0.4*x[31]*x[36]-0.82*x[31]*x[37]-1.1*x[31]*x[38]+1.66*x[31]*x[39]-0.52*x[31]*x[40]+0.88*x[31]*x[41]+(-1.58*x[32]*x[33])-0.36*x[32]*x[34]+0.06*x[32]*x[36]+1.46*x[32]*x[37]-0.82*x[32]*x[38]+1.46*x[32]*x[39]-0.8*x[32]*x[40]-0.22*x[32]*x[41]+1.02*x[33]*x[34]+1.92*x[33]*x[35]+1.72*x[33]*x[36]+0.28*x[33]*x[37]-0.24*x[33]*x[38]-1.58*x[33]*x[39]+1.96*x[33]*x[40]+0.44*x[33]*x[41]+0.26*x[34]*x[35]+1.96*x[34]*x[36]-1.94*x[34]*x[37]-0.82*x[34]*x[38]+1.06*x[34]*x[39]+1.98*x[34]*x[40]-0.14*x[34]*x[41]+(-0.34*x[35]*x[36])-0.66*x[35]*x[37]-1.86*x[35]*x[38]+1.82*x[35]*x[39]-0.5*x[35]*x[40]-0.52*x[35]*x[41]+1.82*x[36]*x[38]-1.62*x[36]*x[37]-0.6*x[36]*x[39]+0.74*x[36]*x[40]+0.14*x[36]*x[41]+1.74*x[37]*x[38]+1.62*x[37]*x[39]+1.06*x[37]*x[41]+0.64*x[38]*x[39]-0.86*x[38]*x[40]-1.1*x[38]*x[41]+1.44*x[39]*x[40]+0.68*x[39]*x[41]+1.54*x[40]*x[41]+(-0.29*x[2]*x[2])-0.25*x[3]*x[3]+0.07*x[4]*x[4]-0.98*x[5]*x[5]-0.63*x[6]*x[6]+0.4*x[7]*x[7]+0.34*x[8]*x[8]+0.6*x[9]*x[9]-0.95*x[10]*x[10]-0.64*x[11]*x[11]+0.46*x[12]*x[12]+0.17*x[13]*x[13]-0.03*x[14]*x[14]-0.23*x[15]*x[15]+0.15*x[16]*x[16]+0.27*x[17]*x[17]-0.02*x[18]*x[18]-0.99*x[19]*x[19]-0.04*x[20]*x[20]+0.2*x[21]*x[21]-0.25*x[22]*x[22]+0.49*x[23]*x[23]-0.34*x[24]*x[24]-0.4*x[25]*x[25]+0.59*x[26]*x[26]-0.9*x[27]*x[27]+0.11*x[28]*x[28]-0.54*x[29]*x[29]-0.31*x[30]*x[30]-0.03*x[31]*x[31]-0.68*x[32]*x[32]-0.86*x[33]*x[33]-0.81*x[34]*x[34]+0.59*x[35]*x[35]-0.88*x[36]*x[36]-0.68*x[37]*x[37]-0.05*x[38]*x[38]-0.36*x[39]*x[39]+0.36*x[40]*x[40]+0.34*x[41]*x[41]-0.25*x[2]+0.49*x[3]-0.31*x[4]+0.79*x[5]-0.44*x[6]-0.37*x[7]+0.63*x[8]-0.21*x[9]+0.01*x[10]-0.68*x[11]+0.98*x[12]+0.3*x[13]+0.55*x[14]+0.36*x[15]-0.07*x[16]-0.76*x[17]+0.28*x[18]+0.01*x[19]+0.77*x[20]-0.2*x[21]-0.35*x[22]-0.95*x[23]-0.36*x[24]-0.14*x[25]-0.21*x[26]-0.83*x[27]+0.6*x[28]+0.43*x[29]+0.78*x[30]-0.1*x[31]-0.67*x[32]+0.9*x[33]+0.66*x[34]-0.85*x[35]-0.96*x[36]-0.3*x[37]-0.09*x[38]-0.02*x[39]-0.96*x[40]-0.81*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 1.98*x[2]*x[4]-0.68*x[2]*x[3]-1.62*x[2]*x[5]-0.58*x[2]*x[6]-1.9*x[2]*x[7]+1.82*x[2]*x[8]+0.66*x[2]*x[9]+0.2*x[2]*x[10]+1.34*x[2]*x[11]-0.66*x[2]*x[12]+1.62*x[2]*x[13]-1.64*x[2]*x[14]+1.74*x[2]*x[15]+0.28*x[2]*x[16]-0.96*x[2]*x[17]+0.52*x[2]*x[18]+0.04*x[2]*x[19]+1.72*x[2]*x[20]-1.9*x[2]*x[21]+0.18*x[2]*x[22]+0.1*x[2]*x[23]+1.32*x[2]*x[24]+0.62*x[2]*x[25]+0.1*x[2]*x[26]+1.36*x[2]*x[27]+1.74*x[2]*x[28]-0.26*x[2]*x[29]+1.1*x[2]*x[30]-1.22*x[2]*x[31]-1.88*x[2]*x[32]-1.46*x[2]*x[33]-0.04*x[2]*x[34]-0.38*x[2]*x[35]-1.66*x[2]*x[36]-0.7*x[2]*x[37]-1.76*x[2]*x[38]-1.38*x[2]*x[39]-1.6*x[2]*x[40]+0.44*x[2]*x[41]+0.24*x[3]*x[4]-0.7*x[3]*x[5]+1.22*x[3]*x[6]+0.5*x[3]*x[7]+0.78*x[3]*x[8]+0.8*x[3]*x[9]-1.08*x[3]*x[10]+0.68*x[3]*x[11]-0.86*x[3]*x[12]-0.58*x[3]*x[13]+0.14*x[3]*x[14]-1.58*x[3]*x[15]-1.54*x[3]*x[16]+1.26*x[3]*x[18]+1.54*x[3]*x[19]-1.88*x[3]*x[20]+0.16*x[3]*x[21]+1.98*x[3]*x[22]+1.14*x[3]*x[23]+1.2*x[3]*x[24]-1.18*x[3]*x[26]-0.24*x[3]*x[27]-1.36*x[3]*x[28]-0.52*x[3]*x[29]+1.3*x[3]*x[30]+0.4*x[3]*x[31]-1.6*x[3]*x[32]-1.34*x[3]*x[33]+0.08*x[3]*x[34]+1.9*x[3]*x[35]+0.62*x[3]*x[36]+0.82*x[3]*x[37]-0.1*x[3]*x[38]+1.1*x[3]*x[39]-0.84*x[3]*x[40]+0.28*x[3]*x[41]+0.12*x[4]*x[6]-0.32*x[4]*x[5]-1.12*x[4]*x[7]+0.08*x[4]*x[8]+1.86*x[4]*x[9]+0.66*x[4]*x[10]-0.4*x[4]*x[11]-0.08*x[4]*x[12]+0.18*x[4]*x[13]-1.32*x[4]*x[14]-1.92*x[4]*x[15]+0.38*x[4]*x[16]-0.92*x[4]*x[17]-0.9*x[4]*x[18]+1.54*x[4]*x[19]+1.7*x[4]*x[20]+0.2*x[4]*x[21]+1.26*x[4]*x[22]-0.76*x[4]*x[23]-0.36*x[4]*x[24]+1.8*x[4]*x[25]-1.64*x[4]*x[26]+1.96*x[4]*x[27]+0.8*x[4]*x[28]-1.58*x[4]*x[29]+0.6*x[4]*x[30]-1.56*x[4]*x[31]-0.04*x[4]*x[32]-1.36*x[4]*x[33]+1.7*x[4]*x[34]+0.84*x[4]*x[35]+1.12*x[4]*x[36]+0.78*x[4]*x[37]+1.94*x[4]*x[38]+0.94*x[4]*x[39]-0.66*x[4]*x[40]+0.9*x[4]*x[41]+1.18*x[5]*x[7]-0.86*x[5]*x[6]+0.64*x[5]*x[8]-1.42*x[5]*x[9]-1.7*x[5]*x[10]+0.2*x[5]*x[11]+0.86*x[5]*x[12]+0.74*x[5]*x[13]-0.02*x[5]*x[14]+1.76*x[5]*x[15]-1.44*x[5]*x[16]-0.52*x[5]*x[17]+1.38*x[5]*x[18]+1.82*x[5]*x[19]+0.28*x[5]*x[20]+0.38*x[5]*x[21]-0.32*x[5]*x[22]+1.98*x[5]*x[23]+0.6*x[5]*x[24]+0.66*x[5]*x[25]-0.34*x[5]*x[26]-1.92*x[5]*x[27]-0.42*x[5]*x[29]-1.9*x[5]*x[30]+0.98*x[5]*x[31]+1.84*x[5]*x[32]+0.44*x[5]*x[33]+0.56*x[5]*x[34]-0.48*x[5]*x[35]+1.2*x[5]*x[36]+1.74*x[5]*x[37]-0.6*x[5]*x[38]+0.52*x[5]*x[39]+0.26*x[5]*x[40]-1.66*x[5]*x[41]+(-0.36*x[6]*x[7])-1.54*x[6]*x[9]+0.96*x[6]*x[10]+0.86*x[6]*x[11]-1.2*x[6]*x[12]+0.68*x[6]*x[13]+0.94*x[6]*x[14]-1.78*x[6]*x[15]-1.62*x[6]*x[16]+1.84*x[6]*x[17]-1.56*x[6]*x[18]+0.38*x[6]*x[19]+0.6*x[6]*x[20]+1.88*x[6]*x[21]-0.16*x[6]*x[22]+0.92*x[6]*x[23]-1.64*x[6]*x[24]-0.6*x[6]*x[25]+0.14*x[6]*x[26]-0.08*x[6]*x[27]+0.5*x[6]*x[28]+0.88*x[6]*x[29]-0.32*x[6]*x[30]+1.5*x[6]*x[31]-0.98*x[6]*x[32]-0.32*x[6]*x[33]+1.42*x[6]*x[34]+1.76*x[6]*x[35]-1.2*x[6]*x[36]-1.24*x[6]*x[38]+1.28*x[6]*x[39]-0.66*x[6]*x[40]+1.82*x[6]*x[41]+(-1.72*x[7]*x[8])-0.62*x[7]*x[9]-0.36*x[7]*x[10]-0.28*x[7]*x[11]+1.52*x[7]*x[12]+0.28*x[7]*x[13]-1.78*x[7]*x[14]-0.8*x[7]*x[15]+0.44*x[7]*x[16]+1.02*x[7]*x[17]+1.4*x[7]*x[18]-1.58*x[7]*x[19]+1.76*x[7]*x[20]-1.76*x[7]*x[21]-1.96*x[7]*x[22]-0.92*x[7]*x[23]-1.54*x[7]*x[24]-0.14*x[7]*x[25]-1.32*x[7]*x[26]+0.96*x[7]*x[27]-1.82*x[7]*x[28]+1.6*x[7]*x[29]+0.78*x[7]*x[30]+1.64*x[7]*x[31]+0.7*x[7]*x[32]+0.28*x[7]*x[33]-1.2*x[7]*x[34]+0.94*x[7]*x[35]+0.54*x[7]*x[36]-1.84*x[7]*x[37]+1.44*x[7]*x[38]-0.4*x[7]*x[39]-1.24*x[7]*x[40]-0.3*x[7]*x[41]+(-0.18*x[8]*x[9])-0.34*x[8]*x[10]+0.06*x[8]*x[11]-0.56*x[8]*x[12]-1.5*x[8]*x[13]+1.18*x[8]*x[14]+0.6*x[8]*x[15]+0.54*x[8]*x[16]+1.28*x[8]*x[17]+1.34*x[8]*x[18]-0.92*x[8]*x[19]-0.26*x[8]*x[20]+1.18*x[8]*x[21]+1.02*x[8]*x[22]-0.9*x[8]*x[23]-0.74*x[8]*x[24]+1.22*x[8]*x[25]-1.96*x[8]*x[26]+0.06*x[8]*x[27]+0.88*x[8]*x[28]+0.26*x[8]*x[29]+0.18*x[8]*x[30]+0.62*x[8]*x[31]+1.28*x[8]*x[32]-1.08*x[8]*x[33]-0.46*x[8]*x[34]+0.34*x[8]*x[35]-1.76*x[8]*x[36]+0.5*x[8]*x[37]+x[8]*x[38]-0.5*x[8]*x[39]+1.96*x[8]*x[40]+0.68*x[8]*x[41]+0.46*x[9]*x[11]-0.04*x[9]*x[10]+1.74*x[9]*x[12]+0.66*x[9]*x[13]-0.02*x[9]*x[14]+0.36*x[9]*x[15]+0.16*x[9]*x[16]+1.14*x[9]*x[17]-1.94*x[9]*x[18]-0.22*x[9]*x[19]+1.28*x[9]*x[20]-0.64*x[9]*x[21]-1.48*x[9]*x[22]-1.16*x[9]*x[23]+0.64*x[9]*x[24]-0.2*x[9]*x[25]-1.32*x[9]*x[26]+0.44*x[9]*x[28]-0.24*x[9]*x[29]+1.56*x[9]*x[30]+1.74*x[9]*x[31]+x[9]*x[32]-1.94*x[9]*x[33]-1.72*x[9]*x[34]+0.64*x[9]*x[35]+0.56*x[9]*x[36]-1.14*x[9]*x[37]-0.84*x[9]*x[38]-0.06*x[9]*x[39]+0.84*x[9]*x[40]+1.08*x[9]*x[41]+1.32*x[10]*x[11]-0.08*x[10]*x[12]-0.74*x[10]*x[13]-0.82*x[10]*x[14]-0.04*x[10]*x[16]-1.5*x[10]*x[17]+1.48*x[10]*x[18]-0.14*x[10]*x[19]+1.48*x[10]*x[20]+1.48*x[10]*x[21]+0.66*x[10]*x[22]-1.12*x[10]*x[24]+0.1*x[10]*x[25]+0.12*x[10]*x[26]-0.44*x[10]*x[27]+0.5*x[10]*x[28]+1.48*x[10]*x[29]+0.7*x[10]*x[30]-1.68*x[10]*x[31]+1.4*x[10]*x[32]-1.92*x[10]*x[33]+0.72*x[10]*x[34]-1.78*x[10]*x[35]+1.76*x[10]*x[36]+0.2*x[10]*x[37]+1.74*x[10]*x[38]+0.52*x[10]*x[39]+0.14*x[10]*x[40]-1.04*x[10]*x[41]+1.34*x[11]*x[12]-0.74*x[11]*x[13]+0.66*x[11]*x[14]+0.24*x[11]*x[15]-1.6*x[11]*x[16]-0.24*x[11]*x[17]-1.52*x[11]*x[18]+1.48*x[11]*x[19]+0.06*x[11]*x[20]-0.52*x[11]*x[21]+0.3*x[11]*x[22]-0.72*x[11]*x[23]+1.34*x[11]*x[24]+0.26*x[11]*x[25]-1.7*x[11]*x[26]+1.52*x[11]*x[27]-0.96*x[11]*x[28]+1.38*x[11]*x[29]-1.22*x[11]*x[30]-1.46*x[11]*x[31]+0.5*x[11]*x[32]-1.86*x[11]*x[33]+0.18*x[11]*x[34]+0.12*x[11]*x[35]+0.38*x[11]*x[36]-1.56*x[11]*x[37]+1.28*x[11]*x[38]-0.64*x[11]*x[39]+1.94*x[11]*x[40]-0.92*x[11]*x[41]+1.32*x[12]*x[14]-0.4*x[12]*x[13]-1.68*x[12]*x[15]+0.76*x[12]*x[16]-0.32*x[12]*x[17]-1.78*x[12]*x[18]+1.32*x[12]*x[19]+0.88*x[12]*x[20]+0.76*x[12]*x[21]-1.08*x[12]*x[22]+0.86*x[12]*x[23]+1.42*x[12]*x[24]+1.48*x[12]*x[25]-0.96*x[12]*x[26]-0.72*x[12]*x[27]+0.46*x[12]*x[28]-1.02*x[12]*x[29]-1.52*x[12]*x[30]-0.38*x[12]*x[31]+0.52*x[12]*x[32]+0.58*x[12]*x[33]+1.42*x[12]*x[34]-x[12]*x[35]+1.06*x[12]*x[36]-1.16*x[12]*x[37]-0.86*x[12]*x[38]-1.62*x[12]*x[39]+1.8*x[12]*x[40]+1.68*x[12]*x[41]+1.02*x[13]*x[14]-1.46*x[13]*x[15]-0.6*x[13]*x[16]-0.1*x[13]*x[17]+1.12*x[13]*x[18]-1.66*x[13]*x[19]-0.86*x[13]*x[20]+0.54*x[13]*x[21]-0.2*x[13]*x[22]-0.78*x[13]*x[23]+1.96*x[13]*x[24]+1.14*x[13]*x[25]-1.34*x[13]*x[26]-0.98*x[13]*x[27]+1.64*x[13]*x[29]+0.04*x[13]*x[30]+0.02*x[13]*x[31]-0.76*x[13]*x[32]+0.48*x[13]*x[33]+0.78*x[13]*x[34]+0.48*x[13]*x[35]-1.94*x[13]*x[36]-1.98*x[13]*x[37]-1.38*x[13]*x[38]+0.3*x[13]*x[39]+0.94*x[13]*x[40]+0.6*x[13]*x[41]+1.24*x[14]*x[16]-1.1*x[14]*x[15]+1.82*x[14]*x[17]-0.44*x[14]*x[18]+0.78*x[14]*x[19]+0.96*x[14]*x[20]-1.64*x[14]*x[21]+0.16*x[14]*x[22]-0.96*x[14]*x[23]-1.58*x[14]*x[24]+0.22*x[14]*x[25]+0.5*x[14]*x[26]-1.88*x[14]*x[27]-1.4*x[14]*x[28]-1.6*x[14]*x[29]+1.7*x[14]*x[30]-0.48*x[14]*x[31]+1.18*x[14]*x[32]-0.76*x[14]*x[33]+1.52*x[14]*x[34]+1.8*x[14]*x[35]+1.4*x[14]*x[36]-0.6*x[14]*x[37]+1.78*x[14]*x[38]-1.86*x[14]*x[39]+1.72*x[14]*x[40]+0.22*x[14]*x[41]+0.82*x[15]*x[17]-1.02*x[15]*x[16]+1.64*x[15]*x[18]+0.78*x[15]*x[19]-0.82*x[15]*x[21]+1.8*x[15]*x[22]-1.44*x[15]*x[23]+0.66*x[15]*x[24]+0.68*x[15]*x[25]+1.24*x[15]*x[26]-1.62*x[15]*x[27]+0.16*x[15]*x[28]+1.56*x[15]*x[29]+1.9*x[15]*x[30]+0.3*x[15]*x[31]-1.46*x[15]*x[32]+0.04*x[15]*x[33]+0.8*x[15]*x[34]-0.02*x[15]*x[35]+0.46*x[15]*x[36]+0.14*x[15]*x[37]+0.68*x[15]*x[38]-1.04*x[15]*x[39]-0.22*x[15]*x[40]-0.62*x[15]*x[41]+0.08*x[16]*x[17]+1.66*x[16]*x[18]+1.96*x[16]*x[19]-0.72*x[16]*x[20]-1.76*x[16]*x[21]-0.64*x[16]*x[22]+1.98*x[16]*x[23]+0.3*x[16]*x[24]+0.32*x[16]*x[25]-0.64*x[16]*x[26]+0.1*x[16]*x[27]+1.52*x[16]*x[28]+1.94*x[16]*x[29]+0.66*x[16]*x[30]+0.26*x[16]*x[31]+1.54*x[16]*x[32]+1.16*x[16]*x[33]-1.54*x[16]*x[34]-1.54*x[16]*x[35]+1.16*x[16]*x[36]-1.76*x[16]*x[37]+0.46*x[16]*x[38]+0.64*x[16]*x[39]+0.52*x[16]*x[40]+0.6*x[16]*x[41]+0.6*x[17]*x[18]+0.44*x[17]*x[19]-0.5*x[17]*x[20]-0.46*x[17]*x[21]-0.08*x[17]*x[22]+2*x[17]*x[24]-0.94*x[17]*x[25]+1.68*x[17]*x[26]-0.92*x[17]*x[27]+2*x[17]*x[28]+0.62*x[17]*x[29]+1.86*x[17]*x[31]-0.28*x[17]*x[32]-0.66*x[17]*x[33]-0.24*x[17]*x[34]+0.2*x[17]*x[35]+1.5*x[17]*x[36]-1.64*x[17]*x[37]+1.76*x[17]*x[38]+1.26*x[17]*x[39]-1.18*x[17]*x[40]-0.22*x[17]*x[41]+0.68*x[18]*x[19]+1.46*x[18]*x[20]-0.1*x[18]*x[21]-1.2*x[18]*x[22]+1.58*x[18]*x[23]+0.86*x[18]*x[24]+0.24*x[18]*x[25]-0.18*x[18]*x[26]-0.44*x[18]*x[27]+0.58*x[18]*x[28]-1.64*x[18]*x[29]+0.66*x[18]*x[30]-1.14*x[18]*x[31]-1.32*x[18]*x[32]+0.02*x[18]*x[33]+0.84*x[18]*x[34]+1.62*x[18]*x[35]-1.78*x[18]*x[36]-0.58*x[18]*x[37]-0.76*x[18]*x[38]-0.62*x[18]*x[39]-1.96*x[18]*x[40]+0.34*x[18]*x[41]+1.4*x[19]*x[20]-1.34*x[19]*x[21]-x[19]*x[22]-1.04*x[19]*x[23]+0.1*x[19]*x[24]-0.64*x[19]*x[25]+0.98*x[19]*x[26]+0.1*x[19]*x[27]-1.62*x[19]*x[28]-1.66*x[19]*x[29]+1.78*x[19]*x[30]+1.18*x[19]*x[31]+1.44*x[19]*x[32]+1.36*x[19]*x[33]+1.26*x[19]*x[35]-1.74*x[19]*x[36]+0.28*x[19]*x[37]-1.94*x[19]*x[38]-0.74*x[19]*x[39]-1.18*x[19]*x[40]+(-1.44*x[20]*x[21])-0.78*x[20]*x[22]-0.44*x[20]*x[23]-1.46*x[20]*x[24]-0.62*x[20]*x[25]-1.14*x[20]*x[26]-0.16*x[20]*x[27]-1.9*x[20]*x[28]-1.42*x[20]*x[29]+1.32*x[20]*x[31]-1.6*x[20]*x[32]-1.64*x[20]*x[33]+1.74*x[20]*x[34]+1.94*x[20]*x[35]+1.66*x[20]*x[36]-0.82*x[20]*x[37]-1.76*x[20]*x[38]-1.74*x[20]*x[39]-0.3*x[20]*x[40]+0.54*x[20]*x[41]+(-0.22*x[21]*x[22])-0.06*x[21]*x[23]+0.32*x[21]*x[24]+0.58*x[21]*x[25]-1.4*x[21]*x[26]-1.18*x[21]*x[27]+0.3*x[21]*x[28]-1.74*x[21]*x[29]-x[21]*x[30]+1.84*x[21]*x[31]-0.52*x[21]*x[32]-1.84*x[21]*x[33]-0.14*x[21]*x[34]-1.82*x[21]*x[36]-0.88*x[21]*x[37]+0.92*x[21]*x[38]+0.74*x[21]*x[39]-0.78*x[21]*x[40]-1.86*x[21]*x[41]+1.26*x[22]*x[23]+1.42*x[22]*x[24]-0.64*x[22]*x[25]+0.6*x[22]*x[26]+0.34*x[22]*x[27]-1.7*x[22]*x[28]+0.86*x[22]*x[29]-0.14*x[22]*x[30]-1.34*x[22]*x[31]-0.24*x[22]*x[32]+1.36*x[22]*x[33]+0.88*x[22]*x[34]+0.74*x[22]*x[35]-1.22*x[22]*x[36]-0.1*x[22]*x[37]-1.86*x[22]*x[38]-0.54*x[22]*x[39]+1.26*x[22]*x[40]+0.18*x[22]*x[41]+0.52*x[23]*x[24]-0.3*x[23]*x[25]+1.4*x[23]*x[26]-0.62*x[23]*x[27]+1.2*x[23]*x[29]+1.74*x[23]*x[30]-0.04*x[23]*x[31]-1.52*x[23]*x[32]-0.2*x[23]*x[33]-1.08*x[23]*x[34]+1.68*x[23]*x[35]-0.24*x[23]*x[36]-0.6*x[23]*x[37]+0.1*x[23]*x[38]+0.3*x[23]*x[39]+0.92*x[23]*x[40]-1.92*x[23]*x[41]+0.68*x[24]*x[26]-0.8*x[24]*x[25]+1.26*x[24]*x[27]+0.86*x[24]*x[28]+1.82*x[24]*x[29]+1.02*x[24]*x[30]+1.4*x[24]*x[32]-0.54*x[24]*x[33]-1.6*x[24]*x[34]-x[24]*x[35]+0.82*x[24]*x[36]+0.54*x[24]*x[37]-0.88*x[24]*x[38]-1.48*x[24]*x[39]+0.06*x[24]*x[40]+1.56*x[24]*x[41]+1.6*x[25]*x[27]-0.62*x[25]*x[26]-1.42*x[25]*x[28]+1.24*x[25]*x[29]-1.28*x[25]*x[30]-1.98*x[25]*x[31]+1.66*x[25]*x[32]+1.14*x[25]*x[33]-0.12*x[25]*x[34]-0.84*x[25]*x[35]+1.86*x[25]*x[36]+1.7*x[25]*x[37]+1.82*x[25]*x[38]+0.52*x[25]*x[39]-0.2*x[25]*x[40]+1.08*x[25]*x[41]+(-1.64*x[26]*x[27])-0.08*x[26]*x[28]+0.16*x[26]*x[29]+1.02*x[26]*x[30]-1.54*x[26]*x[31]+1.4*x[26]*x[32]-1.64*x[26]*x[33]+0.1*x[26]*x[34]-1.8*x[26]*x[35]+0.04*x[26]*x[36]+1.26*x[26]*x[37]-1.8*x[26]*x[38]+1.44*x[26]*x[39]+1.28*x[26]*x[40]+1.26*x[26]*x[41]+(-0.22*x[27]*x[28])-1.22*x[27]*x[29]+1.4*x[27]*x[30]+0.76*x[27]*x[31]+0.42*x[27]*x[32]-1.14*x[27]*x[33]+1.84*x[27]*x[34]+1.52*x[27]*x[35]+1.1*x[27]*x[36]-1.36*x[27]*x[37]+0.42*x[27]*x[38]+1.04*x[27]*x[39]-1.24*x[27]*x[40]+0.22*x[27]*x[41]+(-0.92*x[28]*x[29])-0.22*x[28]*x[30]-0.84*x[28]*x[31]-1.42*x[28]*x[32]+1.34*x[28]*x[33]+0.34*x[28]*x[34]-1.88*x[28]*x[35]+1.82*x[28]*x[36]-0.08*x[28]*x[37]+0.62*x[28]*x[38]-2*x[28]*x[39]+1.04*x[28]*x[40]-0.94*x[28]*x[41]+0.1*x[29]*x[30]+1.54*x[29]*x[31]-0.44*x[29]*x[32]+1.92*x[29]*x[33]-0.94*x[29]*x[34]+0.16*x[29]*x[35]-0.4*x[29]*x[36]+1.8*x[29]*x[37]+0.92*x[29]*x[38]+1.18*x[29]*x[39]-0.54*x[29]*x[40]-0.96*x[29]*x[41]+0.76*x[30]*x[32]-0.84*x[30]*x[31]+1.14*x[30]*x[33]-1.74*x[30]*x[34]+0.02*x[30]*x[35]-0.86*x[30]*x[36]-0.1*x[30]*x[37]+1.24*x[30]*x[38]-0.48*x[30]*x[39]-0.64*x[30]*x[40]+0.06*x[30]*x[41]+0.14*x[31]*x[32]-0.68*x[31]*x[33]-1.92*x[31]*x[34]+0.06*x[31]*x[35]-1.52*x[31]*x[36]+1.64*x[31]*x[37]-1.14*x[31]*x[38]+1.54*x[31]*x[39]+0.76*x[31]*x[40]-1.4*x[31]*x[41]+1.96*x[32]*x[34]+1.08*x[32]*x[35]-0.58*x[32]*x[36]+0.28*x[32]*x[37]+1.36*x[32]*x[38]-1.18*x[32]*x[39]+1.58*x[32]*x[41]+(-0.12*x[33]*x[34])-0.74*x[33]*x[35]-0.72*x[33]*x[36]-1.36*x[33]*x[37]-0.48*x[33]*x[38]+0.2*x[33]*x[39]-1.36*x[33]*x[40]-1.82*x[33]*x[41]+1.92*x[34]*x[36]-0.32*x[34]*x[35]+0.64*x[34]*x[37]+1.24*x[34]*x[38]+0.14*x[34]*x[39]+0.76*x[34]*x[40]-1.38*x[34]*x[41]+0.86*x[35]*x[37]-0.16*x[35]*x[36]+1.98*x[35]*x[38]+1.24*x[35]*x[40]+1.42*x[35]*x[41]+(-1.08*x[36]*x[37])-1.4*x[36]*x[38]-1.54*x[36]*x[39]+0.96*x[36]*x[40]-1.38*x[36]*x[41]+0.2*x[37]*x[38]+1.96*x[37]*x[39]-1.54*x[37]*x[40]+0.8*x[37]*x[41]+(-1.7*x[38]*x[39])-0.78*x[38]*x[40]-1.66*x[38]*x[41]+(-1.5*x[39]*x[40])-0.96*x[39]*x[41]+0.32*x[40]*x[41]+0.28*x[3]*x[3]-0.64*x[2]*x[2]-0.49*x[4]*x[4]-0.39*x[5]*x[5]-0.79*x[6]*x[6]-0.97*x[7]*x[7]-0.64*x[8]*x[8]-0.96*x[9]*x[9]+0.8*x[10]*x[10]+0.73*x[11]*x[11]+0.71*x[12]*x[12]-0.45*x[13]*x[13]+0.9*x[14]*x[14]+0.75*x[15]*x[15]+0.14*x[16]*x[16]+0.25*x[18]*x[18]+0.97*x[19]*x[19]-0.76*x[20]*x[20]-0.09*x[21]*x[21]+0.97*x[22]*x[22]-0.35*x[23]*x[23]-0.96*x[24]*x[24]-0.03*x[25]*x[25]-0.3*x[27]*x[27]-0.75*x[28]*x[28]+0.79*x[29]*x[29]+0.16*x[30]*x[30]-0.96*x[31]*x[31]-0.47*x[32]*x[32]+0.63*x[33]*x[33]+0.4*x[34]*x[34]+0.34*x[35]*x[35]-0.93*x[36]*x[36]+0.66*x[37]*x[37]-0.25*x[38]*x[38]+0.37*x[39]*x[39]-0.37*x[40]*x[40]+0.09*x[41]*x[41]-0.26*x[2]-0.93*x[3]-0.58*x[4]-0.74*x[5]-0.28*x[6]-0.06*x[7]+0.38*x[8]-0.96*x[9]-0.08*x[10]-0.83*x[11]+0.9*x[12]+0.94*x[13]-0.42*x[14]-0.1*x[15]-0.32*x[16]-0.41*x[17]+0.14*x[18]-0.75*x[19]+0.24*x[20]-0.92*x[21]-0.53*x[22]-0.79*x[23]-0.01*x[24]-0.11*x[25]+0.41*x[26]-0.38*x[27]-0.16*x[28]+0.74*x[29]+0.1*x[30]+0.52*x[31]-0.2*x[32]+0.9*x[33]+0.99*x[34]-0.16*x[35]-0.23*x[36]-0.86*x[37]+0.93*x[38]+0.38*x[39]+0.49*x[40]+0.85*x[41] <= 58.47)
@constraint(m, e3, -0.74*x[2]-0.57*x[3]+0.71*x[4]+0.4*x[5]-0.77*x[6]-0.43*x[7]-0.25*x[8]-0.23*x[9]-0.41*x[10]-0.7*x[11]+0.22*x[12]-0.83*x[13]+0.49*x[14]+0.13*x[15]+0.18*x[16]+0.37*x[17]-0.71*x[18]-0.63*x[19]+x[20]-0.33*x[21]+0.77*x[22]+0.57*x[23]+0.82*x[24]+0.89*x[25]+0.93*x[26]+0.13*x[27]-0.39*x[28]-0.46*x[29]-0.99*x[30]-0.3*x[31]-0.91*x[32]-0.65*x[33]+0.94*x[34]-0.26*x[35]-0.02*x[36]-0.52*x[37]-0.01*x[38]-0.94*x[39]-0.56*x[40]+0.63*x[41] == -0.47)
@constraint(m, e4, -0.59*x[2]+0.11*x[3]-0.27*x[4]-0.84*x[5]-0.41*x[6]+0.36*x[7]-0.5*x[8]-0.2*x[9]+0.61*x[10]-0.79*x[11]+0.58*x[12]-0.63*x[13]-0.49*x[14]-0.33*x[15]-0.81*x[16]-0.85*x[17]-0.74*x[18]+0.03*x[19]+0.66*x[20]+0.7*x[21]+0.3*x[22]+0.76*x[23]+0.59*x[25]-0.2*x[26]-0.93*x[27]-0.01*x[28]+0.08*x[29]-0.37*x[30]-0.78*x[31]+0.98*x[32]-0.12*x[33]+0.12*x[34]+0.95*x[35]-0.94*x[36]+0.45*x[37]-0.45*x[38]-0.27*x[39]-0.59*x[40]-0.14*x[41] == -0.86)
@constraint(m, e5, -0.68*x[2]-x[3]+0.59*x[4]-0.57*x[5]-0.39*x[6]+0.44*x[7]-0.19*x[8]-0.31*x[9]+0.27*x[10]-0.92*x[11]-0.39*x[12]+0.85*x[13]-0.63*x[14]+0.38*x[15]+0.87*x[16]+0.27*x[17]-0.38*x[18]+0.82*x[19]+0.82*x[20]-0.36*x[21]-0.68*x[22]-0.91*x[23]+0.28*x[24]+0.25*x[25]+0.78*x[26]-0.22*x[27]+0.3*x[28]-0.45*x[29]-0.35*x[30]+0.82*x[31]+0.66*x[32]-0.95*x[33]+0.56*x[34]+0.7*x[35]-0.31*x[36]+0.36*x[37]+0.46*x[38]+0.37*x[39]+0.08*x[40]-0.05*x[41] == 0.08)
@constraint(m, e6, 0.17*x[2]-0.83*x[3]-0.55*x[4]+0.28*x[5]+0.68*x[6]+0.37*x[7]+0.8*x[8]+0.69*x[9]+0.32*x[10]-0.38*x[11]+0.14*x[12]+x[13]-0.74*x[14]+0.28*x[15]+0.81*x[16]-0.32*x[17]+0.27*x[18]+0.27*x[19]+0.47*x[20]-0.66*x[21]+0.41*x[22]-0.87*x[23]+0.73*x[24]+0.29*x[25]-0.33*x[26]+0.94*x[27]-0.19*x[28]+0.55*x[29]+0.57*x[30]+0.95*x[31]-0.77*x[32]-0.34*x[33]-0.83*x[34]-0.55*x[35]-0.6*x[36]-0.61*x[37]+0.96*x[38]-0.81*x[39]+0.77*x[40]+0.99*x[41] == -0.4)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
