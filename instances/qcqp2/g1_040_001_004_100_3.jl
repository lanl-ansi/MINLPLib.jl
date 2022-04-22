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
@NLconstraint(m, e1, -(0.14*x[2]*x[4]-0.26*x[2]*x[3]+0.02*x[2]*x[5]-0.36*x[2]*x[6]+0.76*x[2]*x[7]+1.78*x[2]*x[8]-1.68*x[2]*x[9]+0.1*x[2]*x[10]+0.68*x[2]*x[11]-0.72*x[2]*x[12]-1.52*x[2]*x[13]-1.94*x[2]*x[16]+0.3*x[2]*x[17]+1.68*x[2]*x[18]-1.22*x[2]*x[19]+1.3*x[2]*x[20]-1.76*x[2]*x[21]+1.84*x[2]*x[22]+1.36*x[2]*x[23]+1.66*x[2]*x[24]-0.82*x[2]*x[25]-0.68*x[2]*x[26]-0.32*x[2]*x[27]+1.86*x[2]*x[28]+1.9*x[2]*x[29]-0.3*x[2]*x[30]+1.82*x[2]*x[31]+x[2]*x[32]-0.62*x[2]*x[33]+0.06*x[2]*x[34]-1.2*x[2]*x[35]+0.76*x[2]*x[36]-1.04*x[2]*x[37]-0.04*x[2]*x[38]+1.26*x[2]*x[39]-1.22*x[2]*x[40]+0.72*x[2]*x[41]+(-1.42*x[3]*x[4])-0.94*x[3]*x[5]-1.86*x[3]*x[6]-0.36*x[3]*x[7]-1.86*x[3]*x[8]+0.34*x[3]*x[9]-1.72*x[3]*x[10]-1.08*x[3]*x[11]+0.34*x[3]*x[12]+1.76*x[3]*x[13]-1.22*x[3]*x[14]+1.9*x[3]*x[15]+0.5*x[3]*x[16]+0.1*x[3]*x[17]-0.7*x[3]*x[18]-0.52*x[3]*x[19]-0.66*x[3]*x[20]+0.98*x[3]*x[21]-1.14*x[3]*x[22]-0.96*x[3]*x[23]-1.02*x[3]*x[24]-0.24*x[3]*x[26]-1.04*x[3]*x[27]+1.8*x[3]*x[28]-1.92*x[3]*x[29]-1.48*x[3]*x[30]+1.42*x[3]*x[31]-0.44*x[3]*x[32]-0.48*x[3]*x[33]-1.54*x[3]*x[34]+0.88*x[3]*x[35]+1.7*x[3]*x[36]-0.12*x[3]*x[37]+1.02*x[3]*x[38]-0.32*x[3]*x[39]-1.64*x[3]*x[40]-0.14*x[3]*x[41]+0.78*x[4]*x[6]-1.26*x[4]*x[5]-0.28*x[4]*x[7]-1.04*x[4]*x[8]-1.28*x[4]*x[9]+1.32*x[4]*x[10]-0.26*x[4]*x[11]-1.9*x[4]*x[12]+1.2*x[4]*x[13]-1.1*x[4]*x[14]+1.58*x[4]*x[15]-1.06*x[4]*x[16]-0.28*x[4]*x[17]-1.44*x[4]*x[18]-0.96*x[4]*x[19]+1.62*x[4]*x[20]-0.62*x[4]*x[21]+0.62*x[4]*x[22]-0.38*x[4]*x[23]-1.18*x[4]*x[25]+1.74*x[4]*x[26]-0.48*x[4]*x[27]+1.64*x[4]*x[28]+1.88*x[4]*x[29]-0.06*x[4]*x[30]+1.24*x[4]*x[31]+0.82*x[4]*x[32]-0.88*x[4]*x[33]-1.16*x[4]*x[34]+0.8*x[4]*x[35]-1.84*x[4]*x[36]-1.46*x[4]*x[37]+1.98*x[4]*x[38]-0.42*x[4]*x[39]+0.96*x[4]*x[40]-0.7*x[4]*x[41]+1.98*x[5]*x[6]+1.16*x[5]*x[7]+0.42*x[5]*x[8]+0.82*x[5]*x[9]+0.48*x[5]*x[11]-0.56*x[5]*x[12]+0.26*x[5]*x[13]+1.28*x[5]*x[14]-0.5*x[5]*x[15]-1.76*x[5]*x[16]+0.36*x[5]*x[17]-1.82*x[5]*x[18]+1.4*x[5]*x[19]+1.76*x[5]*x[20]-0.08*x[5]*x[21]-0.24*x[5]*x[22]-1.56*x[5]*x[23]-0.48*x[5]*x[24]+0.9*x[5]*x[25]+1.46*x[5]*x[26]-0.32*x[5]*x[27]-1.06*x[5]*x[28]-0.02*x[5]*x[29]-1.02*x[5]*x[30]+1.5*x[5]*x[31]+0.12*x[5]*x[32]-0.52*x[5]*x[33]-1.92*x[5]*x[34]-0.88*x[5]*x[35]-1.32*x[5]*x[36]-0.86*x[5]*x[37]+0.52*x[5]*x[38]-0.72*x[5]*x[39]-0.4*x[5]*x[40]+1.06*x[5]*x[41]+0.72*x[6]*x[8]-0.3*x[6]*x[7]+1.92*x[6]*x[9]-0.42*x[6]*x[10]+x[6]*x[11]+1.18*x[6]*x[12]+0.64*x[6]*x[13]+1.36*x[6]*x[14]-0.4*x[6]*x[15]-0.92*x[6]*x[16]+0.18*x[6]*x[17]+0.84*x[6]*x[18]-0.46*x[6]*x[19]+0.9*x[6]*x[20]+0.42*x[6]*x[22]+1.78*x[6]*x[23]-1.42*x[6]*x[24]+0.26*x[6]*x[25]-1.58*x[6]*x[26]-1.5*x[6]*x[27]+1.28*x[6]*x[28]+1.52*x[6]*x[29]-0.34*x[6]*x[30]+0.26*x[6]*x[31]-1.76*x[6]*x[32]-1.94*x[6]*x[33]+0.8*x[6]*x[34]-0.54*x[6]*x[35]+1.74*x[6]*x[36]-1.52*x[6]*x[37]-0.4*x[6]*x[39]-1.14*x[6]*x[40]-1.96*x[6]*x[41]+1.4*x[7]*x[9]-1.36*x[7]*x[8]+1.22*x[7]*x[10]+1.04*x[7]*x[11]-1.64*x[7]*x[12]-0.18*x[7]*x[13]+0.28*x[7]*x[14]-0.86*x[7]*x[15]+0.88*x[7]*x[16]+1.72*x[7]*x[17]-0.4*x[7]*x[18]+1.58*x[7]*x[20]-1.32*x[7]*x[21]+1.18*x[7]*x[22]+1.82*x[7]*x[23]+0.3*x[7]*x[24]-0.42*x[7]*x[25]-1.96*x[7]*x[26]+0.14*x[7]*x[27]+1.3*x[7]*x[28]+0.24*x[7]*x[29]+0.42*x[7]*x[30]+0.06*x[7]*x[31]+1.42*x[7]*x[33]-1.14*x[7]*x[34]-1.8*x[7]*x[35]-0.08*x[7]*x[36]-0.28*x[7]*x[37]-1.56*x[7]*x[38]+1.46*x[7]*x[39]+0.32*x[7]*x[40]+0.4*x[7]*x[41]+(-1.56*x[8]*x[9])-2*x[8]*x[10]+0.86*x[8]*x[11]+0.68*x[8]*x[12]-0.08*x[8]*x[13]-0.14*x[8]*x[14]-1.72*x[8]*x[15]+0.76*x[8]*x[16]-0.5*x[8]*x[17]-0.04*x[8]*x[18]-1.28*x[8]*x[19]-1.4*x[8]*x[20]+1.16*x[8]*x[21]+1.44*x[8]*x[22]+0.9*x[8]*x[23]-0.34*x[8]*x[24]+0.18*x[8]*x[25]-1.68*x[8]*x[26]-1.72*x[8]*x[27]+1.42*x[8]*x[28]+0.98*x[8]*x[29]+0.84*x[8]*x[30]+0.34*x[8]*x[31]-0.36*x[8]*x[32]-0.54*x[8]*x[33]-0.66*x[8]*x[34]-1.7*x[8]*x[35]+1.4*x[8]*x[36]+1.44*x[8]*x[37]-0.98*x[8]*x[38]+0.7*x[8]*x[39]+1.04*x[8]*x[40]+0.22*x[8]*x[41]+(-0.7*x[9]*x[10])-1.42*x[9]*x[11]-1.26*x[9]*x[12]-0.26*x[9]*x[14]+0.54*x[9]*x[15]-1.3*x[9]*x[16]-1.76*x[9]*x[17]-1.5*x[9]*x[18]+0.9*x[9]*x[19]-1.52*x[9]*x[20]-1.56*x[9]*x[21]+1.78*x[9]*x[22]-0.44*x[9]*x[23]+0.34*x[9]*x[24]-1.34*x[9]*x[25]-1.9*x[9]*x[26]-1.1*x[9]*x[27]-1.2*x[9]*x[28]+1.84*x[9]*x[29]-0.88*x[9]*x[30]+0.46*x[9]*x[31]+1.6*x[9]*x[32]+1.92*x[9]*x[33]+1.92*x[9]*x[34]+1.64*x[9]*x[35]+1.56*x[9]*x[36]-1.64*x[9]*x[37]-0.88*x[9]*x[38]-1.66*x[9]*x[39]+0.54*x[9]*x[40]-1.08*x[9]*x[41]+(-0.9*x[10]*x[11])-0.84*x[10]*x[12]-0.18*x[10]*x[14]+0.76*x[10]*x[15]+0.12*x[10]*x[16]+1.08*x[10]*x[17]+1.74*x[10]*x[18]-0.42*x[10]*x[19]+1.78*x[10]*x[20]-0.6*x[10]*x[21]+0.28*x[10]*x[22]-0.2*x[10]*x[23]-1.66*x[10]*x[24]-0.72*x[10]*x[25]-1.7*x[10]*x[26]-1.64*x[10]*x[27]-0.64*x[10]*x[28]-0.88*x[10]*x[29]+1.32*x[10]*x[30]+0.8*x[10]*x[31]-0.5*x[10]*x[33]+0.6*x[10]*x[34]-1.9*x[10]*x[35]-0.78*x[10]*x[36]-0.08*x[10]*x[37]+0.38*x[10]*x[38]+0.94*x[10]*x[39]+1.9*x[10]*x[40]+0.88*x[10]*x[41]+1.48*x[11]*x[12]-1.44*x[11]*x[13]-1.82*x[11]*x[14]+1.34*x[11]*x[15]+0.46*x[11]*x[16]-1.98*x[11]*x[17]-0.1*x[11]*x[18]+1.26*x[11]*x[19]+1.76*x[11]*x[20]+1.88*x[11]*x[21]-1.86*x[11]*x[22]-1.4*x[11]*x[23]-0.7*x[11]*x[24]-0.36*x[11]*x[25]-1.18*x[11]*x[26]+0.2*x[11]*x[27]-1.28*x[11]*x[28]+0.7*x[11]*x[29]+0.56*x[11]*x[30]+0.42*x[11]*x[31]-0.96*x[11]*x[32]-1.64*x[11]*x[33]+0.36*x[11]*x[34]-0.56*x[11]*x[35]+2*x[11]*x[36]+0.94*x[11]*x[37]+1.78*x[11]*x[38]-0.84*x[11]*x[39]-1.06*x[11]*x[41]+0.18*x[12]*x[13]-1.44*x[12]*x[14]+1.32*x[12]*x[15]+1.28*x[12]*x[16]-0.28*x[12]*x[18]+1.04*x[12]*x[19]+1.48*x[12]*x[20]-2*x[12]*x[21]+0.86*x[12]*x[22]+1.04*x[12]*x[23]+0.9*x[12]*x[24]-1.62*x[12]*x[25]+x[12]*x[26]-0.02*x[12]*x[27]-0.74*x[12]*x[28]+1.7*x[12]*x[29]-0.42*x[12]*x[30]-0.9*x[12]*x[31]+x[12]*x[32]-1.88*x[12]*x[33]-0.88*x[12]*x[34]+1.12*x[12]*x[35]-0.16*x[12]*x[36]-0.14*x[12]*x[37]-x[12]*x[38]+0.64*x[12]*x[39]+1.18*x[12]*x[40]-1.46*x[12]*x[41]+0.76*x[13]*x[15]-1.72*x[13]*x[14]+1.56*x[13]*x[16]-0.02*x[13]*x[17]+1.36*x[13]*x[18]-1.08*x[13]*x[20]+0.68*x[13]*x[21]+1.28*x[13]*x[22]+1.14*x[13]*x[23]+1.96*x[13]*x[24]-1.8*x[13]*x[25]+0.18*x[13]*x[26]-1.9*x[13]*x[27]-1.02*x[13]*x[28]+1.32*x[13]*x[29]-0.02*x[13]*x[30]+0.24*x[13]*x[31]-1.56*x[13]*x[32]+1.3*x[13]*x[33]-0.36*x[13]*x[34]+1.86*x[13]*x[35]+0.3*x[13]*x[36]-0.12*x[13]*x[37]+1.94*x[13]*x[38]+0.62*x[13]*x[39]-1.82*x[13]*x[40]-1.6*x[13]*x[41]+1.18*x[14]*x[16]-0.14*x[14]*x[15]+0.02*x[14]*x[17]-0.9*x[14]*x[18]-1.82*x[14]*x[19]+0.06*x[14]*x[20]-0.9*x[14]*x[21]+0.04*x[14]*x[22]-1.52*x[14]*x[23]+0.6*x[14]*x[24]+0.78*x[14]*x[25]-0.38*x[14]*x[26]-0.6*x[14]*x[27]-1.68*x[14]*x[28]+1.68*x[14]*x[29]+0.16*x[14]*x[30]+1.54*x[14]*x[31]-1.72*x[14]*x[32]-0.4*x[14]*x[33]+0.16*x[14]*x[34]-0.46*x[14]*x[35]+1.68*x[14]*x[36]+0.7*x[14]*x[37]+1.88*x[14]*x[38]-1.52*x[14]*x[39]-0.06*x[14]*x[40]+0.46*x[14]*x[41]+1.54*x[15]*x[16]-0.14*x[15]*x[17]+0.44*x[15]*x[18]+1.6*x[15]*x[19]+1.42*x[15]*x[20]-0.12*x[15]*x[21]+1.88*x[15]*x[22]+1.14*x[15]*x[23]+1.18*x[15]*x[24]+0.06*x[15]*x[25]+1.22*x[15]*x[26]+0.12*x[15]*x[27]-0.48*x[15]*x[28]-1.14*x[15]*x[29]+1.56*x[15]*x[30]-0.16*x[15]*x[31]-1.32*x[15]*x[32]+0.96*x[15]*x[33]-1.56*x[15]*x[34]+1.52*x[15]*x[36]+0.56*x[15]*x[37]+1.24*x[15]*x[38]+1.04*x[15]*x[39]-0.48*x[15]*x[40]-0.32*x[15]*x[41]+0.48*x[16]*x[18]-1.54*x[16]*x[17]+0.8*x[16]*x[19]-1.96*x[16]*x[20]+1.58*x[16]*x[21]+2*x[16]*x[22]+1.06*x[16]*x[23]+0.02*x[16]*x[24]-0.72*x[16]*x[25]+0.04*x[16]*x[26]+1.76*x[16]*x[27]-1.24*x[16]*x[28]+1.14*x[16]*x[29]-0.82*x[16]*x[30]-1.04*x[16]*x[31]+1.78*x[16]*x[32]+0.22*x[16]*x[33]+0.28*x[16]*x[34]-0.18*x[16]*x[35]-1.96*x[16]*x[36]-0.72*x[16]*x[37]-0.48*x[16]*x[38]-0.68*x[16]*x[39]+0.2*x[16]*x[40]+0.28*x[16]*x[41]+0.88*x[17]*x[18]+1.84*x[17]*x[19]-1.28*x[17]*x[21]+0.92*x[17]*x[22]-0.2*x[17]*x[23]+0.68*x[17]*x[24]+1.22*x[17]*x[25]+1.88*x[17]*x[26]+1.54*x[17]*x[27]+0.3*x[17]*x[28]-0.48*x[17]*x[29]-1.58*x[17]*x[30]-1.24*x[17]*x[31]+0.34*x[17]*x[32]+1.96*x[17]*x[33]+1.38*x[17]*x[35]-0.08*x[17]*x[36]-1.92*x[17]*x[37]-0.12*x[17]*x[38]+1.9*x[17]*x[39]-0.64*x[17]*x[40]-1.26*x[17]*x[41]+1.66*x[18]*x[19]+1.56*x[18]*x[20]-1.82*x[18]*x[21]-1.4*x[18]*x[22]-0.34*x[18]*x[23]-0.82*x[18]*x[24]-1.3*x[18]*x[25]-0.06*x[18]*x[26]+0.18*x[18]*x[27]+1.84*x[18]*x[28]+0.1*x[18]*x[29]-1.42*x[18]*x[30]+0.12*x[18]*x[31]+1.34*x[18]*x[32]+1.8*x[18]*x[33]+0.48*x[18]*x[34]-0.16*x[18]*x[35]+0.7*x[18]*x[36]+0.24*x[18]*x[37]+0.92*x[18]*x[38]-1.48*x[18]*x[39]-0.32*x[18]*x[40]-0.3*x[18]*x[41]+0.48*x[19]*x[21]-1.98*x[19]*x[20]+0.18*x[19]*x[22]-0.24*x[19]*x[23]+1.88*x[19]*x[24]+1.96*x[19]*x[25]-0.32*x[19]*x[26]+0.96*x[19]*x[27]-0.82*x[19]*x[28]+0.8*x[19]*x[29]-0.94*x[19]*x[32]+1.4*x[19]*x[33]-0.9*x[19]*x[34]-1.24*x[19]*x[35]-0.56*x[19]*x[36]-0.44*x[19]*x[37]-0.1*x[19]*x[38]+0.1*x[19]*x[39]+0.06*x[19]*x[40]-1.84*x[19]*x[41]+0.76*x[20]*x[22]-0.68*x[20]*x[23]-0.84*x[20]*x[25]+0.18*x[20]*x[26]-0.9*x[20]*x[27]-1.56*x[20]*x[28]+1.02*x[20]*x[29]-0.3*x[20]*x[30]-1.24*x[20]*x[31]+0.28*x[20]*x[32]-0.6*x[20]*x[33]-1.68*x[20]*x[34]-1.18*x[20]*x[35]-1.1*x[20]*x[36]+0.94*x[20]*x[37]-1.78*x[20]*x[38]+0.8*x[20]*x[39]-0.04*x[20]*x[40]-1.8*x[20]*x[41]+0.48*x[21]*x[22]+0.22*x[21]*x[23]-1.28*x[21]*x[24]-1.16*x[21]*x[25]+0.32*x[21]*x[26]+1.84*x[21]*x[27]+1.84*x[21]*x[28]-1.7*x[21]*x[29]+1.08*x[21]*x[30]-1.62*x[21]*x[31]+1.72*x[21]*x[32]-1.32*x[21]*x[33]-0.44*x[21]*x[34]+1.1*x[21]*x[35]+0.02*x[21]*x[36]+1.7*x[21]*x[37]+1.7*x[21]*x[38]-1.58*x[21]*x[39]-0.94*x[21]*x[40]+0.2*x[21]*x[41]+1.8*x[22]*x[23]+0.46*x[22]*x[24]-0.86*x[22]*x[25]+0.3*x[22]*x[26]-0.96*x[22]*x[27]-1.88*x[22]*x[28]-0.3*x[22]*x[29]+1.26*x[22]*x[30]-0.48*x[22]*x[31]-1.22*x[22]*x[32]-1.74*x[22]*x[33]+1.16*x[22]*x[34]+1.88*x[22]*x[35]+1.66*x[22]*x[36]-0.72*x[22]*x[37]+1.26*x[22]*x[38]-1.34*x[22]*x[39]-2*x[22]*x[40]+0.06*x[22]*x[41]+0.76*x[23]*x[24]+1.76*x[23]*x[25]-0.82*x[23]*x[26]+1.8*x[23]*x[27]-1.54*x[23]*x[28]+0.34*x[23]*x[29]-0.84*x[23]*x[30]+0.5*x[23]*x[31]+0.62*x[23]*x[32]+0.18*x[23]*x[33]+0.54*x[23]*x[34]+0.46*x[23]*x[35]+1.94*x[23]*x[36]-1.16*x[23]*x[37]-1.48*x[23]*x[38]+1.22*x[23]*x[39]-1.64*x[23]*x[40]-1.8*x[23]*x[41]+0.06*x[24]*x[25]+0.32*x[24]*x[26]-1.84*x[24]*x[27]-1.38*x[24]*x[28]+0.36*x[24]*x[29]+1.76*x[24]*x[30]+1.96*x[24]*x[31]-1.26*x[24]*x[32]+0.72*x[24]*x[33]-0.92*x[24]*x[34]-1.96*x[24]*x[35]-1.58*x[24]*x[36]-1.58*x[24]*x[37]-1.26*x[24]*x[38]+0.2*x[24]*x[39]-0.06*x[24]*x[40]-1.44*x[24]*x[41]+1.7*x[25]*x[27]+1.66*x[25]*x[28]+1.76*x[25]*x[29]+0.94*x[25]*x[30]-x[25]*x[31]-1.16*x[25]*x[32]+1.4*x[25]*x[33]-1.42*x[25]*x[34]+0.76*x[25]*x[35]+1.3*x[25]*x[36]+0.92*x[25]*x[37]-1.14*x[25]*x[38]-1.1*x[25]*x[39]-0.14*x[25]*x[40]-1.14*x[25]*x[41]+(-1.22*x[26]*x[27])-0.96*x[26]*x[28]-1.86*x[26]*x[30]+1.76*x[26]*x[31]-0.8*x[26]*x[32]+1.98*x[26]*x[33]+0.28*x[26]*x[34]-1.9*x[26]*x[35]+0.08*x[26]*x[36]-1.02*x[26]*x[37]+0.92*x[26]*x[38]-1.82*x[26]*x[39]+0.2*x[26]*x[40]-1.28*x[26]*x[41]+1.66*x[27]*x[28]+1.32*x[27]*x[29]+0.46*x[27]*x[30]-0.26*x[27]*x[31]+0.06*x[27]*x[32]+1.46*x[27]*x[33]-1.08*x[27]*x[34]+0.8*x[27]*x[35]-1.9*x[27]*x[36]-1.66*x[27]*x[37]+0.86*x[27]*x[38]+0.92*x[27]*x[39]+0.7*x[27]*x[40]+0.88*x[27]*x[41]+1.92*x[28]*x[30]-0.68*x[28]*x[29]+0.38*x[28]*x[31]-0.34*x[28]*x[32]-0.26*x[28]*x[33]+0.2*x[28]*x[34]+0.28*x[28]*x[35]+1.64*x[28]*x[36]-0.34*x[28]*x[37]+1.94*x[28]*x[38]+x[28]*x[39]-0.8*x[28]*x[40]+0.5*x[28]*x[41]+1.94*x[29]*x[31]-0.46*x[29]*x[30]-1.98*x[29]*x[32]-0.26*x[29]*x[33]-1.72*x[29]*x[34]+1.48*x[29]*x[35]-0.06*x[29]*x[36]+1.64*x[29]*x[37]+1.72*x[29]*x[38]+0.98*x[29]*x[39]-1.18*x[29]*x[40]-1.28*x[29]*x[41]+0.68*x[30]*x[31]-1.68*x[30]*x[32]+0.74*x[30]*x[33]-1.16*x[30]*x[34]+1.3*x[30]*x[35]-1.28*x[30]*x[36]-0.5*x[30]*x[37]+0.9*x[30]*x[38]-0.08*x[30]*x[39]-0.88*x[30]*x[40]-1.26*x[30]*x[41]+0.96*x[31]*x[32]-0.32*x[31]*x[33]-0.8*x[31]*x[34]+0.66*x[31]*x[35]+0.04*x[31]*x[36]-1.56*x[31]*x[37]+0.72*x[31]*x[38]+0.52*x[31]*x[39]-0.42*x[31]*x[40]+1.78*x[31]*x[41]+1.64*x[32]*x[33]-0.48*x[32]*x[34]+1.8*x[32]*x[35]-0.36*x[32]*x[36]+1.92*x[32]*x[37]-0.8*x[32]*x[38]-1.6*x[32]*x[39]+1.56*x[32]*x[40]+0.86*x[32]*x[41]+0.62*x[33]*x[34]+0.64*x[33]*x[36]+1.4*x[33]*x[37]-1.32*x[33]*x[38]-1.62*x[33]*x[39]-0.66*x[33]*x[40]+1.06*x[33]*x[41]+1.1*x[34]*x[36]-1.36*x[34]*x[35]+1.56*x[34]*x[37]+0.1*x[34]*x[38]+1.2*x[34]*x[39]-0.82*x[34]*x[40]+1.54*x[34]*x[41]+0.62*x[35]*x[36]+0.4*x[35]*x[37]+1.16*x[35]*x[38]+1.34*x[35]*x[39]+1.44*x[35]*x[40]+1.44*x[35]*x[41]+x[36]*x[38]-0.16*x[36]*x[37]-0.7*x[36]*x[39]+0.46*x[36]*x[40]+1.38*x[36]*x[41]+0.56*x[37]*x[38]+1.8*x[37]*x[39]+1.52*x[37]*x[40]-0.68*x[37]*x[41]+0.24*x[38]*x[40]-0.9*x[38]*x[41]+1.46*x[39]*x[40]+2*x[39]*x[41]-1.24*x[40]*x[41]+0.75*x[2]*x[2]+0.38*x[3]*x[3]+0.61*x[4]*x[4]-0.31*x[5]*x[5]+0.96*x[6]*x[6]-0.9*x[7]*x[7]+0.16*x[8]*x[8]-0.85*x[9]*x[9]+0.87*x[10]*x[10]+0.74*x[11]*x[11]-0.92*x[12]*x[12]-0.53*x[13]*x[13]-0.33*x[14]*x[14]+0.92*x[15]*x[15]-0.86*x[16]*x[16]-0.88*x[17]*x[17]+0.53*x[18]*x[18]+0.01*x[20]*x[20]-0.28*x[21]*x[21]-0.06*x[22]*x[22]+0.13*x[23]*x[23]-0.28*x[24]*x[24]+0.64*x[25]*x[25]+0.21*x[26]*x[26]-0.94*x[27]*x[27]+0.03*x[28]*x[28]+0.71*x[29]*x[29]+0.49*x[30]*x[30]-0.09*x[31]*x[31]-0.56*x[32]*x[32]-0.53*x[33]*x[33]-0.92*x[34]*x[34]+0.83*x[35]*x[35]+0.2*x[36]*x[36]-0.68*x[37]*x[37]+0.2*x[38]*x[38]-0.3*x[39]*x[39]+0.46*x[40]*x[40]+0.25*x[41]*x[41]+0.08*x[2]+0.81*x[3]+0.16*x[4]+0.23*x[5]+0.96*x[6]+0.25*x[7]-0.37*x[8]+0.53*x[9]+0.16*x[10]+0.04*x[11]-0.39*x[12]+0.54*x[13]-0.87*x[14]-0.83*x[15]+0.61*x[16]+0.13*x[17]-0.81*x[18]-0.8*x[19]-0.02*x[20]+0.63*x[21]-0.57*x[22]-0.14*x[23]-0.3*x[24]-0.73*x[25]-0.15*x[26]+0.34*x[27]+0.22*x[28]+0.78*x[29]-0.66*x[30]-0.7*x[31]+0.78*x[32]-0.92*x[33]+0.79*x[34]+0.55*x[35]+0.6*x[36]+0.49*x[37]+0.97*x[38]-0.07*x[39]+0.4*x[40]+0.82*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.2*x[2]*x[3]+0.6*x[2]*x[4]+0.16*x[2]*x[5]+1.1*x[2]*x[6]+1.26*x[2]*x[7]+0.36*x[2]*x[8]+0.08*x[2]*x[11]-0.62*x[2]*x[12]-x[2]*x[14]-1.9*x[2]*x[15]+1.86*x[2]*x[16]+0.34*x[2]*x[17]-1.9*x[2]*x[18]+1.2*x[2]*x[19]-0.38*x[2]*x[20]-1.84*x[2]*x[21]+1.56*x[2]*x[22]-1.3*x[2]*x[24]-1.76*x[2]*x[25]+0.06*x[2]*x[26]-1.92*x[2]*x[27]+0.58*x[2]*x[29]-1.28*x[2]*x[30]-1.18*x[2]*x[31]+0.2*x[2]*x[32]-0.54*x[2]*x[33]+0.32*x[2]*x[34]-0.38*x[2]*x[35]+1.28*x[2]*x[36]+0.72*x[2]*x[37]+0.54*x[2]*x[38]+1.58*x[2]*x[39]-1.14*x[2]*x[40]-0.92*x[2]*x[41]+(-0.26*x[3]*x[4])-1.56*x[3]*x[5]-0.18*x[3]*x[6]+0.08*x[3]*x[7]+1.32*x[3]*x[8]+0.78*x[3]*x[9]+0.14*x[3]*x[10]+0.48*x[3]*x[11]-1.56*x[3]*x[12]+1.28*x[3]*x[13]+0.58*x[3]*x[14]+1.12*x[3]*x[15]+1.94*x[3]*x[16]-1.8*x[3]*x[17]-0.22*x[3]*x[18]-0.74*x[3]*x[19]+1.9*x[3]*x[20]+1.74*x[3]*x[21]+1.16*x[3]*x[22]+1.3*x[3]*x[23]-0.12*x[3]*x[24]+0.84*x[3]*x[25]+1.3*x[3]*x[26]+0.88*x[3]*x[27]-0.28*x[3]*x[28]+1.52*x[3]*x[29]-1.76*x[3]*x[30]-1.5*x[3]*x[31]+0.12*x[3]*x[32]+2*x[3]*x[33]+1.48*x[3]*x[35]-1.98*x[3]*x[36]+0.9*x[3]*x[37]+1.78*x[3]*x[38]+0.04*x[3]*x[39]-1.14*x[3]*x[40]+1.9*x[3]*x[41]+1.88*x[4]*x[5]+1.66*x[4]*x[6]+1.76*x[4]*x[7]+1.58*x[4]*x[8]-1.88*x[4]*x[9]+1.92*x[4]*x[10]+1.48*x[4]*x[11]-0.26*x[4]*x[12]-0.94*x[4]*x[13]+0.5*x[4]*x[14]-0.96*x[4]*x[15]-0.8*x[4]*x[17]-0.64*x[4]*x[18]-0.36*x[4]*x[19]+1.02*x[4]*x[20]-0.4*x[4]*x[21]-0.28*x[4]*x[22]+0.9*x[4]*x[23]+0.56*x[4]*x[24]-1.9*x[4]*x[25]-1.34*x[4]*x[26]-0.42*x[4]*x[27]-0.46*x[4]*x[28]+1.16*x[4]*x[29]+1.48*x[4]*x[30]-1.26*x[4]*x[31]+0.74*x[4]*x[32]-0.06*x[4]*x[33]-1.8*x[4]*x[34]+0.74*x[4]*x[35]+0.3*x[4]*x[36]+0.22*x[4]*x[37]+1.4*x[4]*x[38]+1.98*x[4]*x[39]+1.18*x[4]*x[40]+0.98*x[4]*x[41]+(-0.28*x[5]*x[6])-1.8*x[5]*x[7]-1.94*x[5]*x[8]-0.02*x[5]*x[9]-0.9*x[5]*x[10]-x[5]*x[11]-0.02*x[5]*x[12]-1.72*x[5]*x[13]-1.5*x[5]*x[14]-1.08*x[5]*x[15]+0.08*x[5]*x[16]+1.74*x[5]*x[17]-0.2*x[5]*x[18]-1.04*x[5]*x[19]-1.52*x[5]*x[20]-1.46*x[5]*x[21]-0.06*x[5]*x[22]+1.86*x[5]*x[23]+0.84*x[5]*x[24]+0.28*x[5]*x[25]-1.34*x[5]*x[26]+1.12*x[5]*x[27]+1.74*x[5]*x[28]-1.88*x[5]*x[29]+0.5*x[5]*x[30]-0.84*x[5]*x[31]+0.78*x[5]*x[32]-0.24*x[5]*x[33]-0.06*x[5]*x[34]+0.74*x[5]*x[35]+0.68*x[5]*x[36]+0.4*x[5]*x[37]+0.92*x[5]*x[38]+0.46*x[5]*x[39]+1.34*x[5]*x[40]-0.1*x[5]*x[41]+0.48*x[6]*x[7]+1.52*x[6]*x[8]+1.22*x[6]*x[9]+0.26*x[6]*x[10]-1.18*x[6]*x[11]+0.56*x[6]*x[12]-0.12*x[6]*x[13]+0.78*x[6]*x[14]+1.5*x[6]*x[15]-1.88*x[6]*x[16]-0.3*x[6]*x[17]+0.48*x[6]*x[18]+0.42*x[6]*x[19]-1.66*x[6]*x[20]+0.18*x[6]*x[21]+0.36*x[6]*x[22]-0.86*x[6]*x[23]-x[6]*x[24]-0.36*x[6]*x[25]-1.1*x[6]*x[26]-0.46*x[6]*x[28]+0.82*x[6]*x[29]+1.18*x[6]*x[30]+0.66*x[6]*x[31]+0.14*x[6]*x[32]+0.46*x[6]*x[33]+0.82*x[6]*x[34]+1.94*x[6]*x[35]-x[6]*x[36]-1.18*x[6]*x[37]-1.62*x[6]*x[38]+0.92*x[6]*x[39]-0.86*x[6]*x[40]+1.76*x[6]*x[41]+1.22*x[7]*x[9]-1.68*x[7]*x[8]-0.78*x[7]*x[10]+0.52*x[7]*x[11]+0.96*x[7]*x[12]-1.44*x[7]*x[13]-1.02*x[7]*x[14]+1.68*x[7]*x[15]+0.52*x[7]*x[16]-1.06*x[7]*x[17]-0.14*x[7]*x[18]+1.1*x[7]*x[19]+1.52*x[7]*x[20]+0.18*x[7]*x[21]+1.46*x[7]*x[22]+1.84*x[7]*x[23]+1.86*x[7]*x[24]-0.06*x[7]*x[25]+2*x[7]*x[26]+0.1*x[7]*x[27]+1.96*x[7]*x[28]-1.16*x[7]*x[29]-0.7*x[7]*x[30]+1.16*x[7]*x[31]+0.2*x[7]*x[32]-0.16*x[7]*x[33]+1.1*x[7]*x[34]+0.04*x[7]*x[35]-0.88*x[7]*x[36]-1.92*x[7]*x[37]-1.44*x[7]*x[38]-0.74*x[7]*x[39]+0.78*x[7]*x[40]+1.28*x[7]*x[41]+0.56*x[8]*x[10]-1.54*x[8]*x[9]-0.78*x[8]*x[11]-1.16*x[8]*x[12]+0.7*x[8]*x[13]+0.36*x[8]*x[14]-1.42*x[8]*x[15]-0.22*x[8]*x[16]-0.12*x[8]*x[17]-1.18*x[8]*x[18]-1.9*x[8]*x[19]+1.54*x[8]*x[20]-1.64*x[8]*x[21]-1.86*x[8]*x[22]-1.1*x[8]*x[23]-1.96*x[8]*x[24]-1.38*x[8]*x[25]-1.92*x[8]*x[26]-0.6*x[8]*x[27]+0.28*x[8]*x[28]+1.36*x[8]*x[29]-1.48*x[8]*x[30]-1.1*x[8]*x[31]-1.14*x[8]*x[32]+1.12*x[8]*x[33]+1.78*x[8]*x[34]+0.08*x[8]*x[35]+1.42*x[8]*x[36]-1.24*x[8]*x[37]+1.94*x[8]*x[38]-0.44*x[8]*x[39]-1.08*x[8]*x[40]+0.16*x[8]*x[41]+1.58*x[9]*x[10]-1.08*x[9]*x[11]-1.72*x[9]*x[12]-1.72*x[9]*x[13]+0.12*x[9]*x[14]-1.34*x[9]*x[15]+0.7*x[9]*x[16]+x[9]*x[17]+0.5*x[9]*x[18]+1.86*x[9]*x[19]+0.42*x[9]*x[20]+1.98*x[9]*x[21]-0.68*x[9]*x[22]-0.08*x[9]*x[23]-1.62*x[9]*x[24]-1.8*x[9]*x[25]+0.74*x[9]*x[26]+0.38*x[9]*x[28]+1.58*x[9]*x[30]-1.68*x[9]*x[31]-1.3*x[9]*x[32]+1.4*x[9]*x[33]-1.62*x[9]*x[34]+1.12*x[9]*x[35]+0.5*x[9]*x[36]+0.56*x[9]*x[37]-1.24*x[9]*x[38]+0.16*x[9]*x[39]-1.1*x[9]*x[40]+1.6*x[9]*x[41]+0.2*x[10]*x[12]-0.56*x[10]*x[11]+2*x[10]*x[13]-0.68*x[10]*x[14]-1.3*x[10]*x[15]+1.3*x[10]*x[16]-0.64*x[10]*x[17]+1.7*x[10]*x[18]-0.22*x[10]*x[20]+0.56*x[10]*x[21]+0.58*x[10]*x[22]+0.82*x[10]*x[23]+0.1*x[10]*x[24]-1.28*x[10]*x[25]-0.92*x[10]*x[26]-1.3*x[10]*x[27]+0.88*x[10]*x[28]-0.9*x[10]*x[29]+1.64*x[10]*x[30]+1.64*x[10]*x[31]-1.26*x[10]*x[32]-0.3*x[10]*x[33]-0.76*x[10]*x[34]+1.88*x[10]*x[35]+1.52*x[10]*x[36]+0.92*x[10]*x[37]-0.56*x[10]*x[38]+0.58*x[10]*x[40]-0.74*x[10]*x[41]+0.98*x[11]*x[13]-1.24*x[11]*x[12]+2*x[11]*x[14]+0.22*x[11]*x[15]-0.82*x[11]*x[16]+1.78*x[11]*x[17]-0.1*x[11]*x[18]+0.32*x[11]*x[19]-1.94*x[11]*x[20]-0.88*x[11]*x[21]-1.78*x[11]*x[22]-0.04*x[11]*x[23]+1.7*x[11]*x[24]-0.44*x[11]*x[25]-0.76*x[11]*x[26]-1.58*x[11]*x[27]-1.8*x[11]*x[28]-1.14*x[11]*x[29]-0.22*x[11]*x[30]-0.08*x[11]*x[31]+1.26*x[11]*x[32]-0.68*x[11]*x[33]-1.46*x[11]*x[34]+1.94*x[11]*x[36]+1.48*x[11]*x[37]-1.5*x[11]*x[38]+0.24*x[11]*x[39]+1.04*x[11]*x[40]-0.44*x[11]*x[41]+1.38*x[12]*x[13]+0.62*x[12]*x[14]-1.12*x[12]*x[15]-0.22*x[12]*x[16]+1.84*x[12]*x[17]+1.68*x[12]*x[18]-0.32*x[12]*x[19]+1.44*x[12]*x[20]-1.26*x[12]*x[21]-0.64*x[12]*x[22]-0.16*x[12]*x[23]-0.76*x[12]*x[24]-0.8*x[12]*x[25]+0.34*x[12]*x[26]-0.66*x[12]*x[27]+0.78*x[12]*x[28]-0.52*x[12]*x[29]-0.08*x[12]*x[30]+0.88*x[12]*x[31]+0.2*x[12]*x[32]+0.88*x[12]*x[33]+1.44*x[12]*x[34]+0.12*x[12]*x[35]-1.62*x[12]*x[36]-0.78*x[12]*x[37]-0.64*x[12]*x[38]+1.76*x[12]*x[39]+1.78*x[12]*x[40]-0.48*x[12]*x[41]+0.46*x[13]*x[15]-0.32*x[13]*x[14]+1.54*x[13]*x[16]+1.32*x[13]*x[17]-1.48*x[13]*x[18]+0.68*x[13]*x[19]-0.7*x[13]*x[20]-0.02*x[13]*x[21]+1.04*x[13]*x[22]-1.94*x[13]*x[23]+0.7*x[13]*x[24]+1.52*x[13]*x[25]+0.14*x[13]*x[26]+0.4*x[13]*x[27]-0.14*x[13]*x[28]+1.06*x[13]*x[29]-1.98*x[13]*x[30]-1.32*x[13]*x[31]-1.66*x[13]*x[32]+1.56*x[13]*x[33]-1.7*x[13]*x[34]-1.48*x[13]*x[35]-1.96*x[13]*x[36]+0.12*x[13]*x[37]-0.82*x[13]*x[38]-1.04*x[13]*x[39]+1.56*x[13]*x[40]-0.68*x[13]*x[41]+(-1.28*x[14]*x[15])-1.7*x[14]*x[16]-0.26*x[14]*x[17]+1.48*x[14]*x[18]+1.34*x[14]*x[19]-0.94*x[14]*x[20]+1.14*x[14]*x[21]+0.3*x[14]*x[22]-1.62*x[14]*x[23]+0.04*x[14]*x[24]+0.26*x[14]*x[25]+1.14*x[14]*x[26]-0.88*x[14]*x[27]+0.22*x[14]*x[28]-1.96*x[14]*x[29]-2*x[14]*x[30]+1.94*x[14]*x[31]+1.68*x[14]*x[32]-0.82*x[14]*x[33]-0.68*x[14]*x[34]-0.04*x[14]*x[35]-1.32*x[14]*x[36]-1.02*x[14]*x[37]-0.36*x[14]*x[38]-0.64*x[14]*x[39]+0.9*x[14]*x[40]+1.92*x[15]*x[17]-1.02*x[15]*x[16]-0.18*x[15]*x[18]+1.18*x[15]*x[19]-1.76*x[15]*x[20]-0.3*x[15]*x[21]-0.76*x[15]*x[22]-1.84*x[15]*x[23]+1.84*x[15]*x[24]-0.38*x[15]*x[25]-0.84*x[15]*x[26]-1.04*x[15]*x[27]-0.3*x[15]*x[28]-1.46*x[15]*x[29]+0.9*x[15]*x[30]-1.32*x[15]*x[31]+1.06*x[15]*x[32]+0.02*x[15]*x[33]+0.18*x[15]*x[34]-0.54*x[15]*x[35]-1.9*x[15]*x[36]-1.28*x[15]*x[37]-1.56*x[15]*x[38]-0.96*x[15]*x[39]+1.9*x[15]*x[40]-1.9*x[15]*x[41]+0.36*x[16]*x[18]-0.74*x[16]*x[17]+0.62*x[16]*x[19]+1.86*x[16]*x[20]+1.28*x[16]*x[21]+1.18*x[16]*x[22]-1.28*x[16]*x[23]+0.04*x[16]*x[24]-1.36*x[16]*x[25]+1.74*x[16]*x[27]+0.82*x[16]*x[28]-0.84*x[16]*x[29]-1.78*x[16]*x[30]+1.38*x[16]*x[31]+0.98*x[16]*x[32]+0.14*x[16]*x[33]+1.78*x[16]*x[34]+1.28*x[16]*x[35]-0.26*x[16]*x[36]+1.54*x[16]*x[37]+0.84*x[16]*x[38]+0.4*x[16]*x[39]-1.76*x[16]*x[40]-1.74*x[16]*x[41]+1.46*x[17]*x[18]+0.92*x[17]*x[19]-1.58*x[17]*x[20]+0.48*x[17]*x[21]-1.22*x[17]*x[22]+1.54*x[17]*x[23]+1.36*x[17]*x[24]-0.28*x[17]*x[25]+0.22*x[17]*x[26]+1.76*x[17]*x[27]-0.16*x[17]*x[28]-1.18*x[17]*x[29]-1.06*x[17]*x[30]-0.04*x[17]*x[31]-0.66*x[17]*x[32]-0.74*x[17]*x[33]-0.88*x[17]*x[34]-1.06*x[17]*x[35]-1.84*x[17]*x[36]+1.84*x[17]*x[37]-0.18*x[17]*x[38]+0.06*x[17]*x[39]+1.96*x[17]*x[40]+1.82*x[17]*x[41]+1.04*x[18]*x[19]+0.96*x[18]*x[20]+0.66*x[18]*x[21]+1.34*x[18]*x[22]-0.72*x[18]*x[23]-0.9*x[18]*x[24]-0.72*x[18]*x[25]-1.4*x[18]*x[26]-0.96*x[18]*x[27]+1.78*x[18]*x[28]-1.76*x[18]*x[29]-x[18]*x[30]-1.32*x[18]*x[31]+1.86*x[18]*x[32]+1.18*x[18]*x[33]+1.32*x[18]*x[34]-1.38*x[18]*x[35]-1.66*x[18]*x[36]+0.94*x[18]*x[37]+0.68*x[18]*x[38]+1.32*x[18]*x[39]-0.56*x[18]*x[40]+0.26*x[18]*x[41]+1.96*x[19]*x[20]+1.48*x[19]*x[21]+1.96*x[19]*x[22]-0.64*x[19]*x[23]+1.44*x[19]*x[24]+0.86*x[19]*x[25]-0.26*x[19]*x[26]-1.24*x[19]*x[27]+1.34*x[19]*x[28]+0.98*x[19]*x[29]-0.88*x[19]*x[30]-1.28*x[19]*x[31]-1.12*x[19]*x[32]+1.76*x[19]*x[33]+0.14*x[19]*x[34]-0.02*x[19]*x[35]+1.34*x[19]*x[36]-0.6*x[19]*x[37]-1.14*x[19]*x[38]-1.88*x[19]*x[39]-0.54*x[19]*x[40]-1.82*x[19]*x[41]+0.94*x[20]*x[21]+1.5*x[20]*x[22]+0.3*x[20]*x[23]+0.86*x[20]*x[24]-0.66*x[20]*x[25]+0.7*x[20]*x[26]-0.56*x[20]*x[27]-1.7*x[20]*x[28]+0.68*x[20]*x[31]+0.84*x[20]*x[32]+1.08*x[20]*x[33]-0.08*x[20]*x[35]-0.24*x[20]*x[36]-1.56*x[20]*x[37]-1.88*x[20]*x[38]+0.62*x[20]*x[39]-1.52*x[20]*x[40]+0.44*x[20]*x[41]+0.92*x[21]*x[23]-1.92*x[21]*x[22]-1.02*x[21]*x[24]-1.4*x[21]*x[25]-1.74*x[21]*x[26]+0.68*x[21]*x[27]+1.18*x[21]*x[28]-1.46*x[21]*x[29]-0.9*x[21]*x[30]-0.9*x[21]*x[31]+1.06*x[21]*x[32]+1.4*x[21]*x[33]+1.56*x[21]*x[34]+1.86*x[21]*x[35]-1.08*x[21]*x[36]-0.36*x[21]*x[37]-0.8*x[21]*x[38]+0.04*x[21]*x[39]+0.68*x[21]*x[40]+0.88*x[21]*x[41]+1.96*x[22]*x[23]-1.92*x[22]*x[24]+0.3*x[22]*x[25]-1.2*x[22]*x[26]-1.02*x[22]*x[27]+0.12*x[22]*x[28]+1.86*x[22]*x[29]+0.6*x[22]*x[30]-0.18*x[22]*x[31]-1.06*x[22]*x[32]-1.42*x[22]*x[33]+1.74*x[22]*x[34]-0.76*x[22]*x[35]-1.4*x[22]*x[36]-0.12*x[22]*x[37]+0.68*x[22]*x[38]-1.06*x[22]*x[39]-1.08*x[22]*x[40]+0.66*x[22]*x[41]+1.98*x[23]*x[24]-1.04*x[23]*x[25]+1.24*x[23]*x[26]-1.56*x[23]*x[27]+0.06*x[23]*x[28]-x[23]*x[29]+1.56*x[23]*x[30]+1.88*x[23]*x[31]-0.34*x[23]*x[32]+1.84*x[23]*x[33]-1.66*x[23]*x[34]-1.02*x[23]*x[35]+1.6*x[23]*x[36]+0.44*x[23]*x[37]-0.98*x[23]*x[38]-0.68*x[23]*x[39]-1.3*x[23]*x[40]-0.18*x[23]*x[41]+0.94*x[24]*x[26]-1.28*x[24]*x[25]+1.86*x[24]*x[27]+0.22*x[24]*x[28]-0.44*x[24]*x[29]-1.9*x[24]*x[30]-1.4*x[24]*x[31]-0.48*x[24]*x[32]-0.1*x[24]*x[33]-1.12*x[24]*x[34]-0.18*x[24]*x[35]-0.2*x[24]*x[36]-0.12*x[24]*x[37]+1.48*x[24]*x[38]-0.58*x[24]*x[39]-1.86*x[24]*x[40]+1.88*x[24]*x[41]+(-0.78*x[25]*x[26])-1.1*x[25]*x[27]-0.06*x[25]*x[28]-0.5*x[25]*x[29]+0.44*x[25]*x[30]+1.36*x[25]*x[31]+1.86*x[25]*x[32]-0.72*x[25]*x[33]+1.7*x[25]*x[34]-0.42*x[25]*x[35]+1.64*x[25]*x[36]+0.68*x[25]*x[37]+1.28*x[25]*x[38]+0.52*x[25]*x[40]+0.56*x[25]*x[41]+1.92*x[26]*x[27]+1.12*x[26]*x[28]-0.2*x[26]*x[29]+0.64*x[26]*x[30]-1.44*x[26]*x[31]-1.12*x[26]*x[32]+1.52*x[26]*x[33]+1.66*x[26]*x[34]+1.3*x[26]*x[35]-1.52*x[26]*x[36]-1.26*x[26]*x[37]-1.56*x[26]*x[38]+0.54*x[26]*x[39]+1.8*x[26]*x[40]-1.98*x[26]*x[41]+1.72*x[27]*x[29]-0.2*x[27]*x[28]-1.6*x[27]*x[30]+0.44*x[27]*x[31]+1.06*x[27]*x[32]+1.1*x[27]*x[33]+1.64*x[27]*x[34]-0.58*x[27]*x[35]+1.44*x[27]*x[36]-0.76*x[27]*x[37]+1.72*x[27]*x[38]-1.04*x[27]*x[39]-0.32*x[27]*x[40]-1.74*x[27]*x[41]+0.64*x[28]*x[29]+1.78*x[28]*x[30]-1.52*x[28]*x[31]-1.28*x[28]*x[32]+0.2*x[28]*x[33]-0.96*x[28]*x[34]-0.06*x[28]*x[35]+1.44*x[28]*x[36]-0.22*x[28]*x[37]+0.14*x[28]*x[38]-0.28*x[28]*x[39]-0.08*x[28]*x[40]+1.76*x[28]*x[41]+(-1.58*x[29]*x[30])-1.4*x[29]*x[32]+0.8*x[29]*x[33]+1.6*x[29]*x[34]+1.94*x[29]*x[36]-1.38*x[29]*x[37]-1.44*x[29]*x[38]+0.38*x[29]*x[39]+0.68*x[29]*x[40]-1.44*x[29]*x[41]+1.58*x[30]*x[31]+1.54*x[30]*x[32]-1.04*x[30]*x[33]-0.28*x[30]*x[34]-0.38*x[30]*x[35]+x[30]*x[36]+1.76*x[30]*x[37]-0.94*x[30]*x[38]-0.82*x[30]*x[39]-1.34*x[30]*x[40]-1.82*x[30]*x[41]+(-0.06*x[31]*x[32])-1.54*x[31]*x[33]+0.04*x[31]*x[34]-1.18*x[31]*x[35]+0.44*x[31]*x[36]-1.32*x[31]*x[37]-0.62*x[31]*x[38]-1.06*x[31]*x[39]+0.86*x[31]*x[40]-0.46*x[31]*x[41]+1.46*x[32]*x[34]-1.52*x[32]*x[33]+1.62*x[32]*x[35]+0.02*x[32]*x[36]+1.94*x[32]*x[37]-0.48*x[32]*x[38]+1.36*x[32]*x[39]+1.38*x[32]*x[40]-1.72*x[32]*x[41]+(-1.96*x[33]*x[34])-0.24*x[33]*x[35]+0.2*x[33]*x[36]+1.4*x[33]*x[37]-0.76*x[33]*x[38]-1.36*x[33]*x[39]-0.6*x[33]*x[40]-0.42*x[33]*x[41]+(-1.44*x[34]*x[35])-0.98*x[34]*x[36]-1.16*x[34]*x[37]-0.2*x[34]*x[38]-0.4*x[34]*x[39]+1.66*x[34]*x[40]+1.26*x[34]*x[41]+1.22*x[35]*x[37]-1.88*x[35]*x[36]-1.3*x[35]*x[38]-1.2*x[35]*x[39]-1.32*x[35]*x[40]+0.7*x[35]*x[41]+0.54*x[36]*x[38]-1.08*x[36]*x[37]-0.96*x[36]*x[39]-0.88*x[36]*x[40]+1.96*x[36]*x[41]+0.4*x[37]*x[38]-0.34*x[37]*x[39]-1.72*x[37]*x[40]+1.7*x[37]*x[41]+0.06*x[38]*x[39]-0.32*x[38]*x[40]+1.18*x[38]*x[41]+0.34*x[39]*x[41]-0.72*x[39]*x[40]+0.84*x[40]*x[41]+0.14*x[2]*x[2]+0.01*x[3]*x[3]-0.46*x[4]*x[4]-0.48*x[5]*x[5]-0.01*x[6]*x[6]+0.67*x[7]*x[7]-0.97*x[8]*x[8]+0.49*x[9]*x[9]+0.39*x[10]*x[10]+0.64*x[11]*x[11]+0.58*x[12]*x[12]+0.76*x[13]*x[13]-0.94*x[14]*x[14]+0.06*x[15]*x[15]-0.34*x[16]*x[16]+0.44*x[17]*x[17]+0.57*x[18]*x[18]+0.58*x[19]*x[19]-0.49*x[20]*x[20]-0.34*x[21]*x[21]+0.67*x[22]*x[22]+0.63*x[23]*x[23]-0.07*x[24]*x[24]+0.03*x[25]*x[25]-0.92*x[26]*x[26]+0.08*x[27]*x[27]-0.6*x[28]*x[28]+0.91*x[29]*x[29]-0.43*x[30]*x[30]-0.66*x[31]*x[31]-0.04*x[32]*x[32]-0.75*x[33]*x[33]-0.77*x[34]*x[34]-0.27*x[35]*x[35]-0.18*x[36]*x[36]+0.75*x[37]*x[37]-0.71*x[38]*x[38]-0.52*x[39]*x[39]-0.21*x[40]*x[40]+0.61*x[41]*x[41]-0.96*x[2]-0.18*x[3]-0.87*x[4]+0.86*x[5]-0.49*x[6]-0.38*x[7]+0.61*x[8]-0.4*x[9]-0.36*x[10]+0.62*x[11]+0.78*x[12]+0.51*x[13]-0.27*x[14]+0.35*x[15]-0.68*x[16]+x[17]-0.57*x[18]+0.74*x[19]+0.71*x[20]+0.45*x[21]-0.25*x[22]-0.62*x[23]+0.13*x[24]+0.49*x[25]-0.61*x[26]-0.84*x[27]-0.5*x[28]+0.06*x[29]+0.48*x[30]-0.27*x[31]+0.44*x[32]+0.43*x[33]-0.88*x[34]-0.18*x[35]-0.33*x[36]-0.08*x[37]-0.63*x[38]+0.62*x[39]+0.05*x[40]-0.17*x[41] <= 15.75)
@constraint(m, e3, 0.42*x[2]-0.14*x[3]+0.59*x[4]-0.3*x[5]-0.3*x[6]-0.32*x[7]+0.49*x[8]-0.94*x[9]-0.12*x[10]+0.83*x[11]+0.53*x[12]-0.25*x[13]+0.94*x[14]+0.55*x[15]-0.63*x[16]+0.12*x[17]-0.91*x[18]+0.6*x[19]+0.19*x[20]+0.44*x[21]+0.48*x[22]+0.04*x[23]-0.63*x[24]+0.82*x[25]-0.02*x[26]-0.97*x[27]+0.18*x[28]+0.31*x[29]+0.98*x[30]-0.57*x[31]-0.52*x[32]-0.82*x[33]-0.5*x[34]-0.28*x[35]-0.63*x[36]+0.59*x[37]+0.62*x[38]-0.93*x[39]-0.17*x[40]-0.06*x[41] == -0.04)
@constraint(m, e4, 0.12*x[2]+0.3*x[3]-0.25*x[4]-0.88*x[5]-0.44*x[6]+0.85*x[7]+0.61*x[8]+0.77*x[9]+0.4*x[10]+0.36*x[11]-0.47*x[12]+0.49*x[13]+0.08*x[14]-0.77*x[15]-0.22*x[16]-0.36*x[17]-0.14*x[18]-0.08*x[19]+0.65*x[20]-0.44*x[21]+0.2*x[22]+0.57*x[23]+0.91*x[24]-0.19*x[25]+0.69*x[26]+0.94*x[27]-0.9*x[28]+0.57*x[29]-0.5*x[30]-0.7*x[31]+0.52*x[32]+0.38*x[33]+0.89*x[34]+0.69*x[35]-0.76*x[36]+0.69*x[37]+0.81*x[38]-0.67*x[39]-0.58*x[40]-0.95*x[41] == -0.35)
@constraint(m, e5, -0.17*x[2]+0.81*x[3]-0.96*x[4]+0.54*x[5]-0.47*x[6]-0.25*x[7]+0.1*x[8]-0.77*x[9]-0.73*x[10]-0.29*x[11]+0.58*x[12]-0.43*x[13]+0.23*x[14]+0.73*x[15]-0.41*x[16]-0.92*x[17]-0.15*x[18]+0.44*x[19]+0.89*x[20]-0.6*x[21]-0.53*x[22]-0.53*x[23]-0.53*x[24]-0.37*x[25]+0.33*x[26]+0.33*x[27]-0.23*x[28]+0.42*x[29]-0.33*x[30]+0.15*x[31]-0.23*x[32]+0.27*x[34]-0.41*x[35]-0.51*x[36]-0.21*x[38]+0.22*x[39]+0.12*x[40]+0.17*x[41] == 0.43)
@constraint(m, e6, 0.49*x[2]+0.28*x[3]-0.31*x[4]+0.48*x[5]+0.41*x[6]+0.73*x[7]+0.98*x[8]-0.78*x[9]-0.5*x[10]+0.02*x[11]-0.47*x[12]-0.11*x[13]-0.85*x[14]-0.16*x[15]+0.84*x[16]-0.79*x[17]-0.95*x[18]-0.56*x[19]-0.65*x[20]-0.42*x[21]+0.08*x[22]-0.1*x[23]-0.67*x[24]+0.28*x[25]-0.12*x[26]-0.32*x[27]+0.91*x[28]-0.34*x[29]-0.21*x[30]+0.73*x[31]+0.95*x[32]-0.32*x[33]-0.72*x[34]-0.1*x[35]-0.89*x[36]+0.46*x[37]+0.1*x[38]+0.71*x[39]+0.42*x[40]-0.09*x[41] == -0.08)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
