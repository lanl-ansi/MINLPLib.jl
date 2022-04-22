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
@NLconstraint(m, e1, -(1.46*x[2]*x[8]-0.46*x[2]*x[7]-1.2*x[2]*x[9]-0.16*x[2]*x[13]+0.46*x[2]*x[17]+0.74*x[2]*x[21]-0.38*x[2]*x[22]+1.78*x[2]*x[31]+1.68*x[3]*x[5]+1.98*x[3]*x[7]+0.52*x[3]*x[14]+1.08*x[3]*x[15]+1.78*x[3]*x[23]+0.6*x[3]*x[26]-0.04*x[3]*x[28]-0.02*x[3]*x[29]+0.24*x[4]*x[10]-1.58*x[4]*x[7]+1.1*x[4]*x[11]+0.72*x[4]*x[14]+1.84*x[4]*x[20]+0.02*x[4]*x[25]+1.6*x[5]*x[21]-0.46*x[5]*x[10]+0.92*x[5]*x[22]-0.2*x[5]*x[24]+0.18*x[5]*x[26]+(-0.64*x[6]*x[7])-1.88*x[6]*x[8]+0.66*x[6]*x[11]-x[6]*x[13]+1.42*x[6]*x[14]+0.08*x[6]*x[19]+1.7*x[6]*x[26]+1.4*x[7]*x[23]-0.86*x[7]*x[9]-1.36*x[7]*x[26]+0.04*x[7]*x[29]+1.08*x[8]*x[11]-0.4*x[8]*x[10]-1.96*x[8]*x[12]+0.62*x[8]*x[14]+1.26*x[8]*x[21]-1.36*x[8]*x[23]-0.34*x[8]*x[25]-0.58*x[8]*x[29]+1.42*x[9]*x[12]+1.44*x[9]*x[15]+0.08*x[9]*x[19]+0.88*x[9]*x[23]+0.76*x[9]*x[27]+0.88*x[9]*x[30]+0.46*x[9]*x[31]+1.28*x[10]*x[12]+0.3*x[10]*x[13]-1.18*x[10]*x[19]-1.98*x[10]*x[21]-1.72*x[10]*x[23]+1.2*x[10]*x[24]-1.66*x[10]*x[28]+(-0.94*x[11]*x[21])-1.7*x[11]*x[27]-0.98*x[11]*x[28]+0.3*x[12]*x[30]-1.8*x[12]*x[26]+1.02*x[13]*x[21]+1.42*x[13]*x[22]-0.5*x[13]*x[23]+0.62*x[13]*x[27]+0.96*x[13]*x[28]+1.18*x[14]*x[26]-1.34*x[14]*x[21]+1.96*x[14]*x[30]-0.8*x[15]*x[23]+0.6*x[16]*x[17]+1.68*x[16]*x[22]+0.9*x[16]*x[25]-0.82*x[16]*x[28]-1.4*x[16]*x[29]+0.28*x[16]*x[30]+0.56*x[17]*x[22]-1.64*x[17]*x[21]-1.98*x[17]*x[23]+1.28*x[17]*x[25]+0.94*x[17]*x[30]+(-0.68*x[18]*x[23])-1.68*x[18]*x[29]-1.7*x[18]*x[31]+0.54*x[19]*x[23]-1.36*x[19]*x[20]+1.1*x[19]*x[30]+0.62*x[20]*x[26]-1.18*x[20]*x[27]+0.34*x[21]*x[23]+1.66*x[22]*x[31]+1.24*x[23]*x[26]-1.52*x[23]*x[24]+1.88*x[23]*x[27]-1.46*x[23]*x[29]-1.84*x[24]*x[28]+0.32*x[25]*x[27]-1.32*x[25]*x[30]+0.14*x[26]*x[27]-0.8*x[26]*x[29]+x[27]*x[30]-1.6*x[28]*x[29]+0.97*x[5]*x[5]-0.12*x[12]*x[12]+0.94*x[13]*x[13]-0.97*x[18]*x[18]-0.77*x[26]*x[26]+0.44*x[2]-0.71*x[3]-0.07*x[4]-0.86*x[5]-0.05*x[6]+0.35*x[7]+0.24*x[8]-0.17*x[9]+0.88*x[10]+0.29*x[11]+0.23*x[12]-0.95*x[13]+0.93*x[14]+0.66*x[15]-0.22*x[16]-0.83*x[17]+0.65*x[18]+0.03*x[19]-0.47*x[20]+0.89*x[21]-0.54*x[22]-0.73*x[23]-0.58*x[24]+0.85*x[25]+0.69*x[26]-0.81*x[27]-0.33*x[28]-0.61*x[29]-0.26*x[30]-0.52*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.3*x[2]*x[6]-1.36*x[2]*x[7]+0.18*x[2]*x[13]+0.48*x[2]*x[14]+x[2]*x[18]-1.14*x[2]*x[19]+1.3*x[2]*x[20]-0.08*x[2]*x[22]-1.34*x[2]*x[25]+0.2*x[2]*x[27]+(-1.18*x[3]*x[8])-0.36*x[3]*x[16]+1.26*x[3]*x[26]+1.26*x[4]*x[5]+1.74*x[4]*x[6]-1.7*x[4]*x[8]-0.58*x[4]*x[14]+1.86*x[4]*x[15]+1.54*x[4]*x[19]-1.4*x[4]*x[22]-0.68*x[4]*x[28]+1.28*x[4]*x[29]+1.72*x[4]*x[30]+(-1.2*x[5]*x[8])-0.56*x[5]*x[14]-0.54*x[5]*x[18]-1.54*x[5]*x[19]-1.46*x[5]*x[20]+1.8*x[5]*x[27]-0.64*x[5]*x[30]+(-x[6]*x[8])-0.22*x[6]*x[10]-0.76*x[6]*x[13]-1.66*x[6]*x[15]-1.64*x[6]*x[17]-1.42*x[6]*x[23]+1.6*x[6]*x[24]+1.8*x[6]*x[25]+1.56*x[7]*x[15]+0.3*x[7]*x[18]-1.18*x[7]*x[20]+1.64*x[7]*x[23]-1.88*x[7]*x[27]+1.34*x[7]*x[30]+1.18*x[8]*x[10]-1.34*x[8]*x[9]-0.6*x[8]*x[15]+0.86*x[8]*x[17]+(-0.04*x[9]*x[10])-1.78*x[9]*x[16]-0.62*x[9]*x[17]+1.36*x[9]*x[20]+1.28*x[9]*x[28]-1.9*x[9]*x[30]-0.54*x[9]*x[31]+0.04*x[10]*x[20]-1.46*x[10]*x[19]-0.96*x[10]*x[22]-0.46*x[10]*x[25]+(-0.6*x[11]*x[13])-0.08*x[11]*x[14]+1.04*x[11]*x[19]-0.26*x[11]*x[26]+0.8*x[12]*x[17]-1.52*x[12]*x[18]+1.94*x[12]*x[27]+(-0.46*x[13]*x[15])-1.5*x[13]*x[25]+1.42*x[13]*x[30]-0.8*x[13]*x[31]+(-2*x[14]*x[19])-0.96*x[14]*x[23]-0.22*x[15]*x[27]+0.96*x[16]*x[27]-0.9*x[16]*x[20]-1.64*x[16]*x[29]-0.5*x[16]*x[31]+0.26*x[17]*x[26]-1.52*x[17]*x[27]+0.92*x[17]*x[28]-0.12*x[17]*x[29]+0.68*x[17]*x[30]+0.1*x[18]*x[22]-1.66*x[18]*x[21]-1.64*x[18]*x[23]+1.76*x[18]*x[25]-0.4*x[18]*x[27]+1.32*x[18]*x[30]+1.36*x[18]*x[31]+1.12*x[19]*x[29]+0.16*x[20]*x[21]-1.32*x[20]*x[24]+0.34*x[20]*x[27]+0.36*x[23]*x[26]+1.54*x[23]*x[27]-x[24]*x[28]+1.98*x[25]*x[29]-0.32*x[25]*x[27]+1.88*x[26]*x[27]-1.46*x[26]*x[28]-0.8*x[27]*x[30]+0.79*x[7]*x[7]-0.27*x[5]*x[5]-0.45*x[9]*x[9]+0.4*x[10]*x[10]+0.99*x[12]*x[12]-0.58*x[13]*x[13]-0.22*x[15]*x[15]-0.16*x[18]*x[18]-0.16*x[19]*x[19]-0.43*x[20]*x[20]-0.32*x[29]*x[29]+0.45*x[30]*x[30]-0.56*x[2]-0.24*x[3]-0.03*x[4]-0.5*x[5]+0.63*x[6]-0.97*x[7]-0.2*x[8]-0.51*x[9]-0.22*x[10]+0.37*x[11]+0.52*x[12]+0.96*x[13]-0.68*x[14]+0.02*x[15]+0.2*x[16]+0.46*x[17]-0.91*x[18]+0.46*x[19]-0.75*x[20]-0.79*x[21]+0.92*x[22]+0.83*x[23]+0.41*x[24]-0.66*x[25]-0.97*x[26]-0.45*x[27]+0.07*x[28]+0.83*x[29]+0.26*x[30]-0.34*x[31] <= 41.98)
@NLconstraint(m, e3, 1.04*x[2]*x[6]-1.02*x[2]*x[5]+1.48*x[2]*x[9]+0.28*x[2]*x[15]+0.4*x[2]*x[16]+1.48*x[2]*x[19]-0.12*x[2]*x[20]-0.08*x[2]*x[26]-1.12*x[2]*x[30]+(-1.28*x[3]*x[4])-0.98*x[3]*x[10]+1.68*x[3]*x[13]+1.96*x[3]*x[15]+1.18*x[3]*x[16]-1.5*x[3]*x[20]+0.58*x[3]*x[21]+0.86*x[3]*x[30]+(-1.92*x[4]*x[8])-1.1*x[4]*x[10]+1.26*x[4]*x[12]+0.54*x[4]*x[13]+0.18*x[4]*x[14]+0.46*x[4]*x[18]+1.24*x[4]*x[20]+1.2*x[4]*x[24]+1.16*x[4]*x[26]+0.64*x[4]*x[27]-1.02*x[4]*x[31]+1.2*x[5]*x[11]+1.94*x[5]*x[15]+0.06*x[5]*x[16]+1.02*x[5]*x[17]-0.68*x[5]*x[22]+1.62*x[5]*x[28]+0.18*x[5]*x[29]+0.16*x[6]*x[16]-0.52*x[6]*x[9]+1.56*x[6]*x[21]-x[6]*x[22]+0.76*x[6]*x[25]+0.6*x[7]*x[11]-0.2*x[7]*x[9]-0.22*x[7]*x[14]-0.96*x[7]*x[16]+1.3*x[7]*x[19]-1.22*x[7]*x[23]-1.12*x[7]*x[24]-0.62*x[7]*x[28]+0.74*x[8]*x[12]+0.58*x[8]*x[14]-0.84*x[8]*x[15]-0.94*x[8]*x[24]-1.72*x[8]*x[28]-0.38*x[8]*x[29]+(-1.08*x[9]*x[15])-1.56*x[9]*x[16]-0.92*x[9]*x[23]+0.88*x[10]*x[23]-0.72*x[10]*x[13]+1.38*x[10]*x[30]+0.52*x[11]*x[12]+0.68*x[11]*x[13]+1.44*x[11]*x[15]-1.88*x[11]*x[17]+0.14*x[11]*x[23]-0.56*x[11]*x[27]+1.26*x[12]*x[14]-0.24*x[12]*x[13]+0.94*x[12]*x[27]+0.42*x[12]*x[31]+1.7*x[13]*x[17]-1.08*x[13]*x[16]+0.06*x[13]*x[28]-0.62*x[13]*x[30]+1.32*x[14]*x[20]+0.2*x[15]*x[21]-0.68*x[15]*x[27]+1.9*x[15]*x[29]+(-1.34*x[16]*x[19])-0.36*x[16]*x[24]+1.54*x[16]*x[26]-1.14*x[16]*x[28]+0.8*x[16]*x[30]+(-1.68*x[17]*x[24])-1.28*x[17]*x[26]-1.04*x[17]*x[28]+1.68*x[18]*x[23]-0.4*x[18]*x[29]+0.98*x[18]*x[30]-0.24*x[18]*x[31]+(-0.04*x[19]*x[23])-0.92*x[19]*x[25]-1.62*x[19]*x[30]+1.74*x[20]*x[21]-1.14*x[20]*x[23]+0.36*x[20]*x[27]+0.5*x[20]*x[28]-0.78*x[21]*x[30]-1.74*x[23]*x[31]+1.52*x[24]*x[25]-1.54*x[24]*x[29]+0.8*x[25]*x[30]-0.5*x[26]*x[29]-1.8*x[29]*x[31]-0.64*x[30]*x[31]+0.16*x[5]*x[5]-0.47*x[3]*x[3]-0.12*x[7]*x[7]+0.57*x[9]*x[9]-0.22*x[13]*x[13]-0.58*x[23]*x[23]+0.54*x[28]*x[28]+0.42*x[2]-0.11*x[3]+0.64*x[4]-0.4*x[5]-0.39*x[6]+0.14*x[7]-0.3*x[8]+0.4*x[9]+0.75*x[10]+0.97*x[11]+0.53*x[12]-0.3*x[13]+0.58*x[14]-0.51*x[15]-0.85*x[16]-0.27*x[17]-0.39*x[18]+0.56*x[19]+0.83*x[20]+0.74*x[21]+0.05*x[22]+0.94*x[23]+0.31*x[24]+0.73*x[25]-0.81*x[26]+0.62*x[27]+0.82*x[28]+0.6*x[29]-0.92*x[30]+0.31*x[31] <= 27.04)
@NLconstraint(m, e4, 1.18*x[2]*x[19]+1.74*x[2]*x[29]+1.42*x[2]*x[31]+1.52*x[3]*x[17]-0.48*x[3]*x[5]+1.82*x[3]*x[18]-0.16*x[3]*x[24]-1.66*x[3]*x[25]+0.02*x[3]*x[29]+0.06*x[3]*x[30]+(-1.38*x[4]*x[6])-0.56*x[4]*x[7]+0.22*x[4]*x[8]-0.96*x[4]*x[14]+0.36*x[4]*x[18]+1.16*x[4]*x[20]+0.1*x[4]*x[29]+x[5]*x[6]+1.84*x[5]*x[7]+0.76*x[5]*x[9]+1.06*x[5]*x[12]-1.96*x[5]*x[25]+1.56*x[6]*x[15]-1.48*x[6]*x[20]+0.62*x[7]*x[12]-1.28*x[7]*x[11]-1.64*x[7]*x[15]+1.6*x[7]*x[18]+1.5*x[7]*x[20]+1.8*x[7]*x[25]+(-0.16*x[8]*x[9])-0.16*x[8]*x[18]+0.58*x[8]*x[19]-0.96*x[8]*x[21]-1.12*x[8]*x[22]+1.4*x[8]*x[25]-1.36*x[8]*x[27]-0.4*x[8]*x[29]+1.96*x[9]*x[12]-0.74*x[9]*x[13]-1.88*x[9]*x[21]+1.44*x[9]*x[23]-1.38*x[9]*x[24]+1.24*x[9]*x[25]+2*x[9]*x[26]+1.56*x[9]*x[27]+0.08*x[10]*x[13]+1.84*x[10]*x[14]+1.38*x[10]*x[16]+0.32*x[10]*x[21]-0.58*x[10]*x[24]-0.36*x[10]*x[25]+0.2*x[10]*x[31]+0.62*x[11]*x[12]-1.52*x[11]*x[19]-x[11]*x[20]-0.2*x[11]*x[21]-1.62*x[11]*x[22]-1.2*x[11]*x[24]-1.24*x[11]*x[31]+0.22*x[12]*x[16]-0.2*x[12]*x[19]-1.5*x[12]*x[22]+0.02*x[12]*x[23]-0.1*x[12]*x[24]-0.68*x[12]*x[25]-1.06*x[12]*x[27]+(-1.72*x[14]*x[19])-0.3*x[14]*x[20]-1.54*x[14]*x[28]-0.28*x[14]*x[29]+0.94*x[15]*x[22]-0.58*x[15]*x[25]-1.02*x[15]*x[26]+1.44*x[15]*x[31]+(-1.92*x[16]*x[21])-1.14*x[16]*x[23]+1.94*x[16]*x[27]-0.94*x[16]*x[31]+0.38*x[17]*x[20]-0.68*x[17]*x[19]-1.86*x[17]*x[21]+0.46*x[17]*x[22]+0.12*x[17]*x[30]+1.6*x[17]*x[31]+(-0.5*x[18]*x[28])-1.5*x[18]*x[30]+0.46*x[19]*x[20]-0.32*x[19]*x[21]-0.2*x[19]*x[23]+0.94*x[19]*x[27]+0.68*x[19]*x[31]+0.78*x[20]*x[26]-0.52*x[20]*x[22]+1.1*x[20]*x[31]-1.42*x[21]*x[31]+1.62*x[22]*x[26]+1.06*x[22]*x[29]+1.26*x[23]*x[24]+1.2*x[23]*x[25]+0.32*x[24]*x[27]+0.42*x[25]*x[27]+1.06*x[25]*x[30]-0.26*x[28]*x[31]-0.54*x[29]*x[30]+0.62*x[7]*x[7]+0.53*x[10]*x[10]-0.41*x[14]*x[14]+0.41*x[16]*x[16]-0.78*x[25]*x[25]+0.29*x[26]*x[26]-0.59*x[2]+0.73*x[3]+0.1*x[4]-0.64*x[5]+0.83*x[6]+0.84*x[7]+0.4*x[8]+0.47*x[9]-0.07*x[10]+0.3*x[11]+0.58*x[12]+0.88*x[13]+0.39*x[14]-0.44*x[15]-0.88*x[16]+0.3*x[17]+0.69*x[18]-0.83*x[19]+0.36*x[20]-0.78*x[21]-0.33*x[22]+0.76*x[23]-0.02*x[24]-0.75*x[25]-0.54*x[26]-0.63*x[27]-0.81*x[28]-0.44*x[29]-0.38*x[30]-0.61*x[31] <= 77.27)
@NLconstraint(m, e5, 1.68*x[2]*x[7]-0.74*x[2]*x[6]+0.18*x[2]*x[10]+0.9*x[2]*x[24]-1.26*x[2]*x[30]+1.06*x[2]*x[31]+0.44*x[3]*x[7]-1.78*x[3]*x[5]+0.2*x[3]*x[26]-1.14*x[3]*x[28]-1.96*x[3]*x[31]+0.82*x[4]*x[5]+1.84*x[4]*x[16]+1.48*x[4]*x[18]-1.34*x[4]*x[21]+1.28*x[4]*x[25]+0.84*x[4]*x[29]+0.52*x[5]*x[9]-1.34*x[5]*x[21]+1.98*x[5]*x[29]+1.42*x[6]*x[8]-1.08*x[6]*x[12]-1.54*x[6]*x[19]-0.2*x[6]*x[23]+1.16*x[6]*x[24]+0.62*x[6]*x[30]+0.32*x[7]*x[8]+1.22*x[7]*x[14]-1.12*x[7]*x[17]-0.82*x[7]*x[22]-1.2*x[7]*x[25]+0.02*x[7]*x[26]+1.98*x[8]*x[13]+0.88*x[8]*x[22]+0.34*x[8]*x[23]+0.34*x[8]*x[26]-0.42*x[8]*x[30]+(-0.82*x[9]*x[12])-1.98*x[9]*x[16]+0.86*x[9]*x[21]+0.78*x[9]*x[22]-1.02*x[9]*x[29]+(-0.84*x[10]*x[11])-0.86*x[10]*x[12]+1.66*x[10]*x[16]-0.92*x[10]*x[21]-1.22*x[10]*x[23]-0.1*x[10]*x[26]-0.12*x[10]*x[28]+0.18*x[10]*x[30]+1.68*x[11]*x[14]-1.12*x[11]*x[12]-0.24*x[11]*x[20]+0.3*x[11]*x[21]+0.04*x[11]*x[24]-1.82*x[11]*x[25]+0.14*x[11]*x[30]+0.3*x[12]*x[18]-1.34*x[12]*x[19]+0.58*x[12]*x[23]+1.06*x[12]*x[29]+(-1.7*x[13]*x[14])-1.88*x[13]*x[15]+1.8*x[13]*x[21]+x[13]*x[24]-1.38*x[13]*x[27]+(-0.76*x[14]*x[18])-1.14*x[14]*x[20]-0.14*x[14]*x[30]+(-0.18*x[15]*x[17])-0.6*x[15]*x[19]+0.2*x[15]*x[24]+1.62*x[15]*x[28]+0.04*x[15]*x[30]-0.5*x[15]*x[31]+0.04*x[16]*x[19]-1.72*x[16]*x[21]+1.88*x[16]*x[22]-1.46*x[16]*x[24]+1.56*x[16]*x[30]+0.16*x[17]*x[22]-0.38*x[17]*x[24]+(-0.8*x[18]*x[20])-1.24*x[18]*x[21]+1.9*x[18]*x[26]+(-1.3*x[19]*x[21])-0.88*x[19]*x[22]-0.16*x[19]*x[24]+(-1.5*x[20]*x[21])-1.5*x[20]*x[25]-0.32*x[20]*x[29]+(-0.1*x[21]*x[24])-1.18*x[21]*x[26]-0.14*x[21]*x[28]+0.44*x[22]*x[23]+1.58*x[24]*x[30]-1.54*x[24]*x[27]-0.14*x[24]*x[31]-1.08*x[25]*x[29]-1.84*x[26]*x[31]+(-1.42*x[27]*x[28])-1.06*x[27]*x[29]+0.48*x[27]*x[31]-1.1*x[28]*x[29]-1.3*x[29]*x[30]+0.14*x[5]*x[5]-0.09*x[3]*x[3]-0.79*x[7]*x[7]-0.47*x[8]*x[8]+0.21*x[16]*x[16]+0.3*x[31]*x[31]+0.33*x[2]-0.76*x[3]+0.35*x[4]-0.68*x[5]+0.65*x[6]+0.65*x[7]-0.19*x[8]-0.26*x[9]-0.51*x[10]+0.71*x[11]-0.61*x[12]-0.52*x[13]-0.58*x[14]-0.79*x[15]+0.81*x[16]-0.6*x[17]+0.34*x[18]-0.24*x[19]+0.98*x[20]-0.68*x[21]-0.9*x[22]+0.25*x[23]+0.38*x[24]-0.81*x[25]+0.47*x[26]+0.22*x[27]-0.21*x[28]+0.4*x[29]-0.36*x[30]+0.83*x[31] <= 0.42)
@NLconstraint(m, e6, (-1.32*x[2]*x[5])-1.62*x[2]*x[15]-0.12*x[2]*x[20]+0.96*x[2]*x[24]+0.32*x[2]*x[28]+1.68*x[3]*x[16]-1.42*x[3]*x[24]+(-0.76*x[4]*x[9])-1.1*x[4]*x[13]-1.96*x[4]*x[21]+0.5*x[4]*x[23]-0.5*x[4]*x[24]+1.88*x[5]*x[10]-0.98*x[5]*x[6]-1.08*x[5]*x[24]+1.88*x[5]*x[25]-1.78*x[5]*x[30]+0.2*x[6]*x[22]-0.9*x[6]*x[8]-0.54*x[6]*x[27]-1.46*x[6]*x[30]-1.6*x[6]*x[31]+0.58*x[7]*x[12]-1.78*x[7]*x[9]+1.58*x[7]*x[15]-0.8*x[7]*x[16]+0.22*x[7]*x[18]-0.66*x[7]*x[20]-1.8*x[7]*x[28]+1.14*x[8]*x[13]-1.4*x[8]*x[10]-1.56*x[8]*x[16]+1.58*x[8]*x[25]-1.28*x[8]*x[28]+0.64*x[8]*x[31]+0.62*x[9]*x[10]+0.64*x[9]*x[14]-0.68*x[9]*x[15]-0.72*x[9]*x[17]+1.36*x[9]*x[19]-0.48*x[9]*x[20]+0.48*x[9]*x[27]-1.36*x[9]*x[30]+0.8*x[10]*x[12]-1.96*x[10]*x[16]+0.3*x[10]*x[24]+1.68*x[10]*x[30]+0.86*x[11]*x[15]+0.72*x[11]*x[16]+0.76*x[11]*x[17]-1.98*x[11]*x[18]+0.84*x[11]*x[19]-0.48*x[11]*x[24]-0.88*x[11]*x[25]+x[12]*x[21]-0.58*x[12]*x[22]-0.7*x[12]*x[23]+0.52*x[12]*x[28]+0.38*x[12]*x[31]+0.92*x[13]*x[17]+1.38*x[13]*x[27]+(-0.52*x[14]*x[18])-1.1*x[14]*x[19]+0.02*x[14]*x[21]-0.9*x[14]*x[25]+0.98*x[14]*x[27]+0.32*x[14]*x[28]+0.48*x[15]*x[24]-1.94*x[15]*x[18]-1.16*x[15]*x[25]-1.3*x[15]*x[29]+0.12*x[15]*x[31]+1.22*x[16]*x[20]+0.32*x[16]*x[30]+0.82*x[16]*x[31]+1.68*x[17]*x[21]+0.22*x[17]*x[24]+1.22*x[17]*x[25]-1.64*x[17]*x[28]+1.38*x[18]*x[19]+1.36*x[18]*x[20]+0.92*x[18]*x[21]-1.92*x[18]*x[24]+1.48*x[18]*x[25]-1.14*x[18]*x[26]+1.98*x[18]*x[28]+1.84*x[19]*x[22]-1.04*x[19]*x[25]+0.94*x[19]*x[29]+0.96*x[20]*x[30]-1.56*x[20]*x[25]+0.54*x[20]*x[31]-0.02*x[21]*x[25]+1.9*x[22]*x[23]-0.48*x[22]*x[24]+0.78*x[22]*x[26]+0.94*x[22]*x[27]-0.52*x[22]*x[29]-0.6*x[22]*x[31]-0.2*x[23]*x[24]+1.38*x[24]*x[28]-0.74*x[24]*x[26]+1.3*x[25]*x[30]-1.52*x[25]*x[29]-1.34*x[29]*x[30]+0.57*x[5]*x[5]-0.1*x[2]*x[2]+0.22*x[15]*x[15]-0.21*x[24]*x[24]+0.78*x[27]*x[27]+0.48*x[2]+0.57*x[3]-0.65*x[4]-0.85*x[5]+0.22*x[6]+0.57*x[7]-0.86*x[8]+0.33*x[9]-0.61*x[10]-0.45*x[11]-0.38*x[12]-0.72*x[13]-0.18*x[14]+0.91*x[15]+0.34*x[16]-0.38*x[17]-0.43*x[18]+0.47*x[19]+0.43*x[20]+0.91*x[21]-0.55*x[22]+0.26*x[23]+0.31*x[24]+0.71*x[25]+0.48*x[26]-0.4*x[27]-0.8*x[28]+0.49*x[29]+0.5*x[30]+0.66*x[31] <= 77.26)
@NLconstraint(m, e7, (-0.32*x[2]*x[5])-0.96*x[2]*x[7]-1.6*x[2]*x[9]-0.58*x[2]*x[20]-1.48*x[2]*x[23]+(-0.1*x[3]*x[8])-1.38*x[3]*x[9]+1.84*x[3]*x[14]-0.32*x[3]*x[16]+1.92*x[3]*x[17]+1.76*x[3]*x[24]-1.84*x[3]*x[25]-0.3*x[3]*x[30]+1.54*x[4]*x[8]-1.76*x[4]*x[10]+1.38*x[4]*x[22]-0.22*x[4]*x[26]+1.12*x[4]*x[27]-1.26*x[4]*x[31]+(-0.14*x[5]*x[6])-0.32*x[5]*x[10]-0.9*x[5]*x[17]+0.2*x[5]*x[18]-0.78*x[5]*x[27]+0.42*x[6]*x[15]+0.9*x[6]*x[17]+0.12*x[6]*x[18]+0.98*x[6]*x[24]+1.52*x[7]*x[12]+1.6*x[7]*x[30]-1.14*x[7]*x[31]+0.94*x[8]*x[11]-1.28*x[8]*x[10]+0.56*x[8]*x[13]+1.2*x[8]*x[15]-0.54*x[8]*x[22]+1.06*x[8]*x[23]+1.76*x[8]*x[27]+(-0.2*x[9]*x[13])-0.02*x[9]*x[18]+1.12*x[9]*x[19]-0.54*x[9]*x[27]+1.58*x[10]*x[11]+1.94*x[10]*x[14]+1.9*x[10]*x[15]-0.84*x[10]*x[17]+x[10]*x[18]+1.8*x[10]*x[23]-1.3*x[10]*x[26]-0.56*x[10]*x[28]+0.44*x[10]*x[29]+0.26*x[10]*x[31]+(-0.02*x[11]*x[14])-1.32*x[11]*x[17]+0.22*x[11]*x[19]+1.9*x[11]*x[21]+1.76*x[11]*x[31]+0.04*x[12]*x[20]+0.5*x[12]*x[26]-1.98*x[12]*x[28]+1.1*x[13]*x[25]+0.1*x[13]*x[27]+1.62*x[14]*x[18]-1.38*x[14]*x[15]+0.28*x[14]*x[19]+1.18*x[14]*x[20]-0.88*x[14]*x[22]-1.26*x[14]*x[29]+0.62*x[14]*x[30]+1.14*x[15]*x[24]-0.46*x[15]*x[17]+1.44*x[15]*x[29]+0.82*x[15]*x[30]+0.74*x[16]*x[22]+1.42*x[16]*x[24]+0.26*x[16]*x[26]+1.26*x[16]*x[29]+0.56*x[17]*x[27]-1.74*x[17]*x[28]+(-0.24*x[18]*x[21])-0.48*x[18]*x[24]-0.6*x[18]*x[30]+0.06*x[19]*x[20]+0.36*x[19]*x[28]+0.14*x[20]*x[23]+1.3*x[20]*x[26]+0.64*x[20]*x[28]+0.7*x[21]*x[26]+0.32*x[22]*x[25]+1.12*x[22]*x[29]+x[23]*x[25]-1.4*x[23]*x[28]+0.98*x[24]*x[29]+0.38*x[24]*x[31]+(-1.7*x[25]*x[27])-1.82*x[25]*x[31]+1.9*x[26]*x[28]-0.68*x[28]*x[31]+1.6*x[29]*x[31]+0.94*x[30]*x[31]+0.73*x[3]*x[3]-0.85*x[2]*x[2]-0.09*x[5]*x[5]+0.79*x[6]*x[6]+0.13*x[7]*x[7]+0.5*x[9]*x[9]+x[20]*x[20]-0.56*x[21]*x[21]+0.47*x[27]*x[27]+0.08*x[28]*x[28]-0.7*x[29]*x[29]+0.79*x[30]*x[30]+0.22*x[31]*x[31]+0.73*x[2]-0.94*x[3]-0.04*x[4]-0.34*x[5]-0.62*x[6]+0.54*x[7]+0.37*x[8]-0.77*x[9]+0.44*x[10]-0.15*x[11]+0.41*x[12]+0.61*x[13]-0.58*x[14]+0.55*x[15]-0.41*x[16]+0.68*x[17]+0.9*x[18]-0.12*x[19]+0.52*x[20]-0.45*x[21]-0.96*x[22]+0.51*x[23]+0.59*x[24]+0.23*x[25]-0.39*x[26]+0.27*x[27]+0.42*x[28]-0.46*x[29]+0.83*x[30]-0.74*x[31] <= 19.59)
@NLconstraint(m, e8, 1.7*x[2]*x[3]-0.9*x[2]*x[4]-1.36*x[2]*x[6]-0.44*x[2]*x[13]-0.58*x[2]*x[18]-0.34*x[2]*x[20]+1.78*x[2]*x[22]+1.96*x[2]*x[30]+(-1.02*x[3]*x[5])-0.5*x[3]*x[6]-1.1*x[3]*x[7]-1.24*x[3]*x[9]-0.1*x[3]*x[14]-0.44*x[3]*x[17]+0.72*x[4]*x[7]+1.7*x[4]*x[12]-1.4*x[4]*x[14]+1.38*x[4]*x[15]-1.34*x[4]*x[17]-1.22*x[4]*x[18]+1.34*x[4]*x[27]+(-1.74*x[5]*x[8])-1.24*x[5]*x[10]+1.84*x[5]*x[12]-0.64*x[5]*x[15]-1.2*x[5]*x[21]+1.16*x[6]*x[9]-0.16*x[6]*x[12]-1.24*x[6]*x[15]+0.4*x[6]*x[20]-0.36*x[6]*x[24]-0.14*x[6]*x[29]+1.46*x[6]*x[30]+1.9*x[7]*x[8]+1.56*x[7]*x[9]-0.32*x[7]*x[10]-1.08*x[7]*x[14]-0.72*x[7]*x[16]+1.56*x[7]*x[17]-2*x[7]*x[21]+0.7*x[7]*x[23]+1.16*x[7]*x[29]+(-0.18*x[8]*x[10])-0.56*x[8]*x[23]+1.88*x[8]*x[26]+0.4*x[8]*x[29]+1.44*x[9]*x[19]-0.32*x[9]*x[23]+0.84*x[9]*x[26]-0.26*x[9]*x[27]+1.7*x[10]*x[17]-1.62*x[10]*x[11]+0.76*x[10]*x[18]+1.4*x[10]*x[21]-0.84*x[10]*x[24]-1.86*x[10]*x[28]+1.36*x[10]*x[31]+0.16*x[11]*x[13]-1.38*x[11]*x[14]+1.9*x[11]*x[20]+0.1*x[11]*x[21]+0.18*x[11]*x[24]-1.06*x[11]*x[25]-0.56*x[11]*x[28]-0.26*x[11]*x[31]+1.98*x[12]*x[13]-0.42*x[12]*x[15]-1.26*x[12]*x[19]-1.26*x[12]*x[20]-0.66*x[12]*x[22]+0.6*x[12]*x[25]-1.68*x[12]*x[28]+(-1.66*x[13]*x[16])-0.54*x[13]*x[18]-1.18*x[13]*x[28]+1.94*x[14]*x[22]-1.68*x[14]*x[15]+1.54*x[14]*x[23]+0.58*x[14]*x[26]+1.88*x[14]*x[30]+(-0.78*x[15]*x[20])-0.14*x[15]*x[21]-1.98*x[15]*x[22]-0.56*x[15]*x[23]+1.04*x[16]*x[24]+1.26*x[16]*x[30]+1.56*x[17]*x[19]+0.3*x[17]*x[22]+0.18*x[18]*x[19]+1.74*x[18]*x[20]+1.8*x[18]*x[29]+1.34*x[19]*x[26]+0.3*x[19]*x[27]+(-0.24*x[20]*x[24])-0.14*x[20]*x[26]+1.9*x[20]*x[28]-0.54*x[20]*x[30]-1.3*x[21]*x[28]+0.62*x[22]*x[25]+0.38*x[23]*x[31]-1.76*x[24]*x[28]+0.02*x[25]*x[28]-0.08*x[25]*x[31]+1.26*x[27]*x[29]+1.12*x[27]*x[30]+0.54*x[28]*x[29]-1.62*x[30]*x[31]+(-0.35*x[10]*x[10])-0.98*x[16]*x[16]-0.69*x[21]*x[21]-0.94*x[24]*x[24]+0.05*x[31]*x[31]-0.4*x[2]-0.54*x[3]-0.1*x[4]-0.91*x[5]-0.21*x[6]+0.62*x[7]+0.03*x[8]+0.49*x[9]-0.89*x[10]-0.52*x[11]+0.58*x[12]+0.08*x[13]+0.61*x[14]+0.36*x[15]+0.75*x[16]-0.75*x[17]-0.86*x[18]+0.04*x[19]-0.29*x[20]-0.51*x[21]-0.15*x[22]+0.11*x[23]-0.05*x[24]+0.86*x[25]-0.46*x[26]+0.55*x[27]+0.42*x[28]+0.36*x[29]+0.48*x[30]-0.27*x[31] <= 52.88)
@NLconstraint(m, e9, (-0.64*x[2]*x[5])-0.94*x[2]*x[9]-1.8*x[2]*x[14]+1.2*x[2]*x[19]-1.74*x[2]*x[21]-1.24*x[2]*x[23]+(-1.6*x[3]*x[8])-0.44*x[3]*x[11]+1.98*x[3]*x[20]+1.28*x[3]*x[21]-0.18*x[3]*x[27]+1.96*x[4]*x[8]-x[4]*x[7]-0.06*x[4]*x[9]+0.3*x[4]*x[13]-1.48*x[4]*x[20]-0.26*x[4]*x[24]+0.8*x[4]*x[30]+1.94*x[5]*x[8]+0.44*x[5]*x[9]-0.82*x[5]*x[21]+0.56*x[5]*x[24]-0.62*x[5]*x[28]+0.78*x[5]*x[30]+0.56*x[5]*x[31]+0.16*x[6]*x[13]+1.28*x[6]*x[18]+0.06*x[6]*x[20]+1.4*x[7]*x[9]+0.52*x[7]*x[11]+1.14*x[7]*x[18]-0.08*x[7]*x[21]+0.2*x[7]*x[22]-1.54*x[7]*x[23]+1.58*x[7]*x[24]+1.38*x[7]*x[29]+0.9*x[8]*x[12]-1.2*x[8]*x[16]+1.28*x[8]*x[20]+1.32*x[8]*x[23]+0.28*x[8]*x[25]-1.02*x[8]*x[26]+0.52*x[8]*x[31]+x[9]*x[10]-1.56*x[9]*x[18]+1.24*x[10]*x[18]-0.4*x[10]*x[21]+0.88*x[10]*x[31]+0.74*x[11]*x[17]-1.12*x[11]*x[26]+1.94*x[12]*x[18]-0.62*x[12]*x[17]-0.78*x[12]*x[25]+1.26*x[12]*x[27]-0.04*x[12]*x[28]+(-1.62*x[13]*x[20])-1.56*x[13]*x[22]-0.92*x[13]*x[25]-0.14*x[13]*x[27]-1.86*x[13]*x[28]-0.68*x[13]*x[30]+1.48*x[13]*x[31]+1.3*x[14]*x[15]-0.2*x[14]*x[20]-0.5*x[14]*x[22]-x[14]*x[25]-1.54*x[14]*x[26]+0.06*x[14]*x[28]+0.14*x[14]*x[30]+1.26*x[15]*x[18]-0.26*x[15]*x[17]-1.46*x[15]*x[27]+(-0.32*x[16]*x[17])-1.22*x[16]*x[21]-1.7*x[16]*x[22]+0.82*x[16]*x[23]+1.78*x[16]*x[28]+1.58*x[17]*x[21]-1.96*x[17]*x[18]+1.14*x[17]*x[26]-0.2*x[17]*x[27]+(-1.98*x[18]*x[20])-1.68*x[18]*x[21]+0.88*x[18]*x[22]-0.02*x[18]*x[25]+0.62*x[18]*x[31]+1.54*x[19]*x[20]+1.9*x[20]*x[22]-0.92*x[20]*x[30]+1.98*x[21]*x[23]-1.9*x[21]*x[22]+1.18*x[21]*x[25]+1.14*x[21]*x[27]-0.74*x[21]*x[28]-1.04*x[21]*x[30]-1.42*x[21]*x[31]+(-1.16*x[22]*x[23])-1.14*x[22]*x[25]-0.94*x[22]*x[29]-1.28*x[22]*x[30]+1.84*x[22]*x[31]+(-1.54*x[23]*x[27])-1.78*x[23]*x[30]+0.24*x[24]*x[28]-0.86*x[24]*x[26]+0.26*x[24]*x[30]+1.44*x[25]*x[26]-1.5*x[25]*x[29]-0.38*x[28]*x[29]+0.36*x[4]*x[4]+0.18*x[14]*x[14]+0.93*x[18]*x[18]+0.01*x[20]*x[20]+0.17*x[3]+0.79*x[4]+0.2*x[5]+0.69*x[6]+0.91*x[7]-0.75*x[8]+0.28*x[9]+0.01*x[10]+0.76*x[11]-0.46*x[12]-0.1*x[13]-0.07*x[14]+0.25*x[15]+0.33*x[16]-0.18*x[17]-0.19*x[18]+0.84*x[19]-0.39*x[20]+0.11*x[21]-0.96*x[22]+0.73*x[23]-0.16*x[24]+0.83*x[25]+0.23*x[26]+0.33*x[27]-0.3*x[28]+0.92*x[29]+0.19*x[30]-0.94*x[31] <= 79.91)
@NLconstraint(m, e10, 0.82*x[2]*x[4]-1.02*x[2]*x[3]-1.98*x[2]*x[6]-1.88*x[2]*x[7]-1.14*x[2]*x[12]-1.46*x[2]*x[25]+1.36*x[3]*x[4]+0.32*x[3]*x[5]+1.36*x[3]*x[12]-0.18*x[3]*x[17]-0.82*x[3]*x[18]-0.26*x[3]*x[20]+0.2*x[3]*x[24]+1.5*x[4]*x[14]+0.34*x[4]*x[19]+0.14*x[4]*x[29]-0.74*x[4]*x[30]+(-1.54*x[5]*x[6])-1.8*x[5]*x[11]+1.48*x[5]*x[12]-0.38*x[5]*x[14]-0.22*x[5]*x[15]-0.2*x[5]*x[19]+1.46*x[5]*x[22]+0.16*x[5]*x[29]-0.04*x[5]*x[30]+0.96*x[5]*x[31]+0.6*x[6]*x[7]-0.62*x[6]*x[9]-0.18*x[6]*x[17]-0.5*x[6]*x[20]-1.52*x[6]*x[22]+0.52*x[6]*x[26]+(-0.52*x[7]*x[16])-0.06*x[7]*x[24]+0.26*x[8]*x[15]-1.94*x[8]*x[16]+0.84*x[8]*x[24]+0.44*x[8]*x[30]+(-0.72*x[9]*x[15])-1.12*x[9]*x[19]+2*x[9]*x[26]-1.48*x[9]*x[30]+(-1.28*x[10]*x[23])-1.92*x[10]*x[26]-1.86*x[10]*x[29]-0.04*x[10]*x[30]+0.1*x[11]*x[20]-0.28*x[11]*x[21]+1.06*x[11]*x[30]+0.8*x[12]*x[15]-x[12]*x[13]+0.44*x[12]*x[17]-0.8*x[12]*x[19]+0.02*x[12]*x[20]-0.76*x[12]*x[25]+0.68*x[12]*x[26]+(-0.6*x[13]*x[15])-0.12*x[13]*x[19]-0.68*x[13]*x[20]+0.78*x[13]*x[22]-0.24*x[13]*x[23]+0.6*x[13]*x[28]+1.26*x[14]*x[16]-1.94*x[14]*x[19]+1.76*x[14]*x[27]-1.48*x[14]*x[28]-1.96*x[14]*x[29]+(-0.88*x[15]*x[16])-1.06*x[15]*x[21]-0.92*x[15]*x[23]+(-0.1*x[16]*x[17])-1.88*x[16]*x[18]+1.34*x[16]*x[19]+1.8*x[16]*x[22]-0.72*x[16]*x[23]-1.42*x[16]*x[30]+1.32*x[17]*x[23]-1.28*x[17]*x[28]-1.7*x[17]*x[30]+1.38*x[18]*x[21]-0.32*x[18]*x[20]-0.4*x[18]*x[22]+0.72*x[18]*x[23]+0.28*x[18]*x[29]+0.48*x[19]*x[28]-1.98*x[19]*x[24]+1.04*x[19]*x[30]+1.76*x[20]*x[25]+1.1*x[20]*x[27]-1.6*x[20]*x[29]-1.06*x[20]*x[31]+1.34*x[21]*x[22]+0.72*x[21]*x[26]-1.42*x[21]*x[28]-0.74*x[21]*x[29]-1.56*x[23]*x[27]+(-1.62*x[24]*x[25])-1.34*x[24]*x[29]+0.64*x[24]*x[31]+0.92*x[25]*x[30]-0.76*x[25]*x[29]+1.54*x[25]*x[31]+1.78*x[26]*x[29]-0.2*x[27]*x[28]+0.75*x[11]*x[11]-0.41*x[15]*x[15]-0.28*x[18]*x[18]-0.79*x[22]*x[22]-0.69*x[28]*x[28]-0.35*x[31]*x[31]+0.04*x[2]-0.92*x[3]-0.74*x[4]+0.09*x[5]+0.96*x[6]+0.13*x[7]+0.34*x[8]-0.21*x[9]+0.01*x[10]+0.43*x[11]+0.87*x[12]-0.03*x[13]-0.55*x[14]+0.79*x[15]+0.36*x[16]-0.27*x[17]+0.31*x[18]+0.92*x[19]-0.92*x[20]+0.01*x[21]-0.56*x[22]+0.3*x[23]-0.5*x[24]+0.19*x[25]-0.63*x[26]-0.88*x[27]+0.34*x[28]+0.06*x[29]+0.49*x[30]+0.12*x[31] <= 48.89)
@NLconstraint(m, e11, 0.16*x[2]*x[4]-1.18*x[2]*x[28]-0.3*x[2]*x[29]+0.5*x[3]*x[8]-0.6*x[3]*x[7]+1.18*x[3]*x[10]-0.58*x[3]*x[11]+1.24*x[3]*x[16]-1.78*x[3]*x[19]+0.6*x[3]*x[20]+1.82*x[3]*x[27]+1.66*x[4]*x[11]+1.96*x[4]*x[13]-1.54*x[4]*x[17]-0.74*x[4]*x[18]-1.52*x[4]*x[19]+1.82*x[4]*x[20]+0.86*x[4]*x[21]+0.62*x[4]*x[22]+0.84*x[4]*x[28]-0.54*x[4]*x[29]+0.28*x[4]*x[31]+0.38*x[5]*x[9]+0.2*x[5]*x[19]-1.42*x[5]*x[23]+0.5*x[5]*x[26]-0.5*x[5]*x[27]+0.3*x[6]*x[26]-0.7*x[6]*x[13]+0.36*x[7]*x[9]-1.02*x[7]*x[8]+0.84*x[7]*x[10]-1.86*x[7]*x[12]-0.58*x[7]*x[20]-0.72*x[7]*x[30]-0.74*x[7]*x[31]+(-0.62*x[8]*x[11])-1.92*x[8]*x[13]-1.74*x[8]*x[14]+0.3*x[8]*x[19]+0.18*x[8]*x[22]+1.04*x[9]*x[13]-1.44*x[9]*x[29]-1.34*x[9]*x[30]+0.38*x[9]*x[31]+(-1.36*x[10]*x[11])-0.14*x[10]*x[12]+0.82*x[10]*x[14]-1.64*x[10]*x[15]+1.72*x[10]*x[22]+0.2*x[10]*x[25]-1.84*x[10]*x[26]+0.76*x[10]*x[31]+1.82*x[11]*x[14]-0.64*x[11]*x[27]+0.62*x[11]*x[29]+1.38*x[11]*x[30]+(-1.46*x[12]*x[17])-1.7*x[12]*x[22]-1.26*x[12]*x[26]+0.92*x[12]*x[29]-1.04*x[12]*x[30]+1.48*x[13]*x[22]-1.08*x[13]*x[20]-1.86*x[13]*x[28]+1.84*x[14]*x[23]-1.18*x[14]*x[17]+1.98*x[14]*x[25]-1.42*x[14]*x[31]+1.44*x[15]*x[20]+0.2*x[15]*x[21]+1.5*x[15]*x[23]-1.56*x[15]*x[27]+0.62*x[16]*x[18]+1.46*x[16]*x[19]+1.12*x[16]*x[23]-1.84*x[16]*x[25]-1.82*x[16]*x[29]+(-1.56*x[17]*x[21])-1.4*x[17]*x[28]-1.54*x[17]*x[29]+1.14*x[18]*x[29]-0.82*x[18]*x[24]+1.92*x[19]*x[27]-0.2*x[19]*x[24]-0.64*x[19]*x[29]+(-1.34*x[20]*x[22])-0.3*x[20]*x[24]+1.78*x[21]*x[25]-0.06*x[21]*x[22]+1.46*x[21]*x[29]+(-0.26*x[22]*x[25])-1.38*x[22]*x[26]+0.28*x[22]*x[27]+1.38*x[22]*x[29]+1.54*x[22]*x[30]+1.94*x[22]*x[31]+(-0.7*x[25]*x[26])-0.08*x[25]*x[29]-1.98*x[25]*x[31]+1.4*x[26]*x[29]+0.32*x[26]*x[30]+1.46*x[27]*x[28]+(-0.52*x[28]*x[29])-x[28]*x[30]-1.6*x[30]*x[31]+0.07*x[4]*x[4]+0.49*x[9]*x[9]-0.89*x[15]*x[15]+0.74*x[18]*x[18]-0.37*x[21]*x[21]+0.78*x[23]*x[23]+0.83*x[24]*x[24]-0.38*x[2]-0.37*x[3]-0.12*x[4]-0.56*x[5]+0.65*x[6]+0.86*x[7]+0.54*x[8]-0.89*x[9]-0.13*x[10]+0.4*x[11]-0.66*x[12]-0.9*x[13]-0.56*x[14]-0.35*x[15]+0.14*x[16]-0.52*x[17]-0.57*x[18]+0.64*x[19]+0.6*x[20]+0.23*x[21]-0.15*x[22]-0.24*x[23]-0.68*x[24]-0.5*x[25]-0.04*x[26]+0.54*x[27]-0.9*x[28]+0.42*x[29]+0.48*x[30]-0.35*x[31] <= 43.39)
@NLconstraint(m, e12, 1.94*x[2]*x[7]+0.54*x[2]*x[9]-1.98*x[2]*x[10]+1.06*x[2]*x[11]+1.62*x[2]*x[15]-0.32*x[2]*x[26]-1.92*x[2]*x[29]+1.5*x[3]*x[4]+1.46*x[3]*x[18]-1.44*x[3]*x[21]+0.82*x[4]*x[6]+0.06*x[4]*x[9]+0.08*x[4]*x[10]+1.92*x[4]*x[12]-1.18*x[4]*x[18]-0.92*x[4]*x[22]+0.52*x[4]*x[27]-1.16*x[4]*x[29]+1.5*x[5]*x[9]-1.1*x[5]*x[11]+1.64*x[5]*x[15]+1.88*x[5]*x[22]-1.1*x[5]*x[24]+0.18*x[5]*x[25]+1.32*x[5]*x[26]+1.9*x[6]*x[8]-1.06*x[6]*x[12]-1.66*x[6]*x[16]+0.04*x[6]*x[17]-0.7*x[6]*x[21]+1.82*x[6]*x[23]+0.6*x[6]*x[26]+(-0.6*x[7]*x[18])-0.86*x[7]*x[22]-1.66*x[7]*x[26]+0.76*x[7]*x[29]+0.92*x[7]*x[30]+1.48*x[8]*x[11]-0.7*x[8]*x[12]+1.32*x[8]*x[13]+0.02*x[8]*x[15]+0.52*x[8]*x[19]+0.5*x[8]*x[21]+1.6*x[8]*x[22]-0.66*x[8]*x[27]+0.6*x[8]*x[28]+0.1*x[8]*x[31]+1.9*x[9]*x[11]+0.26*x[9]*x[13]-0.82*x[9]*x[14]+0.86*x[9]*x[15]-1.52*x[9]*x[22]-0.42*x[9]*x[27]-1.94*x[9]*x[28]+0.9*x[9]*x[31]+1.14*x[10]*x[14]-0.98*x[10]*x[17]-0.2*x[10]*x[22]-1.18*x[10]*x[24]-1.56*x[10]*x[27]+(-1.5*x[11]*x[15])-0.84*x[11]*x[24]-0.8*x[11]*x[30]+1.8*x[12]*x[20]-0.4*x[12]*x[17]-0.92*x[12]*x[30]+(-0.18*x[13]*x[20])-0.34*x[13]*x[21]-1.7*x[13]*x[25]+(-1.22*x[14]*x[18])-1.12*x[14]*x[19]-1.58*x[14]*x[20]+1.98*x[15]*x[19]-0.06*x[15]*x[18]+2*x[15]*x[29]+0.32*x[15]*x[31]+0.42*x[16]*x[18]+1.02*x[16]*x[25]-1.78*x[16]*x[30]+0.42*x[17]*x[29]-0.66*x[17]*x[22]+1.02*x[18]*x[30]-0.58*x[18]*x[29]+1.72*x[18]*x[31]+(-1.26*x[19]*x[20])-0.02*x[19]*x[23]-0.86*x[19]*x[24]+1.46*x[19]*x[29]+0.62*x[20]*x[21]-0.6*x[20]*x[24]-0.32*x[20]*x[28]+(-1.52*x[21]*x[22])-1.32*x[21]*x[25]+1.38*x[22]*x[28]-1.64*x[22]*x[27]-0.44*x[22]*x[30]+(-1.52*x[24]*x[25])-0.24*x[24]*x[27]+1.56*x[24]*x[28]+1.26*x[25]*x[31]-x[25]*x[29]+(-1.5*x[26]*x[27])-1.4*x[26]*x[29]+1.78*x[27]*x[29]+1.66*x[27]*x[31]+1.68*x[28]*x[29]+0.35*x[9]*x[9]-0.21*x[7]*x[7]-0.99*x[13]*x[13]-0.46*x[14]*x[14]+0.3*x[19]*x[19]+0.87*x[29]*x[29]-0.29*x[31]*x[31]-0.44*x[2]+0.18*x[3]-0.39*x[4]+0.85*x[5]-0.82*x[6]-0.67*x[7]+0.81*x[8]-0.5*x[9]-0.99*x[10]+0.89*x[11]+0.53*x[12]+0.86*x[13]-0.49*x[14]+0.92*x[15]+0.64*x[16]-0.7*x[17]-0.43*x[18]+0.68*x[19]-0.3*x[20]-0.74*x[21]+0.09*x[22]-0.72*x[23]-0.96*x[24]+0.84*x[25]+0.79*x[26]+0.75*x[27]-0.57*x[28]+0.29*x[29]+0.68*x[30]-0.42*x[31] <= 91.63)
@NLconstraint(m, e13, 1.7*x[2]*x[6]-0.2*x[2]*x[3]+1.14*x[2]*x[7]-0.22*x[2]*x[10]+1.76*x[2]*x[11]+1.56*x[2]*x[12]+0.8*x[2]*x[20]+1.64*x[2]*x[26]-1.46*x[2]*x[27]+1.96*x[2]*x[28]+0.58*x[3]*x[10]+1.4*x[3]*x[22]+0.96*x[3]*x[26]+1.88*x[4]*x[17]-0.68*x[4]*x[5]-0.18*x[4]*x[18]-0.54*x[4]*x[22]-0.64*x[4]*x[23]-0.2*x[4]*x[24]+(-1.54*x[5]*x[16])-1.98*x[5]*x[21]+0.16*x[5]*x[23]-0.82*x[5]*x[26]-1.38*x[5]*x[31]+1.24*x[6]*x[12]-1.3*x[6]*x[9]-1.48*x[6]*x[15]-1.34*x[6]*x[19]+1.64*x[6]*x[23]-0.88*x[6]*x[29]+1.12*x[7]*x[14]-0.4*x[7]*x[12]-1.2*x[7]*x[23]-1.14*x[7]*x[31]+1.18*x[9]*x[10]-0.78*x[9]*x[15]+0.84*x[9]*x[17]-1.16*x[9]*x[19]+1.7*x[9]*x[21]+1.6*x[9]*x[26]+1.36*x[9]*x[31]+1.6*x[10]*x[17]-0.26*x[10]*x[15]-1.56*x[10]*x[21]-1.52*x[10]*x[23]+1.98*x[10]*x[24]-0.04*x[10]*x[30]+(-0.76*x[11]*x[14])-0.3*x[11]*x[15]-1.6*x[11]*x[30]+0.24*x[12]*x[16]-1.72*x[12]*x[15]+1.84*x[12]*x[25]+0.36*x[12]*x[26]+0.48*x[12]*x[28]+1.66*x[12]*x[29]+0.38*x[13]*x[16]+1.38*x[13]*x[18]+0.28*x[13]*x[26]-0.18*x[13]*x[27]+0.46*x[13]*x[28]+(-1.08*x[14]*x[22])-0.12*x[14]*x[24]-1.52*x[14]*x[27]+1.98*x[14]*x[31]+0.5*x[15]*x[19]-0.34*x[15]*x[16]+0.94*x[15]*x[21]-0.14*x[15]*x[22]+0.2*x[15]*x[28]-2*x[15]*x[29]-1.86*x[15]*x[30]+0.38*x[16]*x[30]-0.8*x[16]*x[21]-1.28*x[16]*x[31]+1.22*x[17]*x[20]+1.92*x[17]*x[21]+0.36*x[17]*x[24]+0.1*x[18]*x[27]-0.18*x[18]*x[20]-0.6*x[18]*x[31]+1.2*x[19]*x[23]-1.46*x[19]*x[22]-1.72*x[19]*x[24]-1.6*x[19]*x[30]+0.54*x[20]*x[27]-0.14*x[20]*x[29]+1.98*x[20]*x[31]+0.78*x[21]*x[25]-1.2*x[21]*x[26]+0.58*x[21]*x[27]-0.7*x[21]*x[29]+0.16*x[22]*x[24]-1.96*x[22]*x[28]-0.2*x[22]*x[30]+1.4*x[23]*x[24]-1.64*x[23]*x[27]+0.32*x[24]*x[25]-0.08*x[24]*x[29]-1.4*x[24]*x[30]+0.94*x[25]*x[27]+0.56*x[26]*x[27]+0.62*x[26]*x[28]+0.9*x[26]*x[29]+(-1.98*x[27]*x[28])-1.84*x[27]*x[29]+(-0.56*x[29]*x[30])-0.86*x[29]*x[31]+(-0.65*x[2]*x[2])-0.81*x[10]*x[10]-0.22*x[19]*x[19]-0.11*x[24]*x[24]+0.22*x[26]*x[26]+0.57*x[2]-0.77*x[3]-0.25*x[4]+0.6*x[5]+0.4*x[6]+0.82*x[7]-0.82*x[9]-0.1*x[10]-0.2*x[11]+0.66*x[12]+0.32*x[13]-0.35*x[14]+0.91*x[15]-0.39*x[16]-0.5*x[17]-0.06*x[18]-0.7*x[19]+0.53*x[20]-0.81*x[21]+0.42*x[22]+0.31*x[23]-0.35*x[24]+0.63*x[25]+0.04*x[26]-0.57*x[27]+0.4*x[28]+0.28*x[29]-0.36*x[30]+0.93*x[31]-0.95*x[8] <= 74.97)
@NLconstraint(m, e14, (-1.76*x[2]*x[9])-0.56*x[2]*x[16]+0.46*x[2]*x[17]+1.6*x[2]*x[20]+1.3*x[2]*x[24]+0.08*x[2]*x[27]+0.08*x[3]*x[14]-0.6*x[3]*x[10]+0.08*x[3]*x[18]+0.76*x[3]*x[26]+1.22*x[3]*x[30]+0.56*x[3]*x[31]+0.3*x[4]*x[10]-0.82*x[4]*x[5]+1.32*x[4]*x[11]-1.14*x[4]*x[14]+1.34*x[4]*x[16]+1.94*x[4]*x[20]-0.66*x[4]*x[23]-1.74*x[4]*x[25]+1.82*x[4]*x[27]+0.7*x[5]*x[25]-1.78*x[5]*x[10]-0.08*x[5]*x[26]+1.76*x[6]*x[8]+1.76*x[6]*x[14]-1.26*x[6]*x[18]-0.7*x[6]*x[22]+1.48*x[6]*x[29]+(-0.1*x[7]*x[8])-1.72*x[7]*x[11]+1.68*x[7]*x[15]+0.08*x[7]*x[20]+1.26*x[7]*x[22]-0.78*x[7]*x[28]+1.54*x[8]*x[14]-0.58*x[8]*x[15]+0.16*x[8]*x[16]+1.64*x[8]*x[17]-0.82*x[8]*x[28]+0.1*x[8]*x[30]+(-1.6*x[9]*x[12])-1.74*x[9]*x[19]+0.52*x[9]*x[26]+1.04*x[9]*x[28]+1.54*x[9]*x[31]+1.02*x[10]*x[11]-0.66*x[10]*x[17]+0.22*x[10]*x[20]+0.2*x[11]*x[18]-0.24*x[11]*x[25]+0.5*x[11]*x[27]-0.8*x[11]*x[28]+0.26*x[11]*x[29]+1.06*x[11]*x[30]+0.68*x[12]*x[18]+0.36*x[12]*x[20]+0.08*x[12]*x[29]+0.4*x[13]*x[17]-0.56*x[13]*x[14]-1.56*x[13]*x[23]+0.82*x[14]*x[18]+1.22*x[14]*x[20]-1.68*x[14]*x[22]+0.74*x[14]*x[25]+1.5*x[14]*x[26]+(-0.38*x[15]*x[16])-1.18*x[15]*x[17]-1.9*x[15]*x[18]+0.12*x[15]*x[24]+(-1.7*x[16]*x[19])-1.74*x[16]*x[20]+1.36*x[16]*x[22]+0.74*x[16]*x[25]+(-1.66*x[17]*x[18])-0.64*x[17]*x[19]+1.66*x[17]*x[28]-0.38*x[17]*x[29]-1.76*x[18]*x[25]+1.12*x[19]*x[23]+0.64*x[19]*x[26]-1.42*x[19]*x[27]-1.66*x[19]*x[31]+1.48*x[20]*x[22]+0.8*x[20]*x[25]-0.96*x[20]*x[26]+0.6*x[21]*x[22]+0.74*x[21]*x[25]+0.1*x[22]*x[23]+0.26*x[22]*x[29]-1.32*x[23]*x[30]+0.16*x[24]*x[29]-1.42*x[24]*x[26]+1.78*x[24]*x[30]+0.14*x[25]*x[27]+0.64*x[25]*x[28]-0.02*x[25]*x[29]-0.94*x[25]*x[31]+0.96*x[26]*x[29]-0.34*x[26]*x[28]+0.08*x[27]*x[28]+0.3*x[28]*x[29]+0.34*x[4]*x[4]-0.69*x[5]*x[5]-0.18*x[7]*x[7]+0.04*x[15]*x[15]+0.9*x[16]*x[16]-0.62*x[19]*x[19]+0.35*x[21]*x[21]-0.88*x[22]*x[22]+0.57*x[27]*x[27]+0.73*x[28]*x[28]+0.23*x[29]*x[29]-0.08*x[2]-0.17*x[3]-0.77*x[4]+0.21*x[5]-0.59*x[6]-0.42*x[7]-0.06*x[8]-0.74*x[9]-0.8*x[10]-0.45*x[11]+0.06*x[12]-0.32*x[13]-0.79*x[14]+0.59*x[15]+0.34*x[16]+0.01*x[17]-0.79*x[18]+0.52*x[19]+0.26*x[20]+0.45*x[21]-0.28*x[22]+0.49*x[23]-0.08*x[24]-0.02*x[25]-0.48*x[26]+0.74*x[27]-0.73*x[28]+x[29]+0.63*x[30]-0.49*x[31] <= 71.68)
@NLconstraint(m, e15, (-0.52*x[2]*x[9])-0.08*x[2]*x[10]+1.62*x[2]*x[11]-1.32*x[2]*x[12]+1.46*x[2]*x[15]+0.68*x[2]*x[20]+0.52*x[2]*x[24]+1.88*x[2]*x[27]+0.04*x[2]*x[28]+0.8*x[3]*x[15]-0.8*x[3]*x[9]+1.82*x[3]*x[17]+1.36*x[3]*x[20]-0.04*x[3]*x[28]+1.02*x[4]*x[7]-0.64*x[4]*x[5]-0.24*x[4]*x[9]-1.26*x[4]*x[11]+1.92*x[4]*x[19]-0.66*x[4]*x[21]-0.94*x[4]*x[30]+1.38*x[4]*x[31]+(-0.56*x[5]*x[8])-1.54*x[5]*x[14]-0.1*x[5]*x[20]+0.78*x[5]*x[21]+0.62*x[5]*x[26]+0.62*x[5]*x[27]+1.8*x[5]*x[29]+1.12*x[5]*x[30]+1.94*x[6]*x[8]-1.9*x[6]*x[10]+1.72*x[6]*x[11]+0.02*x[6]*x[12]-0.14*x[6]*x[15]+0.26*x[6]*x[17]+1.98*x[6]*x[25]+1.88*x[6]*x[28]+1.9*x[7]*x[10]+1.04*x[7]*x[11]+1.92*x[7]*x[15]-0.38*x[7]*x[16]-0.18*x[7]*x[23]+1.68*x[7]*x[24]-0.88*x[7]*x[28]+1.06*x[8]*x[15]-0.04*x[8]*x[10]+1.64*x[8]*x[19]-1.68*x[8]*x[20]-0.28*x[8]*x[27]-0.06*x[8]*x[29]+1.96*x[9]*x[19]-1.72*x[9]*x[12]-0.16*x[9]*x[22]+0.66*x[9]*x[25]+0.28*x[9]*x[27]+0.7*x[9]*x[28]+0.02*x[10]*x[16]-1.28*x[10]*x[11]-0.14*x[10]*x[22]+1.32*x[10]*x[31]+(-0.92*x[11]*x[12])-0.82*x[11]*x[13]+0.96*x[11]*x[15]-x[11]*x[17]+0.1*x[12]*x[17]-0.22*x[12]*x[16]-1.96*x[12]*x[23]-0.28*x[12]*x[27]+0.2*x[13]*x[14]-0.56*x[13]*x[18]-1.72*x[13]*x[20]+0.28*x[13]*x[26]-0.68*x[13]*x[28]+0.16*x[14]*x[16]+1.82*x[14]*x[17]+1.62*x[14]*x[29]-0.82*x[14]*x[30]+0.46*x[14]*x[31]+1.14*x[15]*x[17]-1.94*x[15]*x[18]+0.46*x[15]*x[21]+0.76*x[16]*x[19]+1.88*x[16]*x[25]+1.88*x[16]*x[30]+1.74*x[17]*x[20]-1.52*x[17]*x[25]-0.22*x[18]*x[30]+1.88*x[19]*x[20]-1.14*x[19]*x[23]+1.42*x[19]*x[29]-0.98*x[19]*x[31]+0.94*x[20]*x[29]+0.98*x[21]*x[24]-0.5*x[21]*x[23]+0.46*x[22]*x[28]-1.82*x[22]*x[27]-1.36*x[22]*x[30]-1.96*x[23]*x[24]+1.74*x[24]*x[30]+(-0.22*x[25]*x[26])-0.26*x[25]*x[28]-0.72*x[26]*x[28]+1.24*x[27]*x[28]+(-0.89*x[2]*x[2])-0.04*x[4]*x[4]+0.87*x[7]*x[7]+0.87*x[15]*x[15]-0.16*x[19]*x[19]+0.56*x[24]*x[24]+0.01*x[25]*x[25]-0.4*x[29]*x[29]+0.42*x[30]*x[30]-0.97*x[2]+0.26*x[3]-0.98*x[4]-0.63*x[5]-0.56*x[6]-0.5*x[7]-0.76*x[8]-0.93*x[9]+0.99*x[10]+0.25*x[11]+0.26*x[12]-0.09*x[13]-0.85*x[14]+0.87*x[15]-0.4*x[16]-0.38*x[17]-0.74*x[18]-0.98*x[19]+0.42*x[20]+0.49*x[21]-0.42*x[22]-0.52*x[23]-0.61*x[24]-0.44*x[25]-0.15*x[26]+0.57*x[27]-0.77*x[28]-0.46*x[29]+0.69*x[30]-0.99*x[31] <= 60.27)
@NLconstraint(m, e16, 1.14*x[2]*x[5]-1.02*x[2]*x[9]-1.32*x[2]*x[10]-1.34*x[2]*x[13]+1.58*x[2]*x[15]-0.76*x[2]*x[18]+1.72*x[2]*x[28]+1.36*x[3]*x[9]-1.9*x[3]*x[8]-0.9*x[3]*x[13]-0.14*x[3]*x[14]+1.02*x[3]*x[21]-1.58*x[3]*x[28]+(-1.64*x[4]*x[8])-0.44*x[4]*x[17]+0.44*x[4]*x[23]-0.58*x[4]*x[30]-0.74*x[4]*x[31]+(-0.66*x[5]*x[21])-0.46*x[5]*x[23]+1.08*x[6]*x[10]+0.2*x[6]*x[13]+1.26*x[6]*x[21]+1.56*x[6]*x[25]-1.54*x[6]*x[26]-0.64*x[6]*x[27]-1.12*x[6]*x[28]+1.34*x[7]*x[8]+0.82*x[7]*x[9]+0.1*x[7]*x[11]+0.34*x[7]*x[16]+1.78*x[7]*x[18]-1.82*x[7]*x[23]-1.16*x[7]*x[26]+1.88*x[8]*x[9]-0.18*x[8]*x[14]+0.38*x[8]*x[17]-1.2*x[8]*x[24]-0.14*x[8]*x[25]-0.38*x[8]*x[27]+1.32*x[9]*x[18]-1.94*x[9]*x[15]-1.2*x[9]*x[20]-1.32*x[9]*x[21]-1.62*x[9]*x[22]-0.3*x[9]*x[23]-1.38*x[9]*x[24]+1.34*x[9]*x[27]+(-0.44*x[10]*x[12])-1.88*x[10]*x[13]+1.24*x[10]*x[16]-1.42*x[10]*x[17]-2*x[10]*x[18]-1.9*x[10]*x[19]-0.58*x[10]*x[20]-0.86*x[10]*x[25]-1.42*x[10]*x[26]-1.76*x[10]*x[31]+1.3*x[11]*x[12]+1.14*x[11]*x[13]+0.48*x[11]*x[14]-1.1*x[11]*x[15]+0.04*x[11]*x[20]-1.04*x[11]*x[22]-0.66*x[11]*x[23]+0.22*x[11]*x[29]+0.08*x[11]*x[31]+0.02*x[12]*x[15]-1.72*x[12]*x[26]-0.76*x[12]*x[28]+0.44*x[12]*x[30]+0.1*x[13]*x[20]-0.94*x[13]*x[16]+0.62*x[13]*x[22]+(-0.32*x[14]*x[19])-0.52*x[14]*x[26]+0.02*x[14]*x[28]+1.34*x[14]*x[29]+1.82*x[14]*x[30]+0.04*x[15]*x[17]-1.32*x[15]*x[16]+0.94*x[15]*x[18]-1.44*x[15]*x[22]-0.9*x[15]*x[29]+0.82*x[16]*x[19]-0.92*x[16]*x[18]-1.08*x[16]*x[28]+(-0.4*x[17]*x[19])-0.16*x[17]*x[22]-1.78*x[17]*x[28]-0.18*x[17]*x[30]+(-0.12*x[18]*x[19])-1.7*x[18]*x[20]+1.7*x[18]*x[22]+0.92*x[19]*x[22]-0.88*x[19]*x[23]-0.4*x[19]*x[29]+1.08*x[20]*x[27]-0.9*x[20]*x[31]+0.9*x[21]*x[26]+0.18*x[21]*x[29]+0.74*x[23]*x[29]-1.56*x[23]*x[26]-1.72*x[25]*x[29]+0.52*x[26]*x[29]+1.08*x[26]*x[31]+0.16*x[28]*x[30]+0.96*x[6]*x[6]+0.84*x[7]*x[7]-0.64*x[12]*x[12]+0.5*x[13]*x[13]+0.21*x[20]*x[20]+0.23*x[27]*x[27]-0.09*x[2]+0.75*x[3]-0.98*x[4]-0.83*x[5]-0.82*x[6]+0.97*x[7]+0.66*x[8]-0.56*x[9]+0.72*x[10]-0.03*x[11]+0.32*x[12]+0.85*x[13]+0.08*x[14]-0.36*x[15]+0.61*x[16]+0.07*x[17]-0.08*x[18]-0.67*x[19]+0.01*x[20]-0.95*x[21]-0.17*x[22]+0.58*x[23]-0.94*x[24]-0.14*x[25]-0.03*x[26]+0.6*x[27]+0.78*x[28]-0.54*x[29]+0.06*x[30]-0.57*x[31] <= 92.71)
@constraint(m, e17, -0.09*x[2]+0.52*x[3]+0.87*x[4]-0.8*x[5]-0.92*x[6]-0.23*x[7]+0.27*x[8]+0.09*x[9]+0.78*x[10]+0.92*x[11]+0.01*x[12]+0.26*x[13]-0.68*x[14]+0.68*x[15]-0.26*x[16]+0.88*x[17]+0.87*x[18]-0.1*x[19]-0.15*x[20]+0.87*x[21]-0.03*x[22]-0.05*x[23]+0.37*x[24]-0.67*x[25]+0.45*x[26]+0.15*x[27]+0.56*x[28]-0.19*x[29]-0.19*x[30]+0.14*x[31] == 0.42)
@constraint(m, e18, -0.03*x[2]+0.67*x[3]-0.81*x[4]+0.63*x[5]-0.75*x[6]-0.13*x[7]+0.52*x[8]+0.95*x[9]-0.69*x[10]-0.43*x[11]+0.29*x[12]-0.02*x[13]+0.48*x[14]+0.26*x[15]+0.61*x[16]-0.51*x[17]-0.5*x[18]+0.05*x[19]-0.84*x[20]+0.62*x[21]+0.37*x[22]+0.5*x[23]+0.6*x[24]-0.44*x[25]-0.76*x[26]+0.92*x[27]+0.63*x[28]+0.88*x[29]-0.07*x[30]+0.09*x[31] == -0.78)
@constraint(m, e19, 0.02*x[2]+0.24*x[3]+0.9*x[4]-0.63*x[5]-0.79*x[6]-0.51*x[7]+0.49*x[8]-0.91*x[9]+0.24*x[10]-0.74*x[11]+0.56*x[12]-0.61*x[13]-0.18*x[14]+0.74*x[15]+0.99*x[16]-0.87*x[17]-0.87*x[18]-0.29*x[19]+0.83*x[20]-0.8*x[21]-0.17*x[22]-0.55*x[23]+0.6*x[24]-0.73*x[25]+0.6*x[26]-0.02*x[27]+0.76*x[28]+0.14*x[29]-0.66*x[30]+0.34*x[31] == 0.94)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
