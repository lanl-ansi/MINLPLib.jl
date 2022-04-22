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
@NLconstraint(m, e1, -(1.16*x[2]*x[4]-1.94*x[2]*x[3]+1.24*x[2]*x[5]+1.5*x[2]*x[6]+1.36*x[2]*x[7]-1.34*x[2]*x[9]-0.54*x[2]*x[10]+1.5*x[2]*x[11]+1.82*x[2]*x[12]+0.14*x[2]*x[13]-1.26*x[2]*x[14]+0.06*x[2]*x[15]-0.82*x[2]*x[16]+1.02*x[2]*x[17]-1.64*x[2]*x[18]-1.86*x[2]*x[19]-0.84*x[2]*x[20]+1.7*x[2]*x[21]+0.66*x[2]*x[22]+1.18*x[2]*x[23]-1.2*x[2]*x[24]+0.48*x[2]*x[25]-0.5*x[2]*x[26]-1.84*x[2]*x[27]+0.12*x[2]*x[28]+0.02*x[2]*x[29]+0.06*x[2]*x[30]+1.16*x[2]*x[31]+1.32*x[3]*x[5]-0.18*x[3]*x[4]+1.06*x[3]*x[6]+1.52*x[3]*x[8]+1.7*x[3]*x[9]-1.72*x[3]*x[11]-1.3*x[3]*x[12]+1.76*x[3]*x[13]+1.56*x[3]*x[14]+1.28*x[3]*x[15]+1.56*x[3]*x[17]-0.94*x[3]*x[18]+1.54*x[3]*x[19]-0.14*x[3]*x[20]+1.24*x[3]*x[21]+1.48*x[3]*x[22]+1.9*x[3]*x[23]+0.12*x[3]*x[24]-1.74*x[3]*x[25]-0.56*x[3]*x[26]-1.8*x[3]*x[27]-1.24*x[3]*x[28]-1.54*x[3]*x[29]-0.18*x[3]*x[30]+0.48*x[3]*x[31]+0.34*x[4]*x[6]-0.02*x[4]*x[7]-1.42*x[4]*x[8]-0.18*x[4]*x[9]-1.96*x[4]*x[10]-0.4*x[4]*x[11]-1.24*x[4]*x[12]-0.5*x[4]*x[13]+0.24*x[4]*x[14]-1.6*x[4]*x[15]+0.22*x[4]*x[16]-0.76*x[4]*x[17]-0.56*x[4]*x[18]+1.5*x[4]*x[19]+0.64*x[4]*x[21]+0.84*x[4]*x[22]-1.34*x[4]*x[23]-0.74*x[4]*x[24]+0.76*x[4]*x[25]+1.18*x[4]*x[26]+0.48*x[4]*x[27]-1.96*x[4]*x[28]-0.48*x[4]*x[29]+0.58*x[4]*x[30]+0.38*x[4]*x[31]+1.96*x[5]*x[7]-0.38*x[5]*x[6]-1.26*x[5]*x[8]+0.18*x[5]*x[9]+0.88*x[5]*x[10]-1.78*x[5]*x[11]-1.22*x[5]*x[12]+1.08*x[5]*x[13]-1.52*x[5]*x[14]+1.58*x[5]*x[15]-1.14*x[5]*x[16]+0.54*x[5]*x[17]-0.16*x[5]*x[18]+2*x[5]*x[19]+2*x[5]*x[20]+0.36*x[5]*x[21]+0.14*x[5]*x[22]+0.92*x[5]*x[23]+1.52*x[5]*x[24]+2*x[5]*x[25]-0.42*x[5]*x[26]+0.34*x[5]*x[27]-0.32*x[5]*x[28]-0.52*x[5]*x[29]-0.76*x[5]*x[30]-0.24*x[5]*x[31]+0.18*x[6]*x[8]-0.78*x[6]*x[7]+2*x[6]*x[9]-0.74*x[6]*x[10]-0.46*x[6]*x[11]+1.66*x[6]*x[12]+1.74*x[6]*x[13]-1.2*x[6]*x[14]+0.76*x[6]*x[15]+1.04*x[6]*x[16]-0.44*x[6]*x[17]+0.28*x[6]*x[18]+1.44*x[6]*x[19]-0.92*x[6]*x[20]+1.62*x[6]*x[21]-1.66*x[6]*x[22]-0.64*x[6]*x[23]-0.94*x[6]*x[24]-1.08*x[6]*x[25]+0.44*x[6]*x[26]-1.12*x[6]*x[27]+0.46*x[6]*x[28]-1.18*x[6]*x[29]-1.44*x[6]*x[30]+1.82*x[6]*x[31]+1.6*x[7]*x[8]+1.42*x[7]*x[9]-0.86*x[7]*x[10]+0.62*x[7]*x[11]+0.64*x[7]*x[12]+0.1*x[7]*x[13]+1.28*x[7]*x[15]+1.62*x[7]*x[16]+0.76*x[7]*x[17]+0.5*x[7]*x[18]-0.6*x[7]*x[19]-1.3*x[7]*x[20]+1.7*x[7]*x[21]+0.78*x[7]*x[22]-0.02*x[7]*x[23]-0.1*x[7]*x[24]+0.74*x[7]*x[25]-0.74*x[7]*x[26]+1.24*x[7]*x[27]-0.76*x[7]*x[28]-0.7*x[7]*x[29]-1.9*x[7]*x[30]-0.06*x[7]*x[31]+0.16*x[8]*x[9]+2*x[8]*x[10]+1.2*x[8]*x[11]-0.2*x[8]*x[13]-0.42*x[8]*x[14]+1.76*x[8]*x[15]+1.28*x[8]*x[17]+x[8]*x[18]-0.94*x[8]*x[19]+1.68*x[8]*x[20]-0.2*x[8]*x[21]+1.16*x[8]*x[22]+1.16*x[8]*x[23]-0.46*x[8]*x[24]-1.74*x[8]*x[25]+1.22*x[8]*x[26]+1.76*x[8]*x[27]+1.86*x[8]*x[29]-0.3*x[8]*x[30]-1.04*x[8]*x[31]+(-1.48*x[9]*x[10])-1.18*x[9]*x[11]+0.84*x[9]*x[12]-0.08*x[9]*x[13]+1.78*x[9]*x[14]-1.92*x[9]*x[15]+0.76*x[9]*x[16]-0.74*x[9]*x[17]-1.52*x[9]*x[18]+1.28*x[9]*x[19]+1.86*x[9]*x[20]+0.8*x[9]*x[21]-2*x[9]*x[22]-0.38*x[9]*x[23]+1.1*x[9]*x[24]-1.16*x[9]*x[25]+0.14*x[9]*x[26]+0.46*x[9]*x[27]+0.08*x[9]*x[28]-1.6*x[9]*x[29]-0.3*x[9]*x[30]-0.12*x[9]*x[31]+1.58*x[10]*x[12]-1.58*x[10]*x[11]+1.3*x[10]*x[13]+1.1*x[10]*x[14]+1.1*x[10]*x[15]+1.52*x[10]*x[16]+1.28*x[10]*x[17]+0.5*x[10]*x[18]+1.1*x[10]*x[19]+1.32*x[10]*x[20]-1.28*x[10]*x[21]-0.8*x[10]*x[22]-0.72*x[10]*x[23]-0.92*x[10]*x[24]-0.32*x[10]*x[25]+0.88*x[10]*x[26]-1.3*x[10]*x[27]+0.8*x[10]*x[28]-1.64*x[10]*x[30]-0.58*x[10]*x[31]+0.32*x[11]*x[13]-0.72*x[11]*x[12]+0.06*x[11]*x[14]-0.5*x[11]*x[15]+1.64*x[11]*x[16]+0.38*x[11]*x[17]+0.44*x[11]*x[18]+1.9*x[11]*x[19]+0.64*x[11]*x[21]-1.48*x[11]*x[22]-0.86*x[11]*x[23]-0.02*x[11]*x[24]+1.18*x[11]*x[25]+1.24*x[11]*x[26]-0.28*x[11]*x[27]-1.78*x[11]*x[28]+1.82*x[11]*x[29]+1.46*x[11]*x[30]-1.4*x[11]*x[31]+1.16*x[12]*x[13]-1.7*x[12]*x[14]-2*x[12]*x[15]-0.92*x[12]*x[16]+1.9*x[12]*x[17]-0.32*x[12]*x[18]-1.46*x[12]*x[19]-1.04*x[12]*x[20]+0.12*x[12]*x[21]+1.82*x[12]*x[22]-1.5*x[12]*x[23]-0.4*x[12]*x[25]-1.14*x[12]*x[26]-1.78*x[12]*x[27]-1.48*x[12]*x[28]+0.14*x[12]*x[29]-0.1*x[12]*x[30]+1.52*x[12]*x[31]+1.58*x[13]*x[15]-1.1*x[13]*x[14]+0.18*x[13]*x[16]-1.8*x[13]*x[17]-0.06*x[13]*x[18]+1.4*x[13]*x[19]+0.74*x[13]*x[20]+1.34*x[13]*x[21]-0.1*x[13]*x[22]+0.62*x[13]*x[23]-1.92*x[13]*x[25]-0.84*x[13]*x[26]-1.42*x[13]*x[27]-0.46*x[13]*x[28]+0.92*x[13]*x[29]-0.18*x[13]*x[30]+0.62*x[13]*x[31]+0.44*x[14]*x[15]+x[14]*x[16]+0.68*x[14]*x[17]-0.36*x[14]*x[18]+0.4*x[14]*x[19]-1.66*x[14]*x[20]-0.74*x[14]*x[21]+1.62*x[14]*x[22]-1.02*x[14]*x[23]-1.34*x[14]*x[24]-1.08*x[14]*x[25]+1.94*x[14]*x[26]+1.72*x[14]*x[27]-0.48*x[14]*x[28]-1.44*x[14]*x[29]-1.9*x[14]*x[30]+0.86*x[14]*x[31]+(-1.7*x[15]*x[16])-1.06*x[15]*x[17]+0.2*x[15]*x[18]-1.56*x[15]*x[19]-0.32*x[15]*x[20]-0.98*x[15]*x[21]+1.98*x[15]*x[22]-0.3*x[15]*x[23]+1.68*x[15]*x[24]-0.72*x[15]*x[25]-1.9*x[15]*x[26]-1.18*x[15]*x[27]+1.94*x[15]*x[28]-0.38*x[15]*x[29]+1.66*x[15]*x[30]+0.76*x[15]*x[31]+0.34*x[16]*x[18]-0.12*x[16]*x[17]-1.48*x[16]*x[19]+1.22*x[16]*x[20]+1.96*x[16]*x[21]-0.1*x[16]*x[22]+0.26*x[16]*x[23]+0.78*x[16]*x[24]+1.92*x[16]*x[25]+1.48*x[16]*x[26]-1.6*x[16]*x[27]+1.92*x[16]*x[28]-0.1*x[16]*x[29]+0.82*x[16]*x[30]-1.7*x[16]*x[31]+(-0.44*x[17]*x[18])-1.04*x[17]*x[19]-1.94*x[17]*x[20]-0.38*x[17]*x[21]-0.22*x[17]*x[22]+1.08*x[17]*x[23]-0.66*x[17]*x[24]+1.28*x[17]*x[25]+1.38*x[17]*x[26]-0.6*x[17]*x[27]-1.46*x[17]*x[28]+1.16*x[17]*x[29]-0.56*x[17]*x[30]-1.76*x[17]*x[31]+(-1.92*x[18]*x[19])-0.72*x[18]*x[20]-1.12*x[18]*x[21]-1.38*x[18]*x[22]-1.46*x[18]*x[23]+1.1*x[18]*x[24]-0.12*x[18]*x[25]+1.44*x[18]*x[26]+1.26*x[18]*x[27]+1.68*x[18]*x[28]-0.22*x[18]*x[29]+0.66*x[18]*x[30]-0.8*x[18]*x[31]+0.86*x[19]*x[20]+0.24*x[19]*x[21]+0.26*x[19]*x[22]-1.58*x[19]*x[23]-0.44*x[19]*x[24]-0.58*x[19]*x[25]+1.28*x[19]*x[26]-0.36*x[19]*x[27]+1.38*x[19]*x[28]+1.88*x[19]*x[29]+1.38*x[19]*x[30]-0.08*x[19]*x[31]+1.32*x[20]*x[21]+0.64*x[20]*x[22]+0.24*x[20]*x[23]-1.38*x[20]*x[24]-0.6*x[20]*x[25]-0.48*x[20]*x[26]-0.14*x[20]*x[27]+1.76*x[20]*x[28]+1.56*x[20]*x[29]-1.12*x[20]*x[30]+0.84*x[20]*x[31]+1.42*x[21]*x[22]+1.96*x[21]*x[23]+0.18*x[21]*x[24]+1.22*x[21]*x[25]+0.86*x[21]*x[26]-1.82*x[21]*x[27]+1.76*x[21]*x[28]-0.6*x[21]*x[29]-1.34*x[21]*x[30]-1.28*x[21]*x[31]+0.94*x[22]*x[24]-0.32*x[22]*x[23]+2*x[22]*x[25]-0.1*x[22]*x[26]+0.52*x[22]*x[27]-0.46*x[22]*x[28]-1.18*x[22]*x[29]-1.8*x[22]*x[30]-0.5*x[22]*x[31]+1.66*x[23]*x[24]-0.86*x[23]*x[25]-1.68*x[23]*x[26]-1.84*x[23]*x[27]-1.38*x[23]*x[29]+0.28*x[23]*x[30]-0.06*x[23]*x[31]+1.64*x[24]*x[25]-1.08*x[24]*x[26]-1.18*x[24]*x[27]-1.02*x[24]*x[28]-0.82*x[24]*x[29]+1.5*x[24]*x[30]-0.12*x[24]*x[31]+(-1.14*x[25]*x[26])-0.34*x[25]*x[27]+1.96*x[25]*x[28]-1.08*x[25]*x[29]-0.56*x[25]*x[30]+1.5*x[25]*x[31]+(-0.2*x[26]*x[27])-0.72*x[26]*x[28]+0.7*x[26]*x[29]-1.62*x[26]*x[30]-1.4*x[26]*x[31]+1.6*x[27]*x[28]-1.26*x[27]*x[29]+1.18*x[27]*x[30]-1.18*x[27]*x[31]+(-0.54*x[28]*x[29])-0.86*x[28]*x[30]-0.22*x[28]*x[31]+0.98*x[29]*x[30]-0.42*x[29]*x[31]+1.5*x[30]*x[31]+0.12*x[2]*x[2]+0.25*x[3]*x[3]+0.55*x[4]*x[4]-0.58*x[5]*x[5]+0.61*x[6]*x[6]-0.94*x[7]*x[7]-0.19*x[8]*x[8]-0.68*x[9]*x[9]-0.87*x[10]*x[10]-0.63*x[11]*x[11]-0.04*x[12]*x[12]-0.91*x[13]*x[13]+0.19*x[14]*x[14]-0.65*x[15]*x[15]+0.07*x[16]*x[16]+0.29*x[17]*x[17]+0.2*x[18]*x[18]+0.89*x[19]*x[19]+0.82*x[20]*x[20]-0.67*x[21]*x[21]-0.37*x[22]*x[22]+0.12*x[23]*x[23]-0.72*x[24]*x[24]+0.92*x[25]*x[25]-0.96*x[26]*x[26]-0.4*x[27]*x[27]-0.54*x[28]*x[28]-0.51*x[29]*x[29]-0.61*x[30]*x[30]+0.24*x[31]*x[31]+0.47*x[2]-0.38*x[3]+0.22*x[4]+0.88*x[5]-0.97*x[6]-0.63*x[7]-0.84*x[8]-0.13*x[9]-0.6*x[10]+0.39*x[11]-0.03*x[12]+0.09*x[13]+0.47*x[14]-0.7*x[15]+0.38*x[16]+0.77*x[17]-0.65*x[18]+0.97*x[20]-0.08*x[21]-0.3*x[22]+0.63*x[23]+0.49*x[24]-0.66*x[25]+0.21*x[26]+0.94*x[27]+0.16*x[28]+0.32*x[29]+0.43*x[30]-0.64*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.18*x[2]*x[3]-1.22*x[2]*x[4]-1.86*x[2]*x[5]-0.2*x[2]*x[6]-0.76*x[2]*x[7]-1.02*x[2]*x[8]-1.84*x[2]*x[9]-0.76*x[2]*x[11]+0.24*x[2]*x[12]+0.7*x[2]*x[13]+1.74*x[2]*x[14]-0.9*x[2]*x[15]-1.66*x[2]*x[16]+0.86*x[2]*x[17]+0.64*x[2]*x[18]-0.94*x[2]*x[19]+1.64*x[2]*x[20]-1.98*x[2]*x[21]-1.38*x[2]*x[22]-1.08*x[2]*x[23]+0.22*x[2]*x[24]+0.64*x[2]*x[25]+0.16*x[2]*x[26]+1.98*x[2]*x[27]+x[2]*x[28]-1.56*x[2]*x[29]-1.68*x[2]*x[30]+0.32*x[2]*x[31]+0.92*x[3]*x[4]+1.5*x[3]*x[5]+1.22*x[3]*x[6]-0.24*x[3]*x[7]-1.2*x[3]*x[8]-0.62*x[3]*x[9]-1.24*x[3]*x[10]+0.08*x[3]*x[11]+0.68*x[3]*x[12]-0.72*x[3]*x[13]-0.96*x[3]*x[14]-0.98*x[3]*x[15]-0.62*x[3]*x[16]+1.32*x[3]*x[17]+1.7*x[3]*x[18]-1.28*x[3]*x[19]+0.54*x[3]*x[20]+1.62*x[3]*x[21]-1.04*x[3]*x[22]-1.44*x[3]*x[23]+1.26*x[3]*x[24]-0.46*x[3]*x[25]-1.82*x[3]*x[26]+1.3*x[3]*x[27]-0.84*x[3]*x[28]+1.52*x[3]*x[29]+1.44*x[3]*x[30]+1.9*x[3]*x[31]+0.18*x[4]*x[5]-0.56*x[4]*x[6]-1.18*x[4]*x[7]+1.64*x[4]*x[8]-1.46*x[4]*x[9]+0.18*x[4]*x[10]+1.68*x[4]*x[11]-0.62*x[4]*x[12]+1.22*x[4]*x[13]+1.52*x[4]*x[14]-0.52*x[4]*x[15]-1.48*x[4]*x[16]+0.44*x[4]*x[17]+0.12*x[4]*x[18]-1.82*x[4]*x[19]-0.26*x[4]*x[20]+1.1*x[4]*x[21]-1.02*x[4]*x[22]+0.06*x[4]*x[23]-0.16*x[4]*x[24]+0.38*x[4]*x[25]-0.86*x[4]*x[26]+1.2*x[4]*x[27]-0.22*x[4]*x[28]+0.2*x[4]*x[29]+0.42*x[4]*x[30]-0.98*x[4]*x[31]+1.94*x[5]*x[6]-0.5*x[5]*x[7]+0.6*x[5]*x[8]-0.66*x[5]*x[9]-2*x[5]*x[10]+0.4*x[5]*x[11]-1.9*x[5]*x[12]+1.02*x[5]*x[13]-0.66*x[5]*x[14]+1.32*x[5]*x[15]-1.54*x[5]*x[17]-1.1*x[5]*x[18]+1.3*x[5]*x[19]+0.58*x[5]*x[20]-1.58*x[5]*x[21]+1.42*x[5]*x[22]-1.22*x[5]*x[23]+0.18*x[5]*x[24]+0.56*x[5]*x[25]-0.92*x[5]*x[26]-0.68*x[5]*x[27]+1.16*x[5]*x[28]-1.8*x[5]*x[29]-0.44*x[5]*x[30]-1.86*x[5]*x[31]+(-1.52*x[6]*x[7])-1.76*x[6]*x[8]-0.44*x[6]*x[9]+0.72*x[6]*x[10]-1.98*x[6]*x[11]+0.4*x[6]*x[12]-1.78*x[6]*x[13]+1.8*x[6]*x[14]-0.44*x[6]*x[15]-1.58*x[6]*x[16]+0.92*x[6]*x[17]-1.68*x[6]*x[18]+1.32*x[6]*x[19]+1.9*x[6]*x[20]+1.16*x[6]*x[21]-0.74*x[6]*x[22]+1.74*x[6]*x[23]+0.64*x[6]*x[24]-0.88*x[6]*x[25]-0.18*x[6]*x[26]-0.46*x[6]*x[27]-1.32*x[6]*x[28]+1.8*x[6]*x[29]-1.2*x[6]*x[30]-1.46*x[6]*x[31]+1.8*x[7]*x[9]-0.44*x[7]*x[8]-0.72*x[7]*x[10]+0.78*x[7]*x[11]-1.26*x[7]*x[12]+1.78*x[7]*x[13]+0.64*x[7]*x[14]-1.58*x[7]*x[15]+0.2*x[7]*x[16]+1.74*x[7]*x[17]+1.54*x[7]*x[19]+0.24*x[7]*x[20]+0.04*x[7]*x[21]-0.92*x[7]*x[22]+1.92*x[7]*x[24]+0.94*x[7]*x[25]+1.56*x[7]*x[26]+0.86*x[7]*x[27]-0.64*x[7]*x[28]+1.3*x[7]*x[29]+1.22*x[7]*x[30]+1.84*x[7]*x[31]+(-0.78*x[8]*x[9])-1.18*x[8]*x[10]-1.56*x[8]*x[11]+0.82*x[8]*x[12]-1.92*x[8]*x[13]-1.58*x[8]*x[14]+1.12*x[8]*x[15]+1.58*x[8]*x[16]+1.18*x[8]*x[17]+0.04*x[8]*x[18]-1.32*x[8]*x[19]-1.02*x[8]*x[20]-0.3*x[8]*x[21]+0.12*x[8]*x[22]-0.62*x[8]*x[23]+1.8*x[8]*x[24]-1.46*x[8]*x[25]-1.54*x[8]*x[26]-0.02*x[8]*x[27]-0.74*x[8]*x[28]-0.4*x[8]*x[29]+1.2*x[8]*x[30]-1.5*x[8]*x[31]+0.88*x[9]*x[10]+0.32*x[9]*x[11]-1.14*x[9]*x[12]-0.86*x[9]*x[13]+0.88*x[9]*x[14]+0.12*x[9]*x[15]+0.48*x[9]*x[16]+0.28*x[9]*x[17]+0.1*x[9]*x[18]-1.68*x[9]*x[19]+1.46*x[9]*x[20]-0.46*x[9]*x[22]+0.94*x[9]*x[23]-1.1*x[9]*x[24]-1.08*x[9]*x[25]-1.94*x[9]*x[26]+1.96*x[9]*x[27]+1.18*x[9]*x[29]+0.46*x[9]*x[30]-1.84*x[9]*x[31]+0.12*x[10]*x[12]-0.84*x[10]*x[11]-1.12*x[10]*x[13]-x[10]*x[14]+1.64*x[10]*x[15]+1.56*x[10]*x[16]+1.26*x[10]*x[17]-1.28*x[10]*x[18]+0.98*x[10]*x[19]-1.92*x[10]*x[20]+1.68*x[10]*x[21]+1.06*x[10]*x[22]-0.58*x[10]*x[23]-0.96*x[10]*x[24]+1.78*x[10]*x[25]-1.36*x[10]*x[26]+1.76*x[10]*x[27]-0.98*x[10]*x[28]+1.12*x[10]*x[29]-0.42*x[10]*x[30]+0.3*x[10]*x[31]+(-1.06*x[11]*x[12])-0.14*x[11]*x[13]-1.46*x[11]*x[14]+0.18*x[11]*x[15]+0.9*x[11]*x[16]+1.4*x[11]*x[17]-0.62*x[11]*x[18]+0.6*x[11]*x[19]-1.14*x[11]*x[20]-1.26*x[11]*x[22]+0.66*x[11]*x[23]+0.68*x[11]*x[24]-0.52*x[11]*x[25]-1.96*x[11]*x[26]+1.02*x[11]*x[27]-0.76*x[11]*x[28]+0.16*x[11]*x[29]-0.66*x[11]*x[30]-1.02*x[11]*x[31]+0.02*x[12]*x[14]-1.24*x[12]*x[13]+2*x[12]*x[15]+1.3*x[12]*x[16]+1.18*x[12]*x[17]+0.36*x[12]*x[18]+1.34*x[12]*x[19]-1.08*x[12]*x[20]-1.58*x[12]*x[21]+0.84*x[12]*x[22]+1.8*x[12]*x[23]+1.48*x[12]*x[24]+0.1*x[12]*x[25]-0.34*x[12]*x[26]-0.2*x[12]*x[27]+1.78*x[12]*x[28]+1.14*x[12]*x[29]-0.06*x[12]*x[31]+1.94*x[13]*x[15]-1.52*x[13]*x[14]+1.4*x[13]*x[16]+0.74*x[13]*x[17]+0.54*x[13]*x[18]-0.92*x[13]*x[19]-0.96*x[13]*x[20]+2*x[13]*x[21]-0.42*x[13]*x[22]+1.38*x[13]*x[23]+0.7*x[13]*x[24]+0.94*x[13]*x[25]+1.94*x[13]*x[26]-0.78*x[13]*x[27]-1.94*x[13]*x[28]+0.7*x[13]*x[29]-1.06*x[13]*x[30]+0.32*x[14]*x[15]+1.02*x[14]*x[16]-0.4*x[14]*x[17]-0.42*x[14]*x[18]+1.9*x[14]*x[19]-1.6*x[14]*x[20]+1.18*x[14]*x[21]-0.82*x[14]*x[22]-1.48*x[14]*x[24]-1.26*x[14]*x[25]+1.86*x[14]*x[26]-1.74*x[14]*x[27]+0.58*x[14]*x[28]-1.9*x[14]*x[29]-1.2*x[14]*x[30]-0.56*x[14]*x[31]+1.96*x[15]*x[16]+0.6*x[15]*x[17]+0.52*x[15]*x[18]+0.98*x[15]*x[19]-1.74*x[15]*x[20]+0.58*x[15]*x[21]-0.34*x[15]*x[22]-1.24*x[15]*x[23]-0.48*x[15]*x[24]-0.16*x[15]*x[25]+1.76*x[15]*x[26]-0.9*x[15]*x[27]+0.9*x[15]*x[28]-1.12*x[15]*x[29]-0.5*x[15]*x[30]+1.7*x[15]*x[31]+0.28*x[16]*x[18]-0.56*x[16]*x[17]+1.3*x[16]*x[19]-0.8*x[16]*x[20]-1.04*x[16]*x[21]-0.22*x[16]*x[22]+1.28*x[16]*x[23]+0.88*x[16]*x[24]+1.04*x[16]*x[25]+0.62*x[16]*x[26]-0.56*x[16]*x[27]-0.54*x[16]*x[28]-1.82*x[16]*x[29]-0.54*x[16]*x[30]+0.98*x[16]*x[31]+(-0.04*x[17]*x[18])-1.74*x[17]*x[19]-0.46*x[17]*x[20]-1.74*x[17]*x[21]+1.56*x[17]*x[22]-1.58*x[17]*x[23]-0.62*x[17]*x[24]-0.02*x[17]*x[25]-1.5*x[17]*x[27]+1.68*x[17]*x[28]+1.22*x[17]*x[29]+0.58*x[17]*x[30]-1.1*x[17]*x[31]+1.58*x[18]*x[20]-1.32*x[18]*x[19]-0.96*x[18]*x[22]+0.12*x[18]*x[23]-1.28*x[18]*x[24]+1.12*x[18]*x[25]-1.84*x[18]*x[26]+0.24*x[18]*x[27]+0.88*x[18]*x[28]+1.56*x[18]*x[29]+0.38*x[18]*x[30]-1.82*x[18]*x[31]+(-1.26*x[19]*x[20])-0.72*x[19]*x[21]-0.52*x[19]*x[22]-1.74*x[19]*x[23]-1.76*x[19]*x[24]-1.38*x[19]*x[25]-1.54*x[19]*x[26]+0.58*x[19]*x[27]-1.32*x[19]*x[28]-0.04*x[19]*x[29]-0.14*x[19]*x[30]-0.2*x[19]*x[31]+0.06*x[20]*x[22]-1.58*x[20]*x[21]-1.54*x[20]*x[23]-0.3*x[20]*x[24]+0.06*x[20]*x[25]+0.6*x[20]*x[26]+0.74*x[20]*x[27]-0.68*x[20]*x[28]-1.82*x[20]*x[29]-1.3*x[20]*x[30]-1.26*x[20]*x[31]+0.92*x[21]*x[23]-1.26*x[21]*x[22]-1.1*x[21]*x[24]-0.54*x[21]*x[25]-0.08*x[21]*x[26]+0.16*x[21]*x[27]+1.9*x[21]*x[28]+0.16*x[21]*x[30]+0.08*x[21]*x[31]+0.36*x[22]*x[23]-0.58*x[22]*x[24]-0.32*x[22]*x[25]+0.36*x[22]*x[26]-1.2*x[22]*x[27]-1.92*x[22]*x[28]+1.16*x[22]*x[29]-1.84*x[22]*x[30]+1.22*x[23]*x[25]-0.18*x[23]*x[24]+1.8*x[23]*x[26]+0.24*x[23]*x[27]+0.34*x[23]*x[28]+0.54*x[23]*x[29]-1.84*x[23]*x[30]-0.26*x[23]*x[31]+1.08*x[24]*x[25]-1.06*x[24]*x[26]-1.64*x[24]*x[28]-1.6*x[24]*x[29]+0.96*x[24]*x[30]+1.84*x[25]*x[27]-0.64*x[25]*x[26]+1.62*x[25]*x[28]+0.16*x[25]*x[29]-0.98*x[25]*x[30]-1.62*x[25]*x[31]+1.36*x[26]*x[27]-1.16*x[26]*x[28]-x[26]*x[29]+1.64*x[26]*x[30]+1.68*x[26]*x[31]+1.8*x[27]*x[29]-0.68*x[27]*x[28]-0.74*x[27]*x[30]+1.18*x[27]*x[31]+0.36*x[28]*x[30]-0.48*x[28]*x[31]+(-0.38*x[29]*x[30])-0.6*x[29]*x[31]-0.72*x[30]*x[31]+0.11*x[3]*x[3]-0.47*x[2]*x[2]+0.26*x[4]*x[4]+0.7*x[5]*x[5]-0.43*x[6]*x[6]-0.51*x[7]*x[7]+0.25*x[8]*x[8]-0.6*x[9]*x[9]-0.8*x[10]*x[10]-0.41*x[11]*x[11]+0.26*x[12]*x[12]+0.66*x[13]*x[13]+0.28*x[14]*x[14]-0.81*x[15]*x[15]+0.39*x[16]*x[16]+0.96*x[17]*x[17]-0.07*x[18]*x[18]+0.81*x[19]*x[19]+0.95*x[20]*x[20]-0.93*x[21]*x[21]-0.75*x[22]*x[22]-0.16*x[23]*x[23]-0.26*x[24]*x[24]-0.63*x[25]*x[25]-0.97*x[26]*x[26]-0.79*x[27]*x[27]-0.6*x[28]*x[28]+0.33*x[29]*x[29]+0.71*x[30]*x[30]-0.46*x[31]*x[31]+0.72*x[2]-0.44*x[3]-0.23*x[4]+0.22*x[5]-0.29*x[6]+0.66*x[7]+0.07*x[8]-0.65*x[9]-0.84*x[10]-0.88*x[11]+0.94*x[12]-0.12*x[13]-0.97*x[14]-0.65*x[15]-0.4*x[16]-0.88*x[17]-0.93*x[18]-0.28*x[19]-0.4*x[20]-0.12*x[21]+0.23*x[22]-0.21*x[23]-0.8*x[24]+0.61*x[25]-0.75*x[26]-0.39*x[27]-0.27*x[28]-0.68*x[29]+0.58*x[30]-0.53*x[31] <= 6.32)
@constraint(m, e3, 0.49*x[2]+0.51*x[3]+0.36*x[4]+0.34*x[5]+0.61*x[6]-0.21*x[7]-0.97*x[8]+0.42*x[9]+0.17*x[10]-0.05*x[11]-0.91*x[12]-0.94*x[13]-0.24*x[14]+0.65*x[15]+0.29*x[16]-0.67*x[17]-0.79*x[18]-0.2*x[19]+0.95*x[20]+0.98*x[21]+0.45*x[22]+0.79*x[23]+0.32*x[24]-0.55*x[25]+0.9*x[26]-0.2*x[27]+0.92*x[28]+0.58*x[29]-0.58*x[30]-0.35*x[31] == 0.96)
@constraint(m, e4, 0.32*x[2]-0.12*x[3]-0.09*x[4]+0.09*x[5]+0.96*x[6]+0.64*x[7]+0.97*x[8]-0.4*x[9]+0.96*x[10]-0.38*x[11]-0.19*x[12]+0.88*x[13]+0.85*x[14]-0.52*x[15]-0.68*x[16]+0.98*x[18]+0.51*x[19]-0.99*x[20]+0.33*x[21]+0.02*x[22]-0.09*x[23]+0.02*x[24]+0.44*x[25]+0.31*x[26]-0.97*x[27]+0.83*x[28]-0.91*x[29]+0.64*x[30]-0.02*x[31] == -0.65)
@constraint(m, e5, -0.48*x[2]+0.8*x[3]+0.73*x[4]+0.88*x[5]+0.76*x[6]-0.76*x[7]+0.32*x[8]+0.89*x[9]+0.59*x[10]-0.01*x[11]-0.16*x[12]-0.58*x[13]+0.52*x[14]+0.13*x[15]-0.39*x[16]+0.81*x[17]-0.98*x[18]-0.1*x[19]-0.02*x[20]+0.5*x[21]-0.86*x[22]-0.4*x[23]-0.47*x[24]-0.25*x[25]+0.07*x[26]-0.85*x[27]+0.52*x[28]-0.3*x[29]-0.12*x[30]-0.03*x[31] == 0.48)
@constraint(m, e6, -0.33*x[2]-0.19*x[3]-0.96*x[4]+0.55*x[5]+0.49*x[6]-0.32*x[7]-0.68*x[8]+0.42*x[9]+0.98*x[10]+0.34*x[11]+0.68*x[12]-0.67*x[13]+0.04*x[14]-0.18*x[15]+0.51*x[16]-0.1*x[17]+0.86*x[18]-0.49*x[19]+0.33*x[20]-0.78*x[21]-0.45*x[22]-0.22*x[23]+0.7*x[24]-0.37*x[25]-0.55*x[26]-0.91*x[28]-0.93*x[29]+0.87*x[30]-0.14*x[31] == -0.45)
@constraint(m, e7, -0.83*x[2]-0.27*x[3]+0.59*x[4]-0.85*x[5]+0.5*x[6]+0.08*x[7]-0.38*x[8]-0.49*x[9]+0.25*x[10]+0.05*x[11]-0.43*x[12]+0.38*x[13]+0.84*x[14]-0.35*x[15]-0.33*x[16]-0.3*x[17]+0.86*x[18]-0.29*x[19]-0.75*x[20]+0.76*x[21]+0.46*x[22]-0.44*x[23]-0.48*x[24]+0.51*x[25]+0.6*x[26]+0.9*x[27]-0.71*x[28]-0.64*x[29]+0.09*x[30]-0.48*x[31] == 0.72)
@constraint(m, e8, -x[2]+0.26*x[3]+0.51*x[4]-0.83*x[5]-0.78*x[6]+0.87*x[7]-0.89*x[8]+0.12*x[9]-0.09*x[10]+0.55*x[11]-0.75*x[12]+0.1*x[13]+0.03*x[14]+0.98*x[15]+0.58*x[16]+0.52*x[17]-0.38*x[18]-0.25*x[19]+0.56*x[20]-0.63*x[21]+0.66*x[22]+0.34*x[23]-0.45*x[24]+0.3*x[25]-0.3*x[26]-0.71*x[27]-0.69*x[28]+0.41*x[29]+0.43*x[30]-0.46*x[31] == 0.39)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
