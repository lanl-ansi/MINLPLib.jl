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
@NLconstraint(m, e1, -(0.2*x[2]*x[4]-0.4*x[2]*x[3]-0.62*x[2]*x[5]-0.06*x[2]*x[7]+0.14*x[2]*x[8]+0.06*x[2]*x[9]-0.18*x[2]*x[10]-0.08*x[2]*x[11]+0.08*x[2]*x[12]+0.12*x[2]*x[13]+0.06*x[2]*x[14]+0.46*x[2]*x[15]+0.28*x[2]*x[16]+0.14*x[2]*x[17]-0.16*x[2]*x[18]-0.12*x[2]*x[19]+0.02*x[2]*x[20]+0.16*x[2]*x[21]-0.1*x[2]*x[22]-0.06*x[2]*x[23]-0.08*x[2]*x[24]-0.12*x[2]*x[25]+0.12*x[2]*x[26]+0.18*x[2]*x[27]-0.32*x[2]*x[28]+0.08*x[2]*x[29]-0.1*x[2]*x[31]+0.18*x[2]*x[32]+0.32*x[2]*x[33]-0.46*x[2]*x[34]+0.04*x[2]*x[35]+0.02*x[2]*x[36]+0.04*x[2]*x[37]-0.02*x[2]*x[38]-0.02*x[2]*x[39]-0.12*x[2]*x[40]+0.04*x[3]*x[4]+0.22*x[3]*x[5]-0.04*x[3]*x[6]-0.14*x[3]*x[7]-0.16*x[3]*x[8]+0.04*x[3]*x[9]+0.14*x[3]*x[10]-0.26*x[3]*x[11]-0.08*x[3]*x[12]-0.06*x[3]*x[13]+0.1*x[3]*x[14]-0.04*x[3]*x[15]+0.04*x[3]*x[16]+0.24*x[3]*x[17]-0.14*x[3]*x[18]+0.02*x[3]*x[19]-0.12*x[3]*x[20]-0.3*x[3]*x[22]-0.14*x[3]*x[23]+0.24*x[3]*x[24]-0.26*x[3]*x[25]+0.14*x[3]*x[26]-0.24*x[3]*x[27]-0.3*x[3]*x[28]-0.06*x[3]*x[29]+0.32*x[3]*x[30]+0.08*x[3]*x[31]+0.2*x[3]*x[32]-0.04*x[3]*x[33]-0.06*x[3]*x[34]-0.12*x[3]*x[35]-0.08*x[3]*x[36]+0.24*x[3]*x[37]-0.2*x[3]*x[38]+0.4*x[3]*x[39]-0.22*x[3]*x[40]-0.22*x[3]*x[41]+(-0.1*x[4]*x[5])-0.1*x[4]*x[6]+0.4*x[4]*x[7]-0.28*x[4]*x[8]-0.06*x[4]*x[9]-0.26*x[4]*x[10]-0.12*x[4]*x[11]-0.12*x[4]*x[12]-0.24*x[4]*x[13]-0.26*x[4]*x[14]+0.32*x[4]*x[15]-0.16*x[4]*x[16]+0.02*x[4]*x[17]+0.2*x[4]*x[18]-0.1*x[4]*x[19]+0.12*x[4]*x[20]+0.1*x[4]*x[21]+0.08*x[4]*x[22]-0.14*x[4]*x[23]+0.08*x[4]*x[24]-0.02*x[4]*x[25]-0.22*x[4]*x[26]-0.02*x[4]*x[27]-0.24*x[4]*x[28]-0.16*x[4]*x[29]-0.44*x[4]*x[30]-0.18*x[4]*x[31]-0.24*x[4]*x[32]-0.32*x[4]*x[33]+0.18*x[4]*x[34]+0.02*x[4]*x[35]-0.08*x[4]*x[36]-0.12*x[4]*x[37]-0.06*x[4]*x[38]-0.2*x[4]*x[39]+0.08*x[4]*x[40]+0.26*x[4]*x[41]+0.02*x[5]*x[7]-0.08*x[5]*x[6]+0.18*x[5]*x[8]-0.02*x[5]*x[10]-0.24*x[5]*x[11]-0.1*x[5]*x[12]-0.24*x[5]*x[13]-0.1*x[5]*x[14]+0.04*x[5]*x[15]+0.02*x[5]*x[16]-0.24*x[5]*x[17]+0.06*x[5]*x[18]+0.08*x[5]*x[19]+0.14*x[5]*x[20]+0.04*x[5]*x[21]-0.26*x[5]*x[22]+0.14*x[5]*x[24]+0.5*x[5]*x[25]-0.22*x[5]*x[26]+0.36*x[5]*x[27]-0.02*x[5]*x[29]-0.18*x[5]*x[30]+0.02*x[5]*x[31]+0.04*x[5]*x[32]+0.18*x[5]*x[33]+0.22*x[5]*x[34]-0.34*x[5]*x[35]+0.06*x[5]*x[36]-0.02*x[5]*x[37]+0.12*x[5]*x[38]+0.16*x[5]*x[39]-0.2*x[5]*x[40]-0.26*x[5]*x[41]+0.02*x[6]*x[8]-0.24*x[6]*x[7]+0.06*x[6]*x[10]+0.2*x[6]*x[11]+0.06*x[6]*x[12]-0.02*x[6]*x[13]-0.3*x[6]*x[14]-0.06*x[6]*x[15]+0.1*x[6]*x[16]-0.2*x[6]*x[18]+0.14*x[6]*x[19]+0.08*x[6]*x[20]-0.62*x[6]*x[21]-0.24*x[6]*x[22]-0.04*x[6]*x[23]-0.02*x[6]*x[24]-0.1*x[6]*x[25]-0.3*x[6]*x[26]-0.26*x[6]*x[27]-0.04*x[6]*x[28]+0.1*x[6]*x[29]-0.24*x[6]*x[30]-0.22*x[6]*x[31]-0.12*x[6]*x[32]+0.04*x[6]*x[33]-0.02*x[6]*x[34]-0.12*x[6]*x[35]+0.28*x[6]*x[36]-0.06*x[6]*x[37]-0.18*x[6]*x[38]+0.18*x[6]*x[39]+0.32*x[6]*x[40]-0.24*x[6]*x[41]+(-0.12*x[7]*x[8])-0.06*x[7]*x[9]-0.3*x[7]*x[11]+0.28*x[7]*x[12]+0.32*x[7]*x[13]-0.28*x[7]*x[15]-0.08*x[7]*x[16]+0.22*x[7]*x[17]+0.42*x[7]*x[18]-0.02*x[7]*x[19]-0.1*x[7]*x[20]+0.2*x[7]*x[21]-0.06*x[7]*x[22]-0.08*x[7]*x[23]-0.12*x[7]*x[24]+0.08*x[7]*x[25]-0.24*x[7]*x[27]-0.06*x[7]*x[28]+0.08*x[7]*x[29]+0.16*x[7]*x[30]+0.02*x[7]*x[31]-0.14*x[7]*x[32]-0.2*x[7]*x[33]-0.12*x[7]*x[34]-0.08*x[7]*x[35]-0.34*x[7]*x[36]+0.02*x[7]*x[37]+0.06*x[7]*x[38]-0.24*x[7]*x[39]-0.08*x[7]*x[40]+0.2*x[7]*x[41]+0.18*x[8]*x[9]+0.08*x[8]*x[10]-0.08*x[8]*x[11]-0.14*x[8]*x[12]-0.12*x[8]*x[13]+0.14*x[8]*x[14]+0.08*x[8]*x[15]-0.2*x[8]*x[16]-0.08*x[8]*x[17]-0.18*x[8]*x[18]+0.28*x[8]*x[19]-0.16*x[8]*x[20]+0.02*x[8]*x[21]-0.2*x[8]*x[22]-0.28*x[8]*x[23]+0.38*x[8]*x[24]-0.52*x[8]*x[25]-0.34*x[8]*x[26]-0.26*x[8]*x[27]+0.22*x[8]*x[28]+0.28*x[8]*x[29]-0.16*x[8]*x[30]+0.1*x[8]*x[31]-0.02*x[8]*x[32]-0.12*x[8]*x[33]-0.06*x[8]*x[34]+0.04*x[8]*x[35]-0.06*x[8]*x[36]+0.02*x[8]*x[37]-0.04*x[8]*x[38]+0.28*x[8]*x[40]-0.08*x[8]*x[41]+(-0.28*x[9]*x[10])-0.02*x[9]*x[11]-0.26*x[9]*x[12]-0.06*x[9]*x[13]-0.08*x[9]*x[14]+0.3*x[9]*x[15]-0.26*x[9]*x[16]+0.28*x[9]*x[17]-0.02*x[9]*x[18]+0.04*x[9]*x[19]+0.1*x[9]*x[20]+0.02*x[9]*x[21]-0.24*x[9]*x[22]-0.4*x[9]*x[23]+0.02*x[9]*x[24]-0.4*x[9]*x[25]-0.02*x[9]*x[26]+0.16*x[9]*x[27]+0.2*x[9]*x[28]-0.06*x[9]*x[29]-0.18*x[9]*x[30]+0.1*x[9]*x[31]+0.16*x[9]*x[32]-0.1*x[9]*x[33]-0.04*x[9]*x[34]+0.06*x[9]*x[35]-0.02*x[9]*x[36]-0.16*x[9]*x[37]+0.04*x[9]*x[40]-0.16*x[9]*x[41]+0.06*x[10]*x[12]-0.08*x[10]*x[11]+0.18*x[10]*x[13]-0.26*x[10]*x[14]+0.14*x[10]*x[15]+0.1*x[10]*x[16]+0.06*x[10]*x[17]-0.18*x[10]*x[18]-0.2*x[10]*x[19]-0.1*x[10]*x[20]-0.38*x[10]*x[21]+0.2*x[10]*x[22]-0.02*x[10]*x[23]-0.14*x[10]*x[24]+0.18*x[10]*x[25]+0.18*x[10]*x[26]-0.06*x[10]*x[27]-0.16*x[10]*x[28]-0.14*x[10]*x[29]-0.06*x[10]*x[30]-0.12*x[10]*x[31]-0.06*x[10]*x[32]-0.22*x[10]*x[33]-0.14*x[10]*x[34]-0.32*x[10]*x[35]-0.24*x[10]*x[36]-0.14*x[10]*x[37]-0.12*x[10]*x[38]+0.2*x[10]*x[39]-0.04*x[10]*x[40]+0.2*x[10]*x[41]+0.04*x[11]*x[13]-0.1*x[11]*x[12]-0.02*x[11]*x[14]-0.24*x[11]*x[15]-0.12*x[11]*x[16]-0.02*x[11]*x[17]-0.06*x[11]*x[18]+0.16*x[11]*x[19]-0.06*x[11]*x[20]-0.08*x[11]*x[21]+0.16*x[11]*x[22]-0.04*x[11]*x[23]-0.06*x[11]*x[24]-0.1*x[11]*x[25]-0.4*x[11]*x[26]+0.04*x[11]*x[27]+0.14*x[11]*x[28]+0.04*x[11]*x[29]+0.06*x[11]*x[30]-0.04*x[11]*x[31]-0.16*x[11]*x[32]-0.02*x[11]*x[33]+0.18*x[11]*x[34]-0.1*x[11]*x[35]-0.44*x[11]*x[36]-0.24*x[11]*x[37]+0.2*x[11]*x[38]+0.08*x[11]*x[39]-0.3*x[11]*x[40]-0.2*x[11]*x[41]+0.14*x[12]*x[14]-0.3*x[12]*x[13]-0.24*x[12]*x[15]-0.3*x[12]*x[16]-0.14*x[12]*x[17]+0.18*x[12]*x[18]-0.22*x[12]*x[19]-0.34*x[12]*x[20]+0.26*x[12]*x[22]+0.32*x[12]*x[23]-0.22*x[12]*x[25]+0.2*x[12]*x[26]+0.1*x[12]*x[27]-0.02*x[12]*x[28]+0.02*x[12]*x[29]-0.14*x[12]*x[30]-0.04*x[12]*x[31]+0.04*x[12]*x[34]-0.12*x[12]*x[35]+0.04*x[12]*x[36]-0.02*x[12]*x[37]+0.1*x[12]*x[38]-0.12*x[12]*x[39]-0.28*x[12]*x[40]-0.14*x[12]*x[41]+0.12*x[13]*x[14]-0.06*x[13]*x[15]-0.12*x[13]*x[16]+0.12*x[13]*x[17]-0.1*x[13]*x[18]-0.74*x[13]*x[20]-0.08*x[13]*x[22]+0.34*x[13]*x[23]+0.08*x[13]*x[24]-0.4*x[13]*x[25]-0.04*x[13]*x[26]+0.12*x[13]*x[27]-0.32*x[13]*x[28]-0.06*x[13]*x[29]+0.2*x[13]*x[30]-0.14*x[13]*x[31]-0.34*x[13]*x[32]-0.14*x[13]*x[34]-0.14*x[13]*x[35]+0.24*x[13]*x[36]+0.04*x[13]*x[37]+0.34*x[13]*x[38]-0.1*x[13]*x[39]+0.06*x[13]*x[40]-0.06*x[13]*x[41]+0.02*x[14]*x[16]-0.16*x[14]*x[15]-0.22*x[14]*x[17]-0.24*x[14]*x[18]-0.04*x[14]*x[19]+0.24*x[14]*x[20]-0.18*x[14]*x[21]-0.04*x[14]*x[22]-0.02*x[14]*x[23]+0.04*x[14]*x[24]-0.18*x[14]*x[25]-0.3*x[14]*x[26]-0.14*x[14]*x[27]+0.36*x[14]*x[28]+0.16*x[14]*x[29]-0.44*x[14]*x[30]+0.02*x[14]*x[31]-0.22*x[14]*x[32]+0.22*x[14]*x[33]+0.16*x[14]*x[34]+0.06*x[14]*x[35]-0.14*x[14]*x[36]-0.02*x[14]*x[37]+0.14*x[14]*x[38]+0.2*x[14]*x[39]+0.04*x[14]*x[40]-0.1*x[14]*x[41]+(-0.12*x[15]*x[16])-0.2*x[15]*x[17]-0.32*x[15]*x[18]+0.02*x[15]*x[19]-0.14*x[15]*x[20]-0.08*x[15]*x[21]+0.26*x[15]*x[22]-0.04*x[15]*x[23]-0.18*x[15]*x[24]-0.14*x[15]*x[25]-0.5*x[15]*x[26]+0.14*x[15]*x[27]+0.18*x[15]*x[28]-0.02*x[15]*x[29]+0.28*x[15]*x[30]-0.18*x[15]*x[31]+0.14*x[15]*x[33]-0.02*x[15]*x[34]-0.28*x[15]*x[35]-0.1*x[15]*x[36]+0.14*x[15]*x[37]-0.04*x[15]*x[38]+0.34*x[15]*x[39]+0.08*x[15]*x[40]+0.18*x[15]*x[41]+(-0.3*x[16]*x[17])-0.2*x[16]*x[18]-0.24*x[16]*x[19]+0.1*x[16]*x[20]+0.36*x[16]*x[22]-0.22*x[16]*x[23]-0.1*x[16]*x[24]-0.2*x[16]*x[25]+0.06*x[16]*x[26]+0.02*x[16]*x[27]+0.14*x[16]*x[28]+0.14*x[16]*x[29]+0.04*x[16]*x[30]+0.18*x[16]*x[31]-0.18*x[16]*x[32]+0.06*x[16]*x[33]-0.1*x[16]*x[34]+0.04*x[16]*x[35]+0.1*x[16]*x[36]+0.28*x[16]*x[37]-0.1*x[16]*x[38]-0.06*x[16]*x[39]-0.06*x[16]*x[40]+0.22*x[16]*x[41]+0.04*x[17]*x[18]-0.34*x[17]*x[19]-0.3*x[17]*x[20]+0.1*x[17]*x[21]-0.04*x[17]*x[22]-0.26*x[17]*x[23]-0.1*x[17]*x[24]+0.54*x[17]*x[25]+0.04*x[17]*x[26]-0.18*x[17]*x[27]-0.42*x[17]*x[28]+0.12*x[17]*x[29]+0.24*x[17]*x[30]-0.38*x[17]*x[31]-0.24*x[17]*x[32]+0.18*x[17]*x[33]+0.08*x[17]*x[34]-0.14*x[17]*x[35]-0.22*x[17]*x[36]-0.02*x[17]*x[37]-0.02*x[17]*x[38]-0.06*x[17]*x[39]+0.22*x[17]*x[40]+0.16*x[17]*x[41]+(-0.16*x[18]*x[19])-0.28*x[18]*x[20]-0.08*x[18]*x[21]-0.1*x[18]*x[22]-0.08*x[18]*x[23]+0.24*x[18]*x[24]-0.36*x[18]*x[25]-0.24*x[18]*x[26]+0.56*x[18]*x[27]+0.24*x[18]*x[28]-0.08*x[18]*x[29]-0.18*x[18]*x[30]+0.08*x[18]*x[31]-0.02*x[18]*x[32]+0.12*x[18]*x[33]-0.04*x[18]*x[34]-0.1*x[18]*x[35]-0.08*x[18]*x[36]+0.18*x[18]*x[38]-0.24*x[18]*x[39]-0.1*x[18]*x[40]+0.14*x[18]*x[41]+(-0.12*x[19]*x[20])-0.18*x[19]*x[21]+0.1*x[19]*x[22]-0.04*x[19]*x[23]-0.06*x[19]*x[24]-0.08*x[19]*x[25]+0.16*x[19]*x[26]+0.04*x[19]*x[27]-0.12*x[19]*x[28]+0.12*x[19]*x[29]-0.28*x[19]*x[30]+0.16*x[19]*x[31]+0.06*x[19]*x[32]-0.06*x[19]*x[33]+0.28*x[19]*x[34]-0.04*x[19]*x[35]-0.2*x[19]*x[36]-0.32*x[19]*x[37]-0.12*x[19]*x[38]+0.14*x[19]*x[39]-0.3*x[19]*x[40]+0.14*x[20]*x[21]-0.04*x[20]*x[22]-0.08*x[20]*x[23]+0.14*x[20]*x[24]-0.12*x[20]*x[25]+0.12*x[20]*x[26]+0.1*x[20]*x[27]+0.04*x[20]*x[28]-0.02*x[20]*x[29]+0.04*x[20]*x[30]-0.28*x[20]*x[31]-0.02*x[20]*x[32]-0.04*x[20]*x[33]-0.16*x[20]*x[34]+0.22*x[20]*x[35]+0.12*x[20]*x[36]-0.04*x[20]*x[37]+0.08*x[20]*x[38]-0.14*x[20]*x[39]+0.12*x[20]*x[40]-0.1*x[20]*x[41]+0.36*x[21]*x[23]-0.04*x[21]*x[22]-0.44*x[21]*x[24]-0.18*x[21]*x[25]-0.18*x[21]*x[26]-0.02*x[21]*x[27]+0.02*x[21]*x[28]-0.12*x[21]*x[29]-0.12*x[21]*x[30]-0.02*x[21]*x[31]+0.44*x[21]*x[32]-0.08*x[21]*x[33]-0.24*x[21]*x[34]-0.34*x[21]*x[35]+0.2*x[21]*x[36]-0.36*x[21]*x[38]+0.2*x[21]*x[39]-0.02*x[21]*x[40]+0.18*x[21]*x[41]+0.22*x[22]*x[24]-0.04*x[22]*x[23]+0.26*x[22]*x[25]-0.08*x[22]*x[26]-0.28*x[22]*x[27]+0.12*x[22]*x[28]+0.24*x[22]*x[29]+0.04*x[22]*x[30]-0.02*x[22]*x[31]-0.06*x[22]*x[32]-0.16*x[22]*x[33]+0.04*x[22]*x[34]+0.06*x[22]*x[35]-0.16*x[22]*x[36]+0.02*x[22]*x[37]+0.12*x[22]*x[39]+0.06*x[22]*x[40]-0.6*x[22]*x[41]+0.02*x[23]*x[24]-0.2*x[23]*x[25]-0.14*x[23]*x[26]-0.22*x[23]*x[27]-0.02*x[23]*x[28]-0.08*x[23]*x[29]-0.14*x[23]*x[30]-0.04*x[23]*x[32]+0.08*x[23]*x[33]-0.1*x[23]*x[34]+0.04*x[23]*x[35]-0.44*x[23]*x[36]-0.22*x[23]*x[37]+0.12*x[23]*x[38]-0.12*x[23]*x[39]+0.1*x[23]*x[40]+0.24*x[23]*x[41]+(-0.08*x[24]*x[25])-0.22*x[24]*x[26]-0.08*x[24]*x[27]-0.16*x[24]*x[28]+0.24*x[24]*x[29]+0.2*x[24]*x[30]-0.02*x[24]*x[31]+0.02*x[24]*x[32]+0.18*x[24]*x[33]-0.06*x[24]*x[34]-0.04*x[24]*x[35]-0.1*x[24]*x[36]-0.36*x[24]*x[37]+0.1*x[24]*x[38]-0.12*x[24]*x[39]-0.28*x[24]*x[40]-0.44*x[24]*x[41]+0.18*x[25]*x[26]-0.04*x[25]*x[27]-0.12*x[25]*x[28]+0.04*x[25]*x[29]-0.18*x[25]*x[30]+0.32*x[25]*x[31]+0.36*x[25]*x[32]+0.26*x[25]*x[33]-0.04*x[25]*x[34]+0.06*x[25]*x[35]+0.2*x[25]*x[36]-0.1*x[25]*x[37]-0.4*x[25]*x[38]+0.08*x[25]*x[39]+0.22*x[25]*x[40]+0.04*x[26]*x[27]+0.2*x[26]*x[28]+0.28*x[26]*x[29]+0.16*x[26]*x[30]+0.22*x[26]*x[31]+0.16*x[26]*x[32]-0.1*x[26]*x[33]-0.34*x[26]*x[34]-0.04*x[26]*x[35]+0.1*x[26]*x[36]+0.3*x[26]*x[37]+0.32*x[26]*x[38]-0.04*x[26]*x[39]-0.24*x[26]*x[40]-0.24*x[26]*x[41]+0.1*x[27]*x[29]-0.24*x[27]*x[28]+0.08*x[27]*x[30]-0.06*x[27]*x[31]-0.06*x[27]*x[33]-0.1*x[27]*x[34]+0.04*x[27]*x[35]-0.04*x[27]*x[36]-0.14*x[27]*x[37]-0.12*x[27]*x[38]-0.22*x[27]*x[39]+0.14*x[27]*x[40]+0.12*x[27]*x[41]+(-0.22*x[28]*x[30])-0.08*x[28]*x[31]+0.02*x[28]*x[32]+0.08*x[28]*x[33]+0.04*x[28]*x[34]-0.04*x[28]*x[35]+0.06*x[28]*x[36]+0.12*x[28]*x[37]-0.3*x[28]*x[38]+0.1*x[28]*x[39]+0.2*x[28]*x[40]-0.2*x[28]*x[41]+(-0.12*x[29]*x[30])-0.22*x[29]*x[31]-0.2*x[29]*x[32]-0.28*x[29]*x[33]-0.4*x[29]*x[34]-0.04*x[29]*x[35]+0.14*x[29]*x[36]-0.22*x[29]*x[37]-0.04*x[29]*x[38]-0.52*x[29]*x[39]-0.16*x[29]*x[40]+0.04*x[29]*x[41]+0.16*x[30]*x[31]-0.32*x[30]*x[32]+0.14*x[30]*x[33]+0.28*x[30]*x[34]+0.14*x[30]*x[35]-0.3*x[30]*x[36]+0.14*x[30]*x[37]-0.04*x[30]*x[38]-0.18*x[30]*x[39]+0.06*x[30]*x[40]-0.32*x[30]*x[41]+0.08*x[31]*x[32]+0.08*x[31]*x[33]-0.36*x[31]*x[34]-0.08*x[31]*x[35]-0.16*x[31]*x[36]+0.1*x[31]*x[37]-0.06*x[31]*x[38]+0.02*x[31]*x[39]+0.24*x[31]*x[40]-0.12*x[31]*x[41]+(-0.24*x[32]*x[33])-0.22*x[32]*x[34]+0.04*x[32]*x[35]+0.04*x[32]*x[36]-0.02*x[32]*x[37]-0.38*x[32]*x[39]+0.16*x[32]*x[40]-0.12*x[32]*x[41]+0.16*x[33]*x[34]-0.16*x[33]*x[35]-0.14*x[33]*x[36]+0.14*x[33]*x[37]-0.12*x[33]*x[38]+0.2*x[33]*x[39]-0.36*x[33]*x[40]-0.26*x[33]*x[41]+0.08*x[34]*x[35]+0.08*x[34]*x[36]-0.1*x[34]*x[37]-0.12*x[34]*x[39]-0.5*x[34]*x[40]+0.18*x[34]*x[41]+0.02*x[35]*x[36]+0.38*x[35]*x[37]+0.04*x[35]*x[38]+0.12*x[35]*x[39]-0.22*x[35]*x[40]-0.18*x[35]*x[41]+0.2*x[36]*x[37]+0.12*x[36]*x[38]-0.08*x[36]*x[40]+0.16*x[36]*x[41]+(-0.14*x[37]*x[38])-0.32*x[37]*x[39]-0.26*x[37]*x[40]-0.04*x[37]*x[41]+0.08*x[38]*x[39]-0.14*x[38]*x[40]+0.06*x[38]*x[41]+(-0.22*x[39]*x[40])-0.1*x[39]*x[41]-0.12*x[40]*x[41]+(-0.17*x[2]*x[2])-0.27*x[3]*x[3]+0.07*x[4]*x[4]+0.04*x[5]*x[5]-0.08*x[6]*x[6]-0.01*x[7]*x[7]-0.14*x[8]*x[8]+0.09*x[9]*x[9]+0.28*x[10]*x[10]+0.04*x[11]*x[11]-0.13*x[12]*x[12]+0.14*x[13]*x[13]-0.11*x[14]*x[14]+0.04*x[15]*x[15]+0.08*x[16]*x[16]-0.19*x[17]*x[17]+0.07*x[18]*x[18]+0.14*x[21]*x[21]+0.13*x[22]*x[22]-0.04*x[23]*x[23]+0.03*x[24]*x[24]+0.02*x[25]*x[25]+0.19*x[26]*x[26]-0.34*x[27]*x[27]-0.17*x[28]*x[28]-0.09*x[29]*x[29]+0.14*x[30]*x[30]-0.2*x[31]*x[31]+0.23*x[32]*x[32]-0.15*x[33]*x[33]-0.24*x[34]*x[34]-0.04*x[35]*x[35]-0.11*x[36]*x[36]-0.12*x[37]*x[37]-0.13*x[38]*x[38]-0.05*x[40]*x[40]-0.12*x[41]*x[41]+0.44*x[2]+0.51*x[3]-0.23*x[4]+0.54*x[5]+0.58*x[6]+0.56*x[7]-0.84*x[8]-0.19*x[9]+0.07*x[10]-0.55*x[11]-0.43*x[12]+0.71*x[13]-0.12*x[14]+0.75*x[15]-0.78*x[16]-0.68*x[17]+0.77*x[18]+0.74*x[19]+0.65*x[20]-0.02*x[21]-0.58*x[22]+0.43*x[23]-0.87*x[24]-0.74*x[25]-0.58*x[26]-0.97*x[27]+0.34*x[28]+0.11*x[29]+0.08*x[30]+0.07*x[31]-0.53*x[32]+0.55*x[33]+0.81*x[34]-0.38*x[35]+0.07*x[36]+0.56*x[37]+0.59*x[38]+0.04*x[39]-0.67*x[40]-0.34*x[41])+x[1] == 0.0)
@NLconstraint(m, e2, 0.06*x[2]*x[3]+0.06*x[2]*x[4]+0.2*x[2]*x[5]+0.06*x[2]*x[6]-0.1*x[2]*x[7]+0.2*x[2]*x[8]+0.1*x[2]*x[9]-0.26*x[2]*x[10]+0.04*x[2]*x[11]+0.06*x[2]*x[12]+0.04*x[2]*x[13]-0.22*x[2]*x[14]-0.14*x[2]*x[15]+0.04*x[2]*x[16]+0.06*x[2]*x[17]+0.16*x[2]*x[18]-0.02*x[2]*x[19]-0.12*x[2]*x[20]-0.02*x[2]*x[21]-0.12*x[2]*x[24]-0.22*x[2]*x[25]-0.08*x[2]*x[26]-0.34*x[2]*x[27]-0.24*x[2]*x[28]-0.24*x[2]*x[29]+0.26*x[2]*x[30]-0.28*x[2]*x[31]+0.12*x[2]*x[32]+0.22*x[2]*x[33]-0.06*x[2]*x[34]+0.12*x[2]*x[35]+0.14*x[2]*x[36]+0.1*x[2]*x[37]-0.08*x[2]*x[38]+0.02*x[2]*x[39]+0.1*x[2]*x[40]+0.16*x[2]*x[41]+(-0.1*x[3]*x[4])-0.14*x[3]*x[5]-0.1*x[3]*x[6]-0.12*x[3]*x[7]+0.06*x[3]*x[8]+0.12*x[3]*x[9]-0.24*x[3]*x[10]-0.08*x[3]*x[11]+0.06*x[3]*x[12]-0.24*x[3]*x[13]+0.12*x[3]*x[14]+0.04*x[3]*x[15]-0.06*x[3]*x[16]-0.34*x[3]*x[18]+0.04*x[3]*x[19]-0.18*x[3]*x[20]-0.2*x[3]*x[21]-0.1*x[3]*x[22]+0.1*x[3]*x[24]+0.1*x[3]*x[25]-0.08*x[3]*x[26]+0.16*x[3]*x[27]+0.14*x[3]*x[28]+0.22*x[3]*x[29]-0.34*x[3]*x[30]+0.42*x[3]*x[31]+0.22*x[3]*x[32]+0.1*x[3]*x[33]-0.06*x[3]*x[34]+0.12*x[3]*x[35]-0.02*x[3]*x[36]+0.24*x[3]*x[37]-0.12*x[3]*x[38]-0.12*x[3]*x[39]-0.16*x[3]*x[40]+0.04*x[3]*x[41]+0.16*x[4]*x[5]+0.04*x[4]*x[6]+0.14*x[4]*x[7]-0.2*x[4]*x[8]+0.16*x[4]*x[9]-0.1*x[4]*x[10]+0.1*x[4]*x[11]+0.6*x[4]*x[12]-0.12*x[4]*x[13]+0.22*x[4]*x[14]+0.1*x[4]*x[15]+0.18*x[4]*x[16]-0.02*x[4]*x[17]-0.06*x[4]*x[18]-0.34*x[4]*x[19]+0.26*x[4]*x[20]-0.18*x[4]*x[21]-0.26*x[4]*x[22]+0.16*x[4]*x[23]-0.08*x[4]*x[24]-0.12*x[4]*x[25]-0.26*x[4]*x[26]+0.02*x[4]*x[27]-0.04*x[4]*x[28]-0.2*x[4]*x[29]-0.04*x[4]*x[30]-0.18*x[4]*x[31]-0.06*x[4]*x[32]+0.04*x[4]*x[33]+0.06*x[4]*x[34]-0.14*x[4]*x[35]+0.16*x[4]*x[36]-0.08*x[4]*x[37]-0.2*x[4]*x[39]+0.06*x[4]*x[40]-0.38*x[4]*x[41]+(-0.16*x[5]*x[6])-0.3*x[5]*x[7]-0.06*x[5]*x[8]+0.2*x[5]*x[9]-0.34*x[5]*x[10]+0.16*x[5]*x[11]+0.1*x[5]*x[12]-0.02*x[5]*x[13]-0.02*x[5]*x[14]+0.14*x[5]*x[15]-0.12*x[5]*x[16]-0.18*x[5]*x[17]-0.28*x[5]*x[18]-0.18*x[5]*x[19]+0.12*x[5]*x[20]-0.06*x[5]*x[21]-0.02*x[5]*x[22]+0.18*x[5]*x[23]-0.16*x[5]*x[24]+0.14*x[5]*x[25]+0.04*x[5]*x[27]+0.12*x[5]*x[28]+0.34*x[5]*x[29]+0.22*x[5]*x[30]-0.2*x[5]*x[31]-0.12*x[5]*x[32]-0.16*x[5]*x[33]+0.12*x[5]*x[34]-0.18*x[5]*x[35]+0.24*x[5]*x[36]-0.14*x[5]*x[37]-0.18*x[5]*x[38]-0.04*x[5]*x[39]-0.12*x[5]*x[40]+0.02*x[5]*x[41]+0.12*x[6]*x[9]-0.4*x[6]*x[8]+0.02*x[6]*x[10]-0.06*x[6]*x[11]-0.02*x[6]*x[12]+0.1*x[6]*x[13]+0.28*x[6]*x[14]-0.06*x[6]*x[15]-0.24*x[6]*x[16]+0.2*x[6]*x[17]-0.22*x[6]*x[18]-0.18*x[6]*x[19]+0.1*x[6]*x[20]-0.32*x[6]*x[21]-0.32*x[6]*x[22]-0.12*x[6]*x[23]-0.04*x[6]*x[24]-0.12*x[6]*x[25]+0.24*x[6]*x[26]+0.12*x[6]*x[27]+0.02*x[6]*x[28]-0.04*x[6]*x[29]-0.04*x[6]*x[30]+0.06*x[6]*x[31]-0.1*x[6]*x[32]+0.28*x[6]*x[33]+0.24*x[6]*x[34]+0.18*x[6]*x[35]-0.08*x[6]*x[36]-0.04*x[6]*x[37]-0.2*x[6]*x[38]-0.2*x[6]*x[39]+0.3*x[6]*x[40]+0.14*x[6]*x[41]+0.02*x[7]*x[8]-0.16*x[7]*x[9]-0.22*x[7]*x[10]-0.2*x[7]*x[11]+0.12*x[7]*x[12]-0.06*x[7]*x[13]-0.24*x[7]*x[14]-0.3*x[7]*x[15]+0.12*x[7]*x[16]-0.12*x[7]*x[17]-0.08*x[7]*x[19]-0.04*x[7]*x[20]-0.18*x[7]*x[21]-0.14*x[7]*x[22]-0.08*x[7]*x[23]+0.22*x[7]*x[25]+0.04*x[7]*x[26]+0.12*x[7]*x[27]+0.08*x[7]*x[28]-0.16*x[7]*x[29]+0.6*x[7]*x[30]-0.06*x[7]*x[31]-0.36*x[7]*x[32]-0.12*x[7]*x[33]+0.2*x[7]*x[34]+0.06*x[7]*x[35]-0.04*x[7]*x[36]+0.08*x[7]*x[37]-0.18*x[7]*x[38]-0.02*x[7]*x[39]+0.28*x[7]*x[40]+0.06*x[7]*x[41]+0.2*x[8]*x[10]-0.16*x[8]*x[9]+0.02*x[8]*x[12]-0.18*x[8]*x[13]+0.06*x[8]*x[14]-0.1*x[8]*x[15]-0.02*x[8]*x[16]-0.08*x[8]*x[17]-0.04*x[8]*x[18]+0.42*x[8]*x[19]-0.12*x[8]*x[20]+0.16*x[8]*x[21]+0.14*x[8]*x[22]+0.04*x[8]*x[23]-0.28*x[8]*x[24]-0.08*x[8]*x[25]+0.14*x[8]*x[26]+0.2*x[8]*x[27]+0.12*x[8]*x[28]-0.24*x[8]*x[29]-0.02*x[8]*x[30]-0.24*x[8]*x[31]-0.1*x[8]*x[32]-0.16*x[8]*x[33]-0.1*x[8]*x[34]+0.22*x[8]*x[35]+0.3*x[8]*x[36]+0.54*x[8]*x[37]-0.16*x[8]*x[38]-0.1*x[8]*x[39]+0.1*x[8]*x[40]+0.08*x[8]*x[41]+0.12*x[9]*x[10]-0.12*x[9]*x[11]+0.02*x[9]*x[12]-0.02*x[9]*x[13]-0.2*x[9]*x[14]-0.3*x[9]*x[15]-0.06*x[9]*x[16]+0.24*x[9]*x[17]+0.16*x[9]*x[18]-0.04*x[9]*x[19]-0.02*x[9]*x[20]-0.14*x[9]*x[21]-0.04*x[9]*x[22]-0.1*x[9]*x[23]+0.12*x[9]*x[25]+0.08*x[9]*x[26]-0.3*x[9]*x[27]-0.18*x[9]*x[28]+0.1*x[9]*x[29]-0.08*x[9]*x[30]+0.08*x[9]*x[31]-0.06*x[9]*x[32]+0.08*x[9]*x[33]-0.08*x[9]*x[34]+0.02*x[9]*x[35]-0.1*x[9]*x[36]+0.34*x[9]*x[37]-0.16*x[9]*x[38]-0.32*x[9]*x[39]-0.02*x[9]*x[40]-0.16*x[9]*x[41]+0.08*x[10]*x[11]-0.06*x[10]*x[12]-0.12*x[10]*x[13]+0.16*x[10]*x[14]+0.28*x[10]*x[16]-0.28*x[10]*x[17]-0.14*x[10]*x[18]-0.1*x[10]*x[19]-0.16*x[10]*x[21]+0.02*x[10]*x[22]+0.06*x[10]*x[23]+0.26*x[10]*x[24]+0.26*x[10]*x[25]+0.12*x[10]*x[26]+0.02*x[10]*x[27]+0.16*x[10]*x[28]-0.16*x[10]*x[30]-0.14*x[10]*x[31]-0.1*x[10]*x[33]-0.1*x[10]*x[34]-0.2*x[10]*x[35]+0.14*x[10]*x[36]-0.18*x[10]*x[37]+0.24*x[10]*x[38]+0.2*x[10]*x[39]+0.06*x[10]*x[40]-0.24*x[10]*x[41]+0.08*x[11]*x[12]-0.16*x[11]*x[13]-0.36*x[11]*x[14]+0.04*x[11]*x[15]-0.06*x[11]*x[16]+0.24*x[11]*x[17]-0.04*x[11]*x[18]+0.28*x[11]*x[19]-0.18*x[11]*x[20]-0.12*x[11]*x[22]+0.08*x[11]*x[23]-0.08*x[11]*x[24]-0.02*x[11]*x[26]-0.12*x[11]*x[27]+0.02*x[11]*x[28]+0.16*x[11]*x[29]-0.12*x[11]*x[30]+0.1*x[11]*x[31]+0.24*x[11]*x[32]+0.18*x[11]*x[33]+0.14*x[11]*x[34]+0.1*x[11]*x[35]-0.1*x[11]*x[36]+0.04*x[11]*x[37]-0.02*x[11]*x[39]-0.18*x[11]*x[40]-0.24*x[11]*x[41]+0.12*x[12]*x[13]+0.02*x[12]*x[14]-0.24*x[12]*x[15]-0.32*x[12]*x[16]-0.14*x[12]*x[17]+0.3*x[12]*x[18]-0.14*x[12]*x[19]-0.16*x[12]*x[20]-0.14*x[12]*x[21]-0.28*x[12]*x[23]-0.26*x[12]*x[24]+0.06*x[12]*x[25]+0.04*x[12]*x[26]+0.04*x[12]*x[27]+0.06*x[12]*x[28]-0.22*x[12]*x[29]-0.26*x[12]*x[30]-0.04*x[12]*x[31]-0.16*x[12]*x[32]+0.24*x[12]*x[33]-0.16*x[12]*x[34]+0.1*x[12]*x[35]+0.14*x[12]*x[36]-0.3*x[12]*x[37]+0.12*x[12]*x[38]-0.06*x[12]*x[39]-0.02*x[12]*x[40]+0.26*x[12]*x[41]+0.2*x[13]*x[15]-0.02*x[13]*x[14]-0.08*x[13]*x[16]-0.14*x[13]*x[17]+0.06*x[13]*x[18]-0.06*x[13]*x[19]+0.06*x[13]*x[20]+0.16*x[13]*x[21]+0.32*x[13]*x[22]-0.16*x[13]*x[23]-0.3*x[13]*x[24]+0.06*x[13]*x[25]-0.06*x[13]*x[26]+0.4*x[13]*x[27]+0.3*x[13]*x[28]+0.1*x[13]*x[29]-0.2*x[13]*x[30]+0.04*x[13]*x[31]+0.04*x[13]*x[32]+0.06*x[13]*x[33]-0.28*x[13]*x[34]+0.06*x[13]*x[35]+0.16*x[13]*x[36]-0.3*x[13]*x[37]-0.06*x[13]*x[38]-0.26*x[13]*x[39]-0.24*x[13]*x[40]-0.1*x[13]*x[41]+0.24*x[14]*x[16]-0.18*x[14]*x[15]-0.14*x[14]*x[17]-0.16*x[14]*x[18]-0.26*x[14]*x[19]-0.18*x[14]*x[20]+0.06*x[14]*x[21]-0.02*x[14]*x[22]+0.06*x[14]*x[23]+0.2*x[14]*x[25]-0.14*x[14]*x[26]+0.16*x[14]*x[27]-0.02*x[14]*x[28]-0.24*x[14]*x[29]-0.06*x[14]*x[30]+0.34*x[14]*x[31]+0.02*x[14]*x[33]+0.04*x[14]*x[34]+0.28*x[14]*x[35]-0.1*x[14]*x[36]-0.08*x[14]*x[38]-0.08*x[14]*x[39]-0.28*x[14]*x[40]-0.06*x[14]*x[41]+0.3*x[15]*x[17]-0.06*x[15]*x[16]+0.26*x[15]*x[19]-0.1*x[15]*x[20]+0.08*x[15]*x[21]+0.02*x[15]*x[22]-0.24*x[15]*x[23]+0.4*x[15]*x[24]-0.2*x[15]*x[25]+0.08*x[15]*x[26]+0.2*x[15]*x[27]-0.32*x[15]*x[28]+0.12*x[15]*x[29]+0.12*x[15]*x[30]+0.08*x[15]*x[31]+0.36*x[15]*x[32]+0.04*x[15]*x[33]-0.22*x[15]*x[34]-0.02*x[15]*x[35]+0.02*x[15]*x[36]-0.06*x[15]*x[37]-0.22*x[15]*x[38]+0.08*x[15]*x[39]+0.02*x[15]*x[40]+0.24*x[15]*x[41]+0.04*x[16]*x[17]+0.08*x[16]*x[18]+0.18*x[16]*x[19]+0.02*x[16]*x[20]+0.06*x[16]*x[21]-0.02*x[16]*x[22]+0.04*x[16]*x[23]-0.06*x[16]*x[24]-0.18*x[16]*x[25]-0.22*x[16]*x[26]-0.24*x[16]*x[27]-0.1*x[16]*x[28]+0.06*x[16]*x[29]+0.08*x[16]*x[30]-0.1*x[16]*x[31]+0.02*x[16]*x[32]+0.12*x[16]*x[33]-0.2*x[16]*x[34]-0.3*x[16]*x[35]-0.2*x[16]*x[36]-0.06*x[16]*x[37]+0.24*x[16]*x[38]+0.08*x[16]*x[39]-0.14*x[16]*x[41]+0.38*x[17]*x[18]-0.04*x[17]*x[19]-0.04*x[17]*x[20]-0.1*x[17]*x[21]-0.12*x[17]*x[22]+0.08*x[17]*x[23]-0.32*x[17]*x[25]-0.06*x[17]*x[26]+0.08*x[17]*x[27]+0.36*x[17]*x[28]-0.28*x[17]*x[29]-0.36*x[17]*x[30]-0.08*x[17]*x[31]-0.14*x[17]*x[32]-0.02*x[17]*x[33]-0.1*x[17]*x[34]-0.28*x[17]*x[35]-0.12*x[17]*x[36]+0.22*x[17]*x[37]-0.2*x[17]*x[38]-0.06*x[17]*x[39]-0.02*x[17]*x[40]+0.18*x[17]*x[41]+0.04*x[18]*x[19]-0.24*x[18]*x[20]+0.26*x[18]*x[21]-0.18*x[18]*x[22]-0.2*x[18]*x[23]-0.28*x[18]*x[24]+0.12*x[18]*x[25]-0.12*x[18]*x[26]+0.32*x[18]*x[27]-0.32*x[18]*x[28]+0.14*x[18]*x[30]+0.08*x[18]*x[31]+0.14*x[18]*x[32]-0.28*x[18]*x[33]+0.14*x[18]*x[34]-0.02*x[18]*x[35]-0.1*x[18]*x[36]+0.06*x[18]*x[37]-0.12*x[18]*x[38]-0.06*x[18]*x[39]-0.44*x[18]*x[40]+0.02*x[18]*x[41]+0.06*x[19]*x[20]+0.04*x[19]*x[21]+0.32*x[19]*x[22]+0.06*x[19]*x[23]-0.04*x[19]*x[24]-0.04*x[19]*x[25]-0.2*x[19]*x[26]+0.14*x[19]*x[27]-0.02*x[19]*x[28]+0.2*x[19]*x[29]-0.18*x[19]*x[30]-0.08*x[19]*x[31]-0.06*x[19]*x[32]-0.22*x[19]*x[33]-0.06*x[19]*x[34]+0.22*x[19]*x[35]-0.14*x[19]*x[36]-0.3*x[19]*x[37]+0.3*x[19]*x[38]-0.04*x[19]*x[39]+0.2*x[19]*x[40]-0.14*x[19]*x[41]+0.26*x[20]*x[22]-0.1*x[20]*x[21]+0.18*x[20]*x[23]+0.48*x[20]*x[24]+0.12*x[20]*x[25]-0.1*x[20]*x[26]+0.08*x[20]*x[27]+0.04*x[20]*x[28]+0.14*x[20]*x[29]+0.08*x[20]*x[30]+0.16*x[20]*x[31]-0.2*x[20]*x[32]-0.16*x[20]*x[33]-0.02*x[20]*x[35]-0.44*x[20]*x[36]-0.02*x[20]*x[37]+0.08*x[20]*x[38]+0.04*x[20]*x[39]+0.28*x[20]*x[40]-0.22*x[20]*x[41]+(-0.2*x[21]*x[22])-0.22*x[21]*x[23]-0.24*x[21]*x[24]+0.1*x[21]*x[25]+0.32*x[21]*x[26]-0.26*x[21]*x[27]+0.3*x[21]*x[28]+0.08*x[21]*x[29]+0.06*x[21]*x[30]+0.08*x[21]*x[31]-0.18*x[21]*x[32]-0.2*x[21]*x[33]+0.16*x[21]*x[34]-0.08*x[21]*x[35]-0.34*x[21]*x[36]+0.24*x[21]*x[37]-0.16*x[21]*x[38]+0.28*x[21]*x[39]-0.28*x[21]*x[40]-0.36*x[21]*x[41]+(-0.12*x[22]*x[23])-0.12*x[22]*x[24]-0.24*x[22]*x[25]+0.36*x[22]*x[26]+0.1*x[22]*x[27]+0.28*x[22]*x[28]+0.12*x[22]*x[29]-0.02*x[22]*x[30]+0.18*x[22]*x[31]-0.24*x[22]*x[33]+0.08*x[22]*x[34]-0.2*x[22]*x[35]-0.14*x[22]*x[36]-0.24*x[22]*x[37]-0.02*x[22]*x[39]-0.2*x[22]*x[40]+0.14*x[22]*x[41]+0.12*x[23]*x[24]-0.14*x[23]*x[25]+0.08*x[23]*x[26]+0.1*x[23]*x[27]+0.2*x[23]*x[28]-0.42*x[23]*x[29]+0.04*x[23]*x[30]+0.2*x[23]*x[31]+0.08*x[23]*x[32]-0.26*x[23]*x[33]+0.08*x[23]*x[34]+0.14*x[23]*x[35]-0.24*x[23]*x[36]+0.3*x[23]*x[37]-0.16*x[23]*x[38]-0.2*x[23]*x[39]+0.22*x[23]*x[40]+0.06*x[23]*x[41]+0.28*x[24]*x[26]-0.06*x[24]*x[25]+0.04*x[24]*x[27]+0.04*x[24]*x[28]-0.06*x[24]*x[29]-0.22*x[24]*x[30]-0.06*x[24]*x[31]+0.12*x[24]*x[32]+0.08*x[24]*x[33]-0.12*x[24]*x[34]-0.04*x[24]*x[35]+0.08*x[24]*x[36]-0.02*x[24]*x[37]+0.18*x[24]*x[38]+0.24*x[24]*x[39]-0.1*x[24]*x[40]+0.34*x[24]*x[41]+0.06*x[25]*x[26]+0.06*x[25]*x[27]+0.02*x[25]*x[28]-0.2*x[25]*x[29]+0.04*x[25]*x[30]-0.08*x[25]*x[31]+0.22*x[25]*x[32]+0.16*x[25]*x[33]-0.2*x[25]*x[34]-0.1*x[25]*x[35]-0.14*x[25]*x[36]-0.14*x[25]*x[37]+0.24*x[25]*x[38]+0.04*x[25]*x[39]-0.18*x[25]*x[40]-0.24*x[25]*x[41]+(-0.2*x[26]*x[27])-0.14*x[26]*x[28]-0.02*x[26]*x[29]-0.1*x[26]*x[30]-0.02*x[26]*x[32]-0.04*x[26]*x[33]+0.22*x[26]*x[34]-0.1*x[26]*x[35]+0.28*x[26]*x[36]-0.04*x[26]*x[37]-0.02*x[26]*x[38]-0.22*x[26]*x[39]+0.2*x[26]*x[40]-0.22*x[26]*x[41]+(-0.14*x[27]*x[28])-0.12*x[27]*x[29]-0.14*x[27]*x[30]-0.3*x[27]*x[31]-0.04*x[27]*x[32]+0.06*x[27]*x[33]+0.04*x[27]*x[34]-0.24*x[27]*x[35]-0.08*x[27]*x[36]-0.06*x[27]*x[37]-0.1*x[27]*x[38]+0.06*x[27]*x[39]+0.32*x[27]*x[40]+0.06*x[27]*x[41]+0.06*x[28]*x[29]-0.38*x[28]*x[30]-0.44*x[28]*x[32]+0.22*x[28]*x[33]-0.06*x[28]*x[34]+0.12*x[28]*x[35]+0.28*x[28]*x[36]-0.12*x[28]*x[37]-0.24*x[28]*x[38]-0.26*x[28]*x[39]-0.04*x[28]*x[40]-0.2*x[28]*x[41]+(-0.32*x[29]*x[30])-0.16*x[29]*x[31]-0.14*x[29]*x[32]+0.2*x[29]*x[33]-0.2*x[29]*x[34]+0.18*x[29]*x[35]+0.02*x[29]*x[36]-0.16*x[29]*x[37]+0.1*x[29]*x[38]+0.26*x[29]*x[39]-0.06*x[29]*x[40]+0.16*x[29]*x[41]+0.1*x[30]*x[32]-0.08*x[30]*x[31]+0.08*x[30]*x[33]-0.12*x[30]*x[35]+0.16*x[30]*x[36]-0.26*x[30]*x[37]+0.06*x[30]*x[38]+0.3*x[30]*x[39]-0.02*x[30]*x[40]-0.18*x[30]*x[41]+(-0.12*x[31]*x[32])-0.16*x[31]*x[33]+0.02*x[31]*x[34]-0.32*x[31]*x[35]+0.2*x[31]*x[36]-0.1*x[31]*x[38]-0.12*x[31]*x[39]-0.12*x[31]*x[41]+0.04*x[32]*x[34]-0.06*x[32]*x[33]+0.18*x[32]*x[35]-0.22*x[32]*x[36]+0.28*x[32]*x[37]+0.12*x[32]*x[38]-0.14*x[32]*x[40]+0.16*x[32]*x[41]+0.14*x[33]*x[35]-0.18*x[33]*x[34]-0.22*x[33]*x[36]-0.24*x[33]*x[37]+0.1*x[33]*x[38]-0.16*x[33]*x[39]-0.32*x[33]*x[40]+0.22*x[33]*x[41]+0.12*x[34]*x[35]+0.3*x[34]*x[36]-0.02*x[34]*x[37]-0.22*x[34]*x[38]-0.04*x[34]*x[39]-0.12*x[34]*x[40]+0.1*x[34]*x[41]+0.28*x[35]*x[37]-0.36*x[35]*x[36]+0.06*x[35]*x[38]+0.34*x[35]*x[39]+0.3*x[35]*x[40]+0.24*x[35]*x[41]+0.08*x[36]*x[38]-0.28*x[36]*x[37]-0.06*x[36]*x[39]+0.02*x[36]*x[40]+0.08*x[36]*x[41]+0.26*x[37]*x[38]+0.04*x[37]*x[39]+0.16*x[37]*x[40]-0.08*x[37]*x[41]+0.16*x[38]*x[39]+0.26*x[38]*x[40]+0.12*x[38]*x[41]+0.38*x[39]*x[40]+0.08*x[39]*x[41]+0.14*x[3]*x[3]-0.01*x[2]*x[2]-0.16*x[4]*x[4]-0.15*x[5]*x[5]+0.08*x[6]*x[6]+0.03*x[7]*x[7]-0.2*x[8]*x[8]+0.11*x[9]*x[9]+0.02*x[10]*x[10]-0.05*x[11]*x[11]+0.01*x[12]*x[12]+0.01*x[13]*x[13]+0.04*x[14]*x[14]-0.16*x[15]*x[15]+0.07*x[16]*x[16]+0.07*x[17]*x[17]+0.1*x[18]*x[18]+0.06*x[19]*x[19]-0.09*x[20]*x[20]+0.13*x[21]*x[21]+0.13*x[22]*x[22]+0.31*x[23]*x[23]-0.17*x[24]*x[24]+0.17*x[25]*x[25]-0.2*x[26]*x[26]-0.13*x[27]*x[27]-0.03*x[28]*x[28]+0.11*x[29]*x[29]+0.16*x[30]*x[30]-0.13*x[31]*x[31]+0.14*x[32]*x[32]-0.02*x[33]*x[33]-0.04*x[34]*x[34]-0.23*x[35]*x[35]-0.02*x[36]*x[36]+0.2*x[37]*x[37]-0.03*x[38]*x[38]-0.04*x[39]*x[39]-0.16*x[40]*x[40]+0.3*x[41]*x[41]-0.69*x[2]-0.21*x[3]-0.91*x[4]-0.55*x[5]+0.49*x[6]+0.63*x[7]-0.46*x[8]-0.37*x[9]-0.35*x[10]+0.52*x[11]+0.41*x[12]-0.71*x[13]-0.53*x[14]+0.14*x[15]-0.02*x[16]-0.15*x[17]-0.53*x[18]+0.27*x[19]+0.37*x[20]+0.87*x[21]+0.08*x[22]+0.7*x[23]-0.14*x[24]-0.14*x[25]-0.46*x[26]-0.37*x[27]-0.63*x[28]-0.37*x[29]+0.46*x[30]-0.38*x[31]+0.57*x[32]-0.99*x[33]-0.81*x[34]+0.86*x[35]-x[36]+0.12*x[37]+0.1*x[38]+0.09*x[39]+0.19*x[40]-0.78*x[41] <= 16.22)
@constraint(m, e3, 0.32*x[2]+0.07*x[3]+0.83*x[4]+0.67*x[5]-0.92*x[6]+0.21*x[7]-0.01*x[8]+0.43*x[9]-0.93*x[10]+0.79*x[11]-0.29*x[12]-0.84*x[13]+0.64*x[14]+0.92*x[15]-0.75*x[16]+0.56*x[17]-0.5*x[18]-0.15*x[19]+0.71*x[20]+0.89*x[21]+0.07*x[22]-0.79*x[23]+0.11*x[24]-0.1*x[25]-0.53*x[26]+0.34*x[27]+0.14*x[28]+0.93*x[29]+0.29*x[30]-0.34*x[31]-0.94*x[32]-0.04*x[33]-0.86*x[34]+0.87*x[35]-0.15*x[36]-0.46*x[37]+0.25*x[38]+0.4*x[39]+0.43*x[40]-0.76*x[41] == 0.56)
@constraint(m, e4, 0.55*x[2]-0.69*x[3]-0.14*x[4]-0.09*x[5]+0.02*x[6]-0.69*x[7]+0.16*x[8]+0.75*x[9]+0.87*x[10]+0.51*x[11]-0.69*x[12]+0.3*x[13]+0.68*x[14]+0.99*x[15]+0.55*x[16]+0.47*x[17]-0.45*x[18]-0.72*x[19]-0.18*x[20]+0.17*x[21]+0.34*x[22]-0.77*x[23]+0.97*x[24]-0.56*x[25]-0.52*x[26]+0.77*x[27]-0.15*x[28]-0.8*x[29]-0.84*x[30]+0.55*x[31]-0.76*x[32]+0.47*x[33]+0.57*x[34]-0.65*x[35]-0.8*x[36]+0.09*x[37]+0.25*x[38]+0.22*x[39]+0.3*x[40]-0.46*x[41] == -0.16)
@constraint(m, e5, 0.7*x[2]-0.63*x[3]-0.42*x[4]-0.2*x[5]+0.03*x[6]+0.41*x[7]+0.13*x[8]+0.59*x[9]+0.27*x[10]+0.76*x[11]-0.33*x[12]-0.56*x[13]+0.88*x[14]+0.41*x[15]-0.31*x[16]-0.41*x[17]+0.93*x[18]+0.33*x[19]+0.72*x[20]-0.97*x[21]-0.43*x[22]+0.09*x[23]+0.41*x[24]-0.13*x[25]+0.38*x[26]-0.52*x[27]+0.53*x[28]+0.62*x[29]+0.66*x[30]-0.37*x[31]-0.02*x[32]-0.39*x[33]+0.41*x[34]-0.42*x[35]+0.24*x[36]+0.62*x[37]+0.32*x[38]+0.19*x[39]+0.44*x[40]-0.86*x[41] == -0.4)
@constraint(m, e6, -0.92*x[2]-0.94*x[3]+0.62*x[4]+0.28*x[5]+0.09*x[6]+0.25*x[7]+0.49*x[8]+0.23*x[9]-0.95*x[10]-0.76*x[11]-0.06*x[12]-0.58*x[13]+0.06*x[14]-0.76*x[15]-0.73*x[16]+0.48*x[17]+0.61*x[18]-0.4*x[19]-0.04*x[20]-0.97*x[21]+0.66*x[22]-0.7*x[23]-0.34*x[24]-0.61*x[25]-0.83*x[26]-0.2*x[27]-0.64*x[28]+0.3*x[29]-0.11*x[30]-0.08*x[31]+0.07*x[32]-0.72*x[33]+0.85*x[34]-0.64*x[35]+0.83*x[36]-0.55*x[37]-0.97*x[38]-0.99*x[39]+0.96*x[40]+0.47*x[41] == -0.25)
@constraint(m, e7, -0.25*x[2]-0.29*x[3]-0.65*x[4]+0.72*x[5]+0.61*x[6]+0.32*x[7]+0.01*x[8]+0.25*x[9]+0.16*x[10]+0.55*x[11]+0.75*x[12]+0.22*x[13]-0.77*x[14]-0.78*x[15]+0.52*x[16]-0.68*x[17]-0.83*x[18]+0.65*x[19]+0.28*x[20]+0.57*x[21]+0.83*x[22]+0.95*x[23]+0.28*x[24]+0.15*x[25]-0.84*x[26]-0.62*x[27]+0.5*x[28]+0.67*x[29]+0.43*x[30]-0.05*x[31]+0.18*x[32]-0.76*x[33]+0.49*x[34]+0.57*x[35]+0.71*x[36]+0.26*x[37]-0.07*x[38]-0.17*x[39]+0.97*x[40]+0.91*x[41] == 0.45)
@constraint(m, e8, 0.79*x[2]+0.2*x[3]+0.04*x[4]+0.39*x[5]-0.51*x[6]-0.11*x[7]-0.26*x[8]-0.62*x[9]+0.96*x[10]+0.92*x[11]-0.16*x[12]+0.73*x[13]+0.91*x[14]-0.38*x[15]-0.89*x[16]-0.51*x[17]+0.38*x[18]-0.23*x[19]-0.63*x[20]-0.11*x[21]+0.27*x[22]+0.34*x[23]-0.26*x[24]-0.55*x[25]-0.57*x[26]-0.42*x[27]-0.12*x[28]-0.25*x[29]+0.64*x[30]+0.63*x[31]-0.53*x[32]-0.91*x[33]-0.03*x[34]+0.44*x[35]-0.37*x[36]+0.54*x[37]-0.27*x[38]-0.96*x[39]+0.57*x[40]+0.38*x[41] == 0.3)
@constraint(m, e9, 0.02*x[3]-0.77*x[4]-0.18*x[5]+0.22*x[6]-0.41*x[7]-0.99*x[8]+0.44*x[9]-0.28*x[10]+0.22*x[11]+0.25*x[12]+0.72*x[13]-0.65*x[14]-0.5*x[15]+0.85*x[16]+0.44*x[17]-0.09*x[18]-0.12*x[19]+0.72*x[20]+0.99*x[21]+0.79*x[22]-0.18*x[23]-0.88*x[24]-0.01*x[25]-0.68*x[26]-0.16*x[27]+0.58*x[28]-0.75*x[29]+0.77*x[30]-0.56*x[31]+0.03*x[32]+0.71*x[33]-0.57*x[34]-0.24*x[35]-0.52*x[36]+0.61*x[37]+0.12*x[38]+0.07*x[39]-0.43*x[40]-0.99*x[41] == 0.99)
@constraint(m, e10, 0.35*x[2]+0.72*x[3]+0.53*x[4]-0.55*x[5]+0.27*x[6]-0.45*x[7]+0.77*x[8]-0.51*x[9]-0.52*x[10]+0.94*x[11]-0.95*x[12]+0.42*x[13]-0.71*x[14]+0.11*x[15]+0.58*x[16]-0.45*x[17]+0.04*x[18]+0.88*x[19]-0.87*x[20]-0.99*x[21]+0.4*x[22]+0.41*x[23]-0.53*x[24]-0.37*x[25]-0.42*x[26]-0.06*x[27]+0.53*x[28]+0.54*x[29]-0.55*x[30]+0.58*x[31]+0.17*x[32]-0.81*x[33]-0.29*x[34]-0.91*x[35]+0.85*x[36]-0.57*x[37]-0.15*x[38]-0.26*x[39]+0.08*x[40]-0.33*x[41] == 0.77)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
