using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.72*x[2]*x[3]+1.76*x[2]*x[4]+0.38*x[2]*x[5]-0.48*x[2]*x[6]-1.34*x[2]*x[7]-1.38*x[2]*x[8]-1.36*x[2]*x[9]-0.32*x[2]*x[10]-0.88*x[2]*x[11]+0.12*x[2]*x[12]-1.46*x[2]*x[13]-0.24*x[2]*x[14]+1.06*x[2]*x[15]+1.14*x[2]*x[16]-0.24*x[2]*x[17]-1.98*x[2]*x[19]+1.7*x[2]*x[20]-1.16*x[2]*x[21]+1.32*x[2]*x[22]+0.52*x[2]*x[23]-1.44*x[2]*x[24]+0.78*x[2]*x[25]+0.94*x[2]*x[26]-0.38*x[2]*x[27]+1.44*x[2]*x[28]+1.94*x[2]*x[29]-0.08*x[2]*x[30]+0.28*x[2]*x[31]+0.38*x[3]*x[4]-0.36*x[3]*x[5]+1.52*x[3]*x[6]-1.34*x[3]*x[7]-0.36*x[3]*x[8]+1.1*x[3]*x[9]-0.58*x[3]*x[10]-1.68*x[3]*x[11]-0.7*x[3]*x[12]+1.28*x[3]*x[13]+1.2*x[3]*x[14]+0.04*x[3]*x[15]-0.98*x[3]*x[16]+1.9*x[3]*x[17]-0.9*x[3]*x[18]+1.56*x[3]*x[19]+0.72*x[3]*x[20]+1.7*x[3]*x[21]+0.12*x[3]*x[22]+0.46*x[3]*x[23]-0.84*x[3]*x[24]+0.04*x[3]*x[25]+0.18*x[3]*x[26]+1.62*x[3]*x[27]+0.62*x[3]*x[28]+1.92*x[3]*x[29]-1.1*x[3]*x[30]+1.62*x[3]*x[31]+0.36*x[4]*x[5]-0.12*x[4]*x[6]-0.94*x[4]*x[7]+1.24*x[4]*x[8]-0.92*x[4]*x[9]+0.26*x[4]*x[10]+0.92*x[4]*x[11]+0.32*x[4]*x[13]-0.72*x[4]*x[14]+1.54*x[4]*x[15]-0.68*x[4]*x[16]-0.46*x[4]*x[17]+1.3*x[4]*x[18]+1.16*x[4]*x[19]+1.84*x[4]*x[21]+0.96*x[4]*x[22]-1.72*x[4]*x[23]-1.38*x[4]*x[24]+0.9*x[4]*x[25]+0.04*x[4]*x[26]+1.58*x[4]*x[27]-0.7*x[4]*x[28]-1.84*x[4]*x[29]-1.68*x[4]*x[31]+(-0.78*x[5]*x[6])-0.08*x[5]*x[7]-0.06*x[5]*x[8]+1.02*x[5]*x[9]-1.78*x[5]*x[10]-0.42*x[5]*x[11]+0.5*x[5]*x[12]-0.52*x[5]*x[13]-0.66*x[5]*x[14]-0.34*x[5]*x[15]-0.98*x[5]*x[16]-0.94*x[5]*x[17]+0.82*x[5]*x[18]-0.98*x[5]*x[19]+2*x[5]*x[20]+1.94*x[5]*x[21]+1.46*x[5]*x[22]-0.84*x[5]*x[23]-x[5]*x[24]+0.24*x[5]*x[25]-0.18*x[5]*x[26]-1.02*x[5]*x[27]+1.88*x[5]*x[28]-0.36*x[5]*x[29]+1.54*x[5]*x[30]+0.5*x[5]*x[31]+1.16*x[6]*x[7]+0.52*x[6]*x[8]-1.28*x[6]*x[9]+1.76*x[6]*x[10]-1.62*x[6]*x[11]+1.74*x[6]*x[12]+0.72*x[6]*x[13]+1.5*x[6]*x[14]-0.44*x[6]*x[16]+0.96*x[6]*x[17]-1.8*x[6]*x[18]-1.08*x[6]*x[19]-0.52*x[6]*x[20]-2*x[6]*x[21]+1.18*x[6]*x[22]-0.88*x[6]*x[23]-0.42*x[6]*x[24]-0.16*x[6]*x[25]+1.44*x[6]*x[26]-1.22*x[6]*x[27]-0.7*x[6]*x[28]+0.4*x[6]*x[29]-0.38*x[6]*x[30]+2*x[6]*x[31]+1.16*x[7]*x[8]+0.6*x[7]*x[9]-1.96*x[7]*x[10]+1.98*x[7]*x[11]-0.9*x[7]*x[12]-0.06*x[7]*x[13]-0.86*x[7]*x[14]-0.1*x[7]*x[15]-0.4*x[7]*x[16]-1.82*x[7]*x[17]+1.82*x[7]*x[18]-1.16*x[7]*x[19]-0.74*x[7]*x[20]+0.7*x[7]*x[21]-0.3*x[7]*x[22]+1.14*x[7]*x[23]+0.68*x[7]*x[24]+0.54*x[7]*x[25]+1.58*x[7]*x[26]-0.5*x[7]*x[27]+0.88*x[7]*x[29]+0.58*x[7]*x[30]+1.26*x[7]*x[31]+0.56*x[8]*x[10]-0.62*x[8]*x[9]+0.16*x[8]*x[11]-1.32*x[8]*x[12]+0.1*x[8]*x[13]-1.9*x[8]*x[14]+0.72*x[8]*x[15]+0.24*x[8]*x[16]-0.84*x[8]*x[17]-0.1*x[8]*x[18]+0.2*x[8]*x[19]+0.72*x[8]*x[20]+1.56*x[8]*x[21]+1.98*x[8]*x[22]-1.64*x[8]*x[23]+0.7*x[8]*x[24]+1.54*x[8]*x[25]-1.86*x[8]*x[26]+0.36*x[8]*x[27]+1.36*x[8]*x[28]+1.32*x[8]*x[29]-0.12*x[8]*x[30]-0.94*x[8]*x[31]+1.06*x[9]*x[10]+1.5*x[9]*x[11]-1.16*x[9]*x[12]+0.7*x[9]*x[13]+0.82*x[9]*x[14]-0.56*x[9]*x[15]+0.1*x[9]*x[16]+x[9]*x[17]-1.36*x[9]*x[18]+1.54*x[9]*x[19]-0.32*x[9]*x[20]-1.26*x[9]*x[21]+0.02*x[9]*x[22]+0.06*x[9]*x[23]+1.26*x[9]*x[24]+0.94*x[9]*x[25]-1.08*x[9]*x[26]+1.08*x[9]*x[27]-1.26*x[9]*x[28]-1.16*x[9]*x[29]+0.12*x[9]*x[30]-0.5*x[9]*x[31]+1.48*x[10]*x[11]-0.06*x[10]*x[12]-0.18*x[10]*x[13]-0.18*x[10]*x[14]-1.74*x[10]*x[15]+1.66*x[10]*x[16]-0.42*x[10]*x[17]+0.12*x[10]*x[18]-0.02*x[10]*x[19]+0.28*x[10]*x[20]-0.98*x[10]*x[21]+1.22*x[10]*x[22]-1.28*x[10]*x[23]+1.06*x[10]*x[24]-1.58*x[10]*x[25]+0.26*x[10]*x[26]+0.98*x[10]*x[27]+1.9*x[10]*x[28]+0.46*x[10]*x[29]+1.72*x[10]*x[30]+(-0.16*x[11]*x[12])-1.7*x[11]*x[13]-1.28*x[11]*x[14]+0.18*x[11]*x[15]-1.12*x[11]*x[16]-0.14*x[11]*x[17]-1.94*x[11]*x[18]-0.64*x[11]*x[19]+1.42*x[11]*x[20]+1.94*x[11]*x[21]-0.46*x[11]*x[22]-0.48*x[11]*x[23]+0.92*x[11]*x[24]-0.02*x[11]*x[25]+1.12*x[11]*x[26]+0.8*x[11]*x[27]+0.88*x[11]*x[28]+1.8*x[11]*x[29]-1.26*x[11]*x[30]-0.5*x[11]*x[31]+1.88*x[12]*x[13]+0.7*x[12]*x[14]+1.68*x[12]*x[15]-0.4*x[12]*x[16]+1.42*x[12]*x[17]-0.34*x[12]*x[18]-1.96*x[12]*x[19]+1.54*x[12]*x[20]-1.64*x[12]*x[21]-1.18*x[12]*x[22]-0.38*x[12]*x[23]+1.38*x[12]*x[24]-0.92*x[12]*x[25]+0.58*x[12]*x[26]+1.76*x[12]*x[27]-1.64*x[12]*x[28]-0.44*x[12]*x[29]+0.34*x[12]*x[30]-1.36*x[12]*x[31]+1.48*x[13]*x[14]+0.7*x[13]*x[15]-1.38*x[13]*x[16]-1.86*x[13]*x[17]-1.08*x[13]*x[18]-0.88*x[13]*x[19]-0.3*x[13]*x[20]-1.7*x[13]*x[21]-1.96*x[13]*x[22]-0.66*x[13]*x[23]-0.86*x[13]*x[24]-0.24*x[13]*x[26]+1.4*x[13]*x[27]+1.14*x[13]*x[28]-0.14*x[13]*x[29]+1.02*x[13]*x[30]+1.62*x[13]*x[31]+1.74*x[14]*x[15]+1.44*x[14]*x[17]+1.78*x[14]*x[18]-1.88*x[14]*x[19]-0.78*x[14]*x[20]-0.12*x[14]*x[21]-1.04*x[14]*x[22]-0.46*x[14]*x[23]+1.72*x[14]*x[24]-1.68*x[14]*x[25]+0.72*x[14]*x[26]-1.62*x[14]*x[27]+1.62*x[14]*x[28]+0.48*x[14]*x[29]-0.72*x[14]*x[30]+0.58*x[14]*x[31]+1.72*x[15]*x[17]+1.72*x[15]*x[18]-1.16*x[15]*x[19]+1.26*x[15]*x[20]-1.58*x[15]*x[21]+1.2*x[15]*x[22]-1.98*x[15]*x[23]-1.08*x[15]*x[24]-1.6*x[15]*x[25]+1.08*x[15]*x[26]+1.06*x[15]*x[27]+1.2*x[15]*x[28]-1.96*x[15]*x[29]+1.42*x[15]*x[30]-0.38*x[15]*x[31]+1.24*x[16]*x[17]+0.06*x[16]*x[18]-1.36*x[16]*x[19]-1.94*x[16]*x[20]+0.48*x[16]*x[21]-0.2*x[16]*x[22]+1.6*x[16]*x[23]-1.3*x[16]*x[24]-0.86*x[16]*x[25]+1.54*x[16]*x[26]-0.46*x[16]*x[27]+0.16*x[16]*x[28]+0.92*x[16]*x[29]+0.38*x[16]*x[30]-1.54*x[16]*x[31]+1.34*x[17]*x[19]-1.12*x[17]*x[18]-1.58*x[17]*x[20]+1.84*x[17]*x[21]-1.58*x[17]*x[22]+0.24*x[17]*x[23]-1.14*x[17]*x[24]-0.82*x[17]*x[25]-1.4*x[17]*x[26]-1.9*x[17]*x[27]+1.18*x[17]*x[28]+1.06*x[17]*x[29]-1.34*x[17]*x[30]-0.98*x[17]*x[31]+1.22*x[18]*x[19]-0.2*x[18]*x[20]-1.8*x[18]*x[21]+1.14*x[18]*x[22]+0.34*x[18]*x[23]+0.14*x[18]*x[24]-1.02*x[18]*x[25]+0.24*x[18]*x[26]+1.52*x[18]*x[27]-1.24*x[18]*x[28]+0.26*x[18]*x[29]-1.76*x[18]*x[30]+0.22*x[18]*x[31]+1.72*x[19]*x[21]-0.72*x[19]*x[20]-0.28*x[19]*x[23]-1.22*x[19]*x[25]-1.3*x[19]*x[26]-0.9*x[19]*x[27]-1.64*x[19]*x[28]-1.16*x[19]*x[29]-0.26*x[19]*x[30]+1.42*x[19]*x[31]+0.98*x[20]*x[21]-1.94*x[20]*x[22]+1.24*x[20]*x[23]-1.12*x[20]*x[24]+0.56*x[20]*x[25]-0.24*x[20]*x[26]-1.1*x[20]*x[27]+1.7*x[20]*x[28]-0.72*x[20]*x[29]+0.52*x[20]*x[30]-0.3*x[20]*x[31]+1.34*x[21]*x[22]+1.96*x[21]*x[23]+1.86*x[21]*x[24]-1.12*x[21]*x[25]-0.24*x[21]*x[26]-0.3*x[21]*x[27]-0.12*x[21]*x[28]+0.8*x[21]*x[29]+1.34*x[21]*x[30]+1.38*x[21]*x[31]+1.62*x[22]*x[23]-x[22]*x[24]+0.74*x[22]*x[25]-0.68*x[22]*x[26]+1.84*x[22]*x[27]+0.48*x[22]*x[28]+1.36*x[22]*x[29]-1.52*x[22]*x[30]-0.34*x[22]*x[31]+(-0.36*x[23]*x[24])-1.6*x[23]*x[25]+0.28*x[23]*x[26]+1.86*x[23]*x[27]+0.66*x[23]*x[28]+0.16*x[23]*x[29]-1.8*x[23]*x[30]+0.8*x[23]*x[31]+1.32*x[24]*x[25]+1.78*x[24]*x[26]+0.2*x[24]*x[27]-0.2*x[24]*x[28]+1.22*x[24]*x[29]-0.96*x[24]*x[30]+0.3*x[24]*x[31]+1.6*x[25]*x[26]+0.22*x[25]*x[27]-2*x[25]*x[28]+1.16*x[25]*x[29]-0.22*x[25]*x[30]-1.72*x[25]*x[31]+0.76*x[26]*x[28]-2*x[26]*x[27]+0.08*x[26]*x[30]-0.84*x[26]*x[31]+0.58*x[27]*x[28]-0.9*x[27]*x[29]+0.42*x[27]*x[30]+0.98*x[28]*x[29]+0.46*x[28]*x[30]-1.84*x[28]*x[31]+0.14*x[29]*x[30]+0.3*x[29]*x[31]-0.04*x[30]*x[31]+0.99*x[2]*x[2]-0.9*x[3]*x[3]-0.31*x[4]*x[4]+0.5*x[5]*x[5]+0.06*x[6]*x[6]+0.08*x[7]*x[7]-0.12*x[8]*x[8]+0.69*x[9]*x[9]-0.41*x[10]*x[10]+0.35*x[11]*x[11]-0.44*x[12]*x[12]-0.87*x[13]*x[13]+0.92*x[14]*x[14]-0.05*x[15]*x[15]+0.82*x[16]*x[16]+0.04*x[17]*x[17]-0.48*x[18]*x[18]-0.6*x[19]*x[19]+0.56*x[20]*x[20]-0.35*x[21]*x[21]-x[23]*x[23]+0.69*x[24]*x[24]-0.1*x[25]*x[25]+0.3*x[26]*x[26]-0.09*x[27]*x[27]-0.95*x[28]*x[28]+0.83*x[29]*x[29]+0.61*x[2]-0.7*x[3]+0.08*x[4]+0.65*x[5]+0.33*x[6]-0.7*x[7]-0.09*x[8]+0.32*x[9]-0.62*x[10]-0.23*x[11]+0.5*x[12]-0.96*x[13]+0.5*x[14]-0.73*x[15]+0.15*x[16]+0.3*x[17]+0.11*x[18]+0.26*x[19]-0.94*x[20]+0.7*x[21]-0.29*x[22]+0.1*x[23]-0.94*x[24]+0.02*x[25]-0.83*x[26]-0.26*x[27]-0.84*x[28]-0.35*x[29]+0.79*x[30]-0.69*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.5*x[2]*x[5]-1.8*x[2]*x[3]+1.94*x[2]*x[6]+0.16*x[2]*x[7]-1.68*x[2]*x[8]+0.36*x[2]*x[9]+1.76*x[2]*x[10]-1.18*x[2]*x[11]-0.86*x[2]*x[12]-0.58*x[2]*x[13]-0.88*x[2]*x[14]+1.36*x[2]*x[15]+1.7*x[2]*x[16]+0.5*x[2]*x[17]-0.94*x[2]*x[18]-1.12*x[2]*x[19]-1.82*x[2]*x[20]+0.94*x[2]*x[21]+1.36*x[2]*x[22]+1.84*x[2]*x[23]-0.66*x[2]*x[24]+0.22*x[2]*x[25]+1.52*x[2]*x[26]-0.54*x[2]*x[27]+0.9*x[2]*x[28]-1.74*x[2]*x[29]-1.16*x[2]*x[30]+0.46*x[2]*x[31]+0.94*x[3]*x[4]-0.68*x[3]*x[5]+0.76*x[3]*x[6]-0.64*x[3]*x[7]+1.96*x[3]*x[8]+0.44*x[3]*x[10]-1.9*x[3]*x[11]-1.54*x[3]*x[12]+0.62*x[3]*x[13]-0.54*x[3]*x[14]-1.64*x[3]*x[15]+0.3*x[3]*x[16]+1.32*x[3]*x[17]-1.48*x[3]*x[18]-1.94*x[3]*x[19]-1.08*x[3]*x[20]-0.82*x[3]*x[21]-1.14*x[3]*x[22]-0.32*x[3]*x[23]-0.4*x[3]*x[24]+1.12*x[3]*x[25]+1.54*x[3]*x[26]+0.2*x[3]*x[28]-1.22*x[3]*x[29]-0.14*x[3]*x[30]+1.2*x[3]*x[31]+0.06*x[4]*x[5]-0.06*x[4]*x[6]+0.06*x[4]*x[7]-0.14*x[4]*x[8]-1.42*x[4]*x[9]-1.48*x[4]*x[10]-1.04*x[4]*x[11]-1.34*x[4]*x[12]-1.34*x[4]*x[13]-0.66*x[4]*x[14]+1.76*x[4]*x[15]+1.12*x[4]*x[16]-0.34*x[4]*x[17]-1.46*x[4]*x[18]+1.16*x[4]*x[19]+0.8*x[4]*x[21]-0.46*x[4]*x[22]-1.46*x[4]*x[23]-1.44*x[4]*x[24]+1.66*x[4]*x[25]+1.24*x[4]*x[26]+0.42*x[4]*x[27]+1.72*x[4]*x[28]-1.9*x[4]*x[29]-1.8*x[4]*x[30]-0.08*x[4]*x[31]+1.78*x[5]*x[7]-1.64*x[5]*x[6]+0.48*x[5]*x[8]-1.92*x[5]*x[9]-1.56*x[5]*x[10]-0.68*x[5]*x[11]-0.72*x[5]*x[12]-0.62*x[5]*x[13]+0.28*x[5]*x[14]+1.82*x[5]*x[15]+1.9*x[5]*x[16]-1.08*x[5]*x[17]-0.48*x[5]*x[18]+1.96*x[5]*x[19]+0.54*x[5]*x[20]+1.38*x[5]*x[21]+1.9*x[5]*x[22]-0.34*x[5]*x[24]-0.52*x[5]*x[25]+1.04*x[5]*x[26]+1.56*x[5]*x[27]+1.66*x[5]*x[29]+1.82*x[5]*x[30]-0.68*x[5]*x[31]+1.54*x[6]*x[7]+1.66*x[6]*x[8]-1.82*x[6]*x[9]+0.5*x[6]*x[10]-0.04*x[6]*x[11]+0.36*x[6]*x[12]+1.18*x[6]*x[13]-1.52*x[6]*x[14]+1.64*x[6]*x[15]-1.18*x[6]*x[16]-1.68*x[6]*x[17]-0.2*x[6]*x[18]+1.66*x[6]*x[19]+1.4*x[6]*x[20]-0.26*x[6]*x[22]+0.24*x[6]*x[23]-0.46*x[6]*x[24]+1.32*x[6]*x[26]+1.32*x[6]*x[27]-0.32*x[6]*x[28]+1.64*x[6]*x[29]-1.6*x[6]*x[30]-0.94*x[6]*x[31]+0.9*x[7]*x[9]-0.14*x[7]*x[8]-1.64*x[7]*x[10]+1.1*x[7]*x[11]+0.72*x[7]*x[12]-0.36*x[7]*x[13]+1.9*x[7]*x[14]+1.88*x[7]*x[15]-0.1*x[7]*x[16]-0.92*x[7]*x[17]+1.92*x[7]*x[18]-0.52*x[7]*x[19]+0.68*x[7]*x[20]-0.24*x[7]*x[21]-0.3*x[7]*x[22]-0.42*x[7]*x[23]+0.34*x[7]*x[24]-0.26*x[7]*x[25]-1.7*x[7]*x[26]+0.66*x[7]*x[27]+1.8*x[7]*x[28]+1.26*x[7]*x[29]+0.22*x[7]*x[30]+1.6*x[7]*x[31]+(-1.42*x[8]*x[9])-0.62*x[8]*x[10]-1.82*x[8]*x[11]-1.78*x[8]*x[12]+0.06*x[8]*x[13]+1.28*x[8]*x[15]+1.9*x[8]*x[16]-1.62*x[8]*x[17]+1.8*x[8]*x[18]-0.16*x[8]*x[19]+0.72*x[8]*x[20]-1.52*x[8]*x[21]-0.54*x[8]*x[22]+1.42*x[8]*x[23]+1.46*x[8]*x[24]-1.6*x[8]*x[25]-1.84*x[8]*x[26]-1.58*x[8]*x[27]+0.56*x[8]*x[28]-0.56*x[8]*x[29]-0.76*x[8]*x[30]+0.34*x[8]*x[31]+(-0.26*x[9]*x[10])-0.36*x[9]*x[12]+1.04*x[9]*x[13]+0.68*x[9]*x[14]-0.58*x[9]*x[15]+1.24*x[9]*x[16]-0.5*x[9]*x[17]-0.04*x[9]*x[18]+0.14*x[9]*x[19]+1.86*x[9]*x[20]+1.26*x[9]*x[21]-0.36*x[9]*x[22]+x[9]*x[23]+0.82*x[9]*x[24]-1.2*x[9]*x[25]-0.2*x[9]*x[26]+1.62*x[9]*x[27]+0.1*x[9]*x[28]-0.14*x[9]*x[29]-1.02*x[9]*x[30]-1.64*x[9]*x[31]+(-1.14*x[10]*x[11])-0.32*x[10]*x[13]-1.74*x[10]*x[14]+0.26*x[10]*x[15]+1.06*x[10]*x[16]+1.18*x[10]*x[17]+0.9*x[10]*x[18]+0.54*x[10]*x[19]-0.24*x[10]*x[20]-0.82*x[10]*x[21]+1.54*x[10]*x[22]-0.24*x[10]*x[23]-0.44*x[10]*x[24]+1.8*x[10]*x[26]-0.62*x[10]*x[27]-1.38*x[10]*x[28]-1.9*x[10]*x[29]+1.74*x[10]*x[30]-1.68*x[10]*x[31]+(-1.74*x[11]*x[12])-0.36*x[11]*x[13]+1.2*x[11]*x[14]-0.26*x[11]*x[15]+1.64*x[11]*x[16]-0.72*x[11]*x[17]+1.64*x[11]*x[18]+1.92*x[11]*x[19]-0.94*x[11]*x[20]-1.66*x[11]*x[21]-1.52*x[11]*x[22]-0.52*x[11]*x[23]-1.68*x[11]*x[24]+0.88*x[11]*x[25]+1.3*x[11]*x[26]-1.06*x[11]*x[27]-0.64*x[11]*x[28]+1.96*x[11]*x[30]+0.4*x[11]*x[31]+0.32*x[12]*x[13]+0.56*x[12]*x[14]+0.64*x[12]*x[15]+1.2*x[12]*x[16]-0.64*x[12]*x[17]+1.58*x[12]*x[18]-1.12*x[12]*x[19]+0.74*x[12]*x[20]-0.18*x[12]*x[21]-1.26*x[12]*x[22]+0.74*x[12]*x[24]+1.48*x[12]*x[25]+0.72*x[12]*x[26]+0.2*x[12]*x[27]+0.26*x[12]*x[28]-1.54*x[12]*x[29]-1.1*x[12]*x[31]+1.14*x[13]*x[14]+1.82*x[13]*x[16]+1.94*x[13]*x[17]-1.58*x[13]*x[18]+0.48*x[13]*x[19]-1.68*x[13]*x[20]-0.8*x[13]*x[21]+1.32*x[13]*x[22]+1.2*x[13]*x[23]+0.78*x[13]*x[24]+1.58*x[13]*x[25]+0.5*x[13]*x[26]+0.58*x[13]*x[27]+x[13]*x[29]-0.56*x[13]*x[30]+0.76*x[13]*x[31]+0.46*x[14]*x[15]+1.36*x[14]*x[16]+1.98*x[14]*x[17]+0.24*x[14]*x[18]-1.4*x[14]*x[19]-0.24*x[14]*x[20]-1.32*x[14]*x[21]+0.34*x[14]*x[22]-0.6*x[14]*x[23]-1.64*x[14]*x[24]-0.82*x[14]*x[25]+0.44*x[14]*x[26]-0.16*x[14]*x[27]-1.24*x[14]*x[28]+0.4*x[14]*x[29]+1.1*x[14]*x[30]+0.76*x[14]*x[31]+0.44*x[15]*x[16]-0.24*x[15]*x[17]+0.54*x[15]*x[18]+1.82*x[15]*x[19]+0.9*x[15]*x[20]+1.4*x[15]*x[21]+1.22*x[15]*x[22]-1.92*x[15]*x[23]+0.48*x[15]*x[25]-1.86*x[15]*x[26]+0.78*x[15]*x[27]+0.82*x[15]*x[28]-0.1*x[15]*x[29]+0.32*x[15]*x[30]+0.74*x[15]*x[31]+0.6*x[16]*x[18]-1.82*x[16]*x[17]+0.44*x[16]*x[19]-1.82*x[16]*x[20]+1.1*x[16]*x[21]+1.98*x[16]*x[22]+1.42*x[16]*x[23]+1.48*x[16]*x[24]+1.66*x[16]*x[25]+1.12*x[16]*x[26]-0.62*x[16]*x[27]-1.28*x[16]*x[28]+1.04*x[16]*x[29]-1.6*x[16]*x[30]+1.02*x[16]*x[31]+1.42*x[17]*x[19]-1.36*x[17]*x[18]+0.56*x[17]*x[20]-1.36*x[17]*x[21]+0.52*x[17]*x[22]+0.3*x[17]*x[23]-0.7*x[17]*x[24]+0.26*x[17]*x[25]-1.82*x[17]*x[26]-1.26*x[17]*x[27]+1.4*x[17]*x[28]+0.6*x[17]*x[29]-0.34*x[17]*x[30]+1.06*x[17]*x[31]+1.28*x[18]*x[20]-0.44*x[18]*x[19]+1.7*x[18]*x[21]-0.3*x[18]*x[22]+0.18*x[18]*x[23]-0.08*x[18]*x[24]-0.06*x[18]*x[25]-1.32*x[18]*x[26]+0.28*x[18]*x[27]+0.9*x[18]*x[28]+1.22*x[18]*x[29]-1.94*x[18]*x[30]-1.7*x[18]*x[31]+1.56*x[19]*x[20]-0.36*x[19]*x[21]+0.1*x[19]*x[22]-0.54*x[19]*x[23]+1.52*x[19]*x[24]-1.28*x[19]*x[25]+1.32*x[19]*x[26]-0.62*x[19]*x[27]-0.24*x[19]*x[28]+1.46*x[19]*x[29]-0.58*x[19]*x[30]-0.6*x[19]*x[31]+0.2*x[20]*x[21]+0.88*x[20]*x[22]+0.36*x[20]*x[23]-0.68*x[20]*x[24]+1.6*x[20]*x[25]+0.54*x[20]*x[26]-0.38*x[20]*x[27]+1.6*x[20]*x[28]+2*x[20]*x[29]-0.36*x[20]*x[30]+1.96*x[20]*x[31]+0.94*x[21]*x[22]+x[21]*x[23]+0.46*x[21]*x[24]-0.6*x[21]*x[25]-0.42*x[21]*x[26]+0.44*x[21]*x[27]-1.64*x[21]*x[28]+1.28*x[21]*x[29]-1.28*x[21]*x[30]+1.44*x[21]*x[31]+1.28*x[22]*x[24]-0.9*x[22]*x[23]+0.94*x[22]*x[25]-1.24*x[22]*x[26]-0.12*x[22]*x[27]-0.5*x[22]*x[28]+0.44*x[22]*x[29]-0.3*x[22]*x[30]-0.82*x[22]*x[31]+(-1.84*x[23]*x[24])-0.08*x[23]*x[25]+0.24*x[23]*x[26]-1.8*x[23]*x[27]-0.72*x[23]*x[28]+1.88*x[23]*x[29]+1.96*x[23]*x[30]-0.32*x[23]*x[31]+0.24*x[24]*x[25]-0.48*x[24]*x[26]-1.82*x[24]*x[27]+1.26*x[24]*x[28]-1.6*x[24]*x[29]-0.76*x[24]*x[30]+0.46*x[24]*x[31]+0.72*x[25]*x[26]+1.72*x[25]*x[27]+0.24*x[25]*x[28]+1.74*x[25]*x[29]+1.86*x[25]*x[30]+0.56*x[25]*x[31]+(-0.98*x[26]*x[27])-1.5*x[26]*x[28]+1.3*x[26]*x[29]+1.84*x[26]*x[30]+1.74*x[26]*x[31]+0.3*x[27]*x[28]-1.72*x[27]*x[29]-0.58*x[27]*x[30]+1.5*x[27]*x[31]+0.62*x[28]*x[29]+0.22*x[28]*x[30]-1.7*x[28]*x[31]+0.8*x[29]*x[30]+0.66*x[29]*x[31]+1.24*x[30]*x[31]+0.16*x[2]*x[2]+0.03*x[3]*x[3]+0.33*x[4]*x[4]-0.27*x[5]*x[5]-0.86*x[6]*x[6]+0.16*x[7]*x[7]-0.41*x[8]*x[8]-0.31*x[9]*x[9]-0.44*x[10]*x[10]-0.64*x[11]*x[11]-0.24*x[12]*x[12]+0.5*x[14]*x[14]-0.03*x[15]*x[15]+0.22*x[16]*x[16]+0.15*x[18]*x[18]-0.12*x[19]*x[19]+0.86*x[20]*x[20]-0.54*x[21]*x[21]-0.16*x[22]*x[22]-0.33*x[23]*x[23]-0.32*x[24]*x[24]+0.21*x[25]*x[25]+0.98*x[26]*x[26]-0.91*x[27]*x[27]+0.46*x[28]*x[28]+0.92*x[30]*x[30]-0.76*x[31]*x[31]-0.61*x[2]-0.97*x[3]-0.79*x[4]-0.4*x[5]-0.37*x[6]+0.58*x[7]+0.54*x[8]+0.87*x[9]-0.86*x[10]-0.27*x[11]+0.27*x[12]-0.33*x[13]-0.15*x[14]-0.6*x[15]-0.19*x[16]-0.36*x[17]+0.26*x[18]-0.07*x[19]+0.4*x[20]+0.3*x[21]-0.68*x[22]-0.21*x[23]-0.95*x[24]-0.47*x[25]+0.65*x[26]-0.2*x[27]-0.78*x[28]-0.77*x[29]+0.23*x[30]-0.64*x[31] <= 77.68)
@constraint(m, e3, 0.74*x[2]-0.89*x[3]+0.75*x[4]+0.72*x[5]+0.53*x[6]+0.42*x[7]+0.83*x[8]-0.87*x[9]+0.05*x[10]-0.66*x[11]-0.65*x[12]-0.67*x[13]+0.86*x[14]+0.6*x[15]-0.15*x[16]+0.33*x[17]-0.64*x[18]-0.88*x[19]+0.99*x[20]+0.66*x[21]+0.56*x[22]+0.65*x[23]-0.44*x[24]+0.83*x[25]+0.39*x[26]+0.23*x[27]+0.79*x[28]-0.6*x[29]-0.7*x[30]-0.28*x[31] == 0.37)
@constraint(m, e4, -0.93*x[2]-0.95*x[3]+0.37*x[4]+0.94*x[5]-0.31*x[6]-0.85*x[7]+0.78*x[8]-0.39*x[9]+0.78*x[10]-0.05*x[11]-0.22*x[12]-0.76*x[13]-0.85*x[14]+0.77*x[15]+0.44*x[16]+0.87*x[17]-0.22*x[18]+0.48*x[19]-0.96*x[20]+0.21*x[21]+0.2*x[22]+0.95*x[23]+0.4*x[24]-0.66*x[25]+0.16*x[26]+0.23*x[27]+0.27*x[28]+0.9*x[29]-0.06*x[30]+0.98*x[31] == 0.85)
@constraint(m, e5, -0.37*x[2]+0.41*x[3]+0.37*x[4]+0.46*x[5]-0.01*x[6]+0.67*x[7]+0.7*x[8]-0.51*x[9]-0.45*x[10]+0.25*x[11]+0.57*x[12]+0.11*x[13]-0.33*x[14]-0.58*x[15]-0.79*x[16]+0.3*x[17]-0.2*x[18]+0.53*x[19]-0.67*x[20]-0.2*x[21]-0.6*x[22]+0.48*x[23]+0.06*x[24]-0.62*x[25]+0.83*x[26]+0.3*x[27]-0.25*x[28]+0.54*x[29]+0.43*x[30]-0.58*x[31] == -0.47)
@constraint(m, e6, -0.62*x[2]+0.85*x[3]+0.95*x[4]-0.82*x[5]+0.22*x[6]+0.61*x[7]+0.97*x[8]-0.59*x[9]+0.37*x[10]-0.66*x[11]+0.19*x[12]-0.84*x[13]-0.68*x[14]-0.42*x[15]+0.3*x[16]+0.15*x[17]-0.49*x[18]+0.85*x[19]-0.72*x[20]-0.68*x[21]+0.08*x[22]-0.45*x[23]+0.85*x[24]+0.16*x[25]+0.29*x[26]+0.93*x[27]+0.15*x[28]+0.95*x[29]-0.01*x[30]-0.89*x[31] == -0.8)
@constraint(m, e7, -0.82*x[2]-0.47*x[3]+0.3*x[4]-0.2*x[5]+0.29*x[6]+0.23*x[7]-0.15*x[8]+0.81*x[9]-0.18*x[10]+0.62*x[12]-0.28*x[13]-0.76*x[14]-0.79*x[15]-0.69*x[16]-0.23*x[17]+0.64*x[18]-0.09*x[19]+0.39*x[20]+0.06*x[21]+0.04*x[22]-0.99*x[23]-0.14*x[24]+0.28*x[25]-0.28*x[26]+0.41*x[27]-0.72*x[28]-0.54*x[29]-0.55*x[30]+0.98*x[31] == -0.56)
@constraint(m, e8, -0.28*x[2]-0.75*x[3]+0.04*x[4]+0.89*x[5]-0.36*x[6]-0.48*x[7]+0.14*x[8]+0.31*x[9]+0.97*x[10]-0.79*x[11]-0.76*x[12]-0.06*x[13]-0.65*x[14]+0.61*x[15]+0.54*x[16]+0.45*x[17]-0.04*x[18]+0.63*x[19]+0.52*x[20]-0.01*x[21]-0.95*x[22]+0.78*x[23]-0.49*x[24]-0.6*x[25]-0.9*x[26]-0.12*x[27]+0.27*x[28]-0.8*x[29]-0.66*x[30] == -0.41)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
