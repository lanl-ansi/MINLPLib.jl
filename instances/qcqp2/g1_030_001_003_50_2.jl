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
@NLconstraint(m, e1, -(1.94*x[2]*x[4]+0.36*x[2]*x[8]+0.72*x[2]*x[9]+1.96*x[2]*x[11]+1.84*x[2]*x[13]+0.32*x[2]*x[14]-1.36*x[2]*x[15]-1.74*x[2]*x[18]-0.62*x[2]*x[21]-0.92*x[2]*x[23]+1.56*x[2]*x[25]-1.94*x[2]*x[27]-1.78*x[2]*x[30]+(-0.76*x[3]*x[8])-0.38*x[3]*x[11]+1.6*x[3]*x[12]-0.64*x[3]*x[16]-0.96*x[3]*x[18]-1.1*x[3]*x[19]-0.98*x[3]*x[20]+0.62*x[3]*x[22]-0.58*x[3]*x[23]-1.78*x[3]*x[25]+0.34*x[3]*x[27]-1.16*x[3]*x[29]+1.8*x[3]*x[31]+0.2*x[4]*x[5]-1.44*x[4]*x[7]+1.96*x[4]*x[8]-1.98*x[4]*x[9]-1.52*x[4]*x[11]-0.88*x[4]*x[12]+0.7*x[4]*x[16]-0.8*x[4]*x[20]+0.24*x[4]*x[23]+1.74*x[4]*x[24]-1.92*x[4]*x[25]-0.2*x[4]*x[27]+0.92*x[4]*x[28]+0.42*x[5]*x[10]-0.38*x[5]*x[8]+1.58*x[5]*x[16]+1.6*x[5]*x[22]-0.34*x[5]*x[25]-1.98*x[5]*x[28]+0.28*x[5]*x[29]+1.86*x[5]*x[31]+(-0.54*x[6]*x[7])-1.94*x[6]*x[10]+1.76*x[6]*x[11]+1.66*x[6]*x[13]-1.16*x[6]*x[16]-0.28*x[6]*x[18]+0.06*x[6]*x[19]-0.28*x[6]*x[21]+0.1*x[6]*x[22]+0.34*x[6]*x[25]+0.26*x[6]*x[27]-0.48*x[6]*x[31]+0.96*x[7]*x[9]+0.06*x[7]*x[11]-1.56*x[7]*x[12]-1.22*x[7]*x[13]+0.56*x[7]*x[14]+1.1*x[7]*x[16]-1.6*x[7]*x[18]+1.78*x[7]*x[20]-1.84*x[7]*x[22]+0.98*x[7]*x[25]-0.86*x[7]*x[26]-0.4*x[7]*x[27]-0.32*x[7]*x[30]-0.88*x[7]*x[31]+0.34*x[8]*x[10]-1.24*x[8]*x[18]+0.92*x[8]*x[20]+1.34*x[8]*x[28]+1.36*x[9]*x[12]-1.04*x[9]*x[11]-1.36*x[9]*x[13]+1.26*x[9]*x[14]+0.72*x[9]*x[15]+0.22*x[9]*x[20]-0.88*x[9]*x[22]-1.86*x[9]*x[24]+1.98*x[9]*x[25]-1.1*x[9]*x[28]+(-0.62*x[10]*x[11])-1.76*x[10]*x[15]+0.52*x[10]*x[16]+1.94*x[10]*x[17]-0.36*x[10]*x[18]+2*x[10]*x[19]+1.84*x[10]*x[22]+1.26*x[10]*x[23]-0.6*x[10]*x[25]+1.9*x[10]*x[28]-1.56*x[10]*x[31]+1.06*x[11]*x[14]-0.96*x[11]*x[12]-1.3*x[11]*x[15]+1.26*x[11]*x[16]+1.3*x[11]*x[18]-1.1*x[11]*x[19]+1.9*x[11]*x[21]-1.34*x[11]*x[23]+1.54*x[11]*x[24]-0.42*x[11]*x[25]-1.38*x[11]*x[28]+0.24*x[11]*x[30]+1.58*x[12]*x[13]-0.88*x[12]*x[14]+1.26*x[12]*x[15]+1.44*x[12]*x[16]+1.12*x[12]*x[20]+1.54*x[12]*x[22]-0.54*x[12]*x[25]+0.38*x[13]*x[14]+1.78*x[13]*x[15]-1.12*x[13]*x[17]+0.46*x[13]*x[19]+1.1*x[13]*x[25]-0.62*x[13]*x[27]-1.88*x[13]*x[29]+1.08*x[14]*x[15]-0.64*x[14]*x[16]+0.84*x[14]*x[18]+0.92*x[14]*x[19]-1.7*x[14]*x[20]+0.86*x[14]*x[21]+1.1*x[14]*x[23]+0.18*x[14]*x[27]+0.26*x[14]*x[28]-0.1*x[14]*x[30]+0.84*x[15]*x[17]-1.58*x[15]*x[19]+1.48*x[15]*x[20]-1.06*x[15]*x[23]-1.94*x[15]*x[24]+1.96*x[15]*x[25]+1.92*x[15]*x[26]-0.64*x[15]*x[27]+0.36*x[15]*x[28]+2*x[15]*x[29]-1.84*x[15]*x[30]+1.58*x[16]*x[20]-1.4*x[16]*x[18]-1.78*x[16]*x[21]+1.46*x[16]*x[25]+x[16]*x[26]-0.52*x[16]*x[27]+1.44*x[16]*x[28]-0.04*x[16]*x[30]+(-1.1*x[17]*x[20])-1.24*x[17]*x[21]+0.6*x[17]*x[23]+1.68*x[17]*x[24]+0.68*x[17]*x[26]-1.5*x[17]*x[27]+0.76*x[17]*x[28]-1.72*x[17]*x[29]-1.34*x[17]*x[30]-1.76*x[17]*x[31]+0.32*x[18]*x[23]-x[18]*x[27]+0.48*x[18]*x[29]+0.82*x[18]*x[30]+(-0.62*x[19]*x[20])-0.94*x[19]*x[23]+0.24*x[19]*x[25]-0.14*x[19]*x[26]-0.54*x[19]*x[27]+0.22*x[19]*x[29]-1.76*x[19]*x[31]+(-0.72*x[20]*x[22])-0.88*x[20]*x[23]-0.02*x[20]*x[24]-1.1*x[20]*x[26]-1.3*x[20]*x[27]-1.12*x[20]*x[28]-0.48*x[20]*x[29]+0.68*x[21]*x[27]-x[21]*x[26]+1.36*x[21]*x[28]-1.12*x[21]*x[31]+0.14*x[22]*x[23]-0.62*x[22]*x[27]+1.48*x[22]*x[28]+1.22*x[23]*x[26]-0.08*x[23]*x[24]-1.14*x[23]*x[31]+(-1.9*x[24]*x[25])-1.34*x[24]*x[26]+(-1.42*x[25]*x[28])-0.4*x[25]*x[29]-1.5*x[25]*x[30]+1.5*x[25]*x[31]+0.64*x[26]*x[29]-1.08*x[26]*x[28]+0.72*x[26]*x[30]+1.78*x[26]*x[31]+0.56*x[27]*x[28]+0.94*x[27]*x[30]+x[27]*x[31]-0.12*x[28]*x[29]+(-0.9*x[3]*x[3])-0.23*x[4]*x[4]+0.29*x[5]*x[5]-0.21*x[7]*x[7]-0.94*x[8]*x[8]+0.56*x[12]*x[12]+0.71*x[13]*x[13]-0.42*x[14]*x[14]+0.17*x[15]*x[15]+0.04*x[16]*x[16]+0.4*x[17]*x[17]+0.36*x[19]*x[19]-0.99*x[20]*x[20]-0.38*x[21]*x[21]-0.46*x[22]*x[22]+0.09*x[23]*x[23]+0.97*x[24]*x[24]-0.88*x[29]*x[29]+0.83*x[31]*x[31]-0.82*x[2]-0.26*x[3]+0.26*x[4]-0.54*x[5]+0.5*x[6]-0.95*x[7]+0.71*x[8]+0.61*x[9]+0.59*x[10]+0.3*x[11]-0.85*x[12]+0.19*x[13]+0.34*x[14]-0.28*x[15]+0.32*x[16]+0.49*x[17]+0.8*x[18]-0.93*x[19]-0.15*x[20]+0.94*x[21]-0.21*x[22]-0.95*x[23]+0.29*x[24]+0.63*x[25]+0.97*x[26]-0.48*x[27]-0.02*x[28]+0.65*x[29]-0.19*x[30]-0.27*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.5*x[2]*x[3]+0.16*x[2]*x[4]+1.26*x[2]*x[5]-0.9*x[2]*x[6]-1.74*x[2]*x[9]-0.74*x[2]*x[11]+1.86*x[2]*x[12]-1.5*x[2]*x[16]-1.94*x[2]*x[18]+0.16*x[2]*x[20]-1.14*x[2]*x[21]+0.6*x[2]*x[24]-1.56*x[2]*x[28]+0.86*x[3]*x[11]-1.26*x[3]*x[6]+0.62*x[3]*x[14]-0.5*x[3]*x[18]-1.48*x[3]*x[20]+0.18*x[4]*x[5]-1.4*x[4]*x[6]+0.86*x[4]*x[7]+1.62*x[4]*x[8]-0.42*x[4]*x[10]-1.1*x[4]*x[11]-1.06*x[4]*x[12]-1.1*x[4]*x[17]-1.32*x[4]*x[19]-1.94*x[4]*x[20]+0.38*x[4]*x[26]-1.74*x[4]*x[28]+0.5*x[4]*x[29]+1.82*x[4]*x[30]-0.68*x[4]*x[31]+(-1.26*x[5]*x[7])-1.54*x[5]*x[9]+1.56*x[5]*x[11]-0.96*x[5]*x[13]-0.24*x[5]*x[15]-1.96*x[5]*x[17]-1.46*x[5]*x[18]-0.86*x[5]*x[20]+0.12*x[5]*x[21]-1.3*x[5]*x[23]-1.88*x[5]*x[25]-1.06*x[5]*x[28]-0.92*x[5]*x[29]+0.3*x[6]*x[9]-0.44*x[6]*x[13]-1.96*x[6]*x[14]-0.58*x[6]*x[16]+1.98*x[6]*x[19]+0.84*x[6]*x[20]-1.56*x[6]*x[21]+0.42*x[6]*x[22]+0.26*x[6]*x[23]-0.82*x[6]*x[24]+1.5*x[6]*x[25]-1.38*x[6]*x[26]-1.3*x[6]*x[28]+1.5*x[6]*x[30]+0.48*x[6]*x[31]+0.1*x[7]*x[8]-1.32*x[7]*x[9]+0.36*x[7]*x[11]+1.14*x[7]*x[15]+1.46*x[7]*x[16]+0.58*x[7]*x[18]+1.32*x[7]*x[19]+0.84*x[7]*x[20]+1.6*x[7]*x[21]-1.14*x[7]*x[26]-1.58*x[7]*x[29]+1.96*x[7]*x[30]+1.22*x[7]*x[31]+0.78*x[8]*x[11]-1.14*x[8]*x[10]+0.78*x[8]*x[13]+1.52*x[8]*x[14]-0.08*x[8]*x[16]-1.8*x[8]*x[17]+0.54*x[8]*x[18]-0.98*x[8]*x[20]-1.14*x[8]*x[22]+1.26*x[8]*x[25]-1.5*x[8]*x[27]+1.3*x[9]*x[10]-1.8*x[9]*x[12]+1.48*x[9]*x[14]+0.44*x[9]*x[16]+0.42*x[9]*x[17]-x[9]*x[23]-1.84*x[9]*x[24]-1.76*x[9]*x[26]-0.84*x[9]*x[29]-1.18*x[9]*x[30]-1.96*x[9]*x[31]+0.48*x[10]*x[16]-0.46*x[10]*x[14]-0.96*x[10]*x[17]+0.42*x[10]*x[18]+1.82*x[10]*x[19]+1.88*x[10]*x[21]-1.36*x[10]*x[22]-1.88*x[10]*x[24]+0.46*x[10]*x[26]-0.8*x[10]*x[27]-0.52*x[10]*x[28]+1.8*x[10]*x[29]+(-1.78*x[11]*x[17])-0.3*x[11]*x[22]-0.04*x[11]*x[24]-0.24*x[11]*x[25]+1.14*x[11]*x[26]-1.7*x[11]*x[27]-1.02*x[11]*x[28]+1.62*x[11]*x[30]+0.84*x[12]*x[14]+0.54*x[12]*x[15]-1.3*x[12]*x[16]+0.06*x[12]*x[17]-1.32*x[12]*x[18]+0.34*x[12]*x[19]-0.92*x[12]*x[21]-0.6*x[12]*x[24]+1.52*x[12]*x[26]-0.54*x[12]*x[27]-1.74*x[12]*x[29]+1.76*x[12]*x[30]-1.14*x[12]*x[31]+1.96*x[13]*x[17]+1.04*x[13]*x[21]-0.78*x[13]*x[27]+1.94*x[13]*x[28]+0.88*x[13]*x[30]+1.96*x[14]*x[16]-1.82*x[14]*x[19]+1.02*x[14]*x[20]-1.34*x[14]*x[24]-1.4*x[14]*x[26]+1.72*x[14]*x[28]-0.08*x[14]*x[29]+0.06*x[14]*x[30]+1.3*x[15]*x[18]+1.9*x[15]*x[19]-1.86*x[15]*x[20]-0.9*x[15]*x[23]+1.3*x[15]*x[25]-0.64*x[15]*x[26]-1.5*x[15]*x[27]+1.94*x[15]*x[28]+1.6*x[15]*x[29]+0.14*x[15]*x[31]+0.82*x[16]*x[18]-1.38*x[16]*x[20]+1.68*x[16]*x[21]-1.66*x[16]*x[25]+0.76*x[16]*x[30]-1.4*x[16]*x[31]+1.08*x[17]*x[19]-0.96*x[17]*x[18]+0.9*x[17]*x[24]-0.72*x[17]*x[26]+0.1*x[17]*x[28]-1.04*x[17]*x[29]+(-0.62*x[18]*x[19])-0.9*x[18]*x[20]-1.06*x[18]*x[21]-1.52*x[18]*x[23]-0.46*x[18]*x[24]+1.66*x[18]*x[29]+1.44*x[19]*x[20]+0.7*x[19]*x[21]+1.78*x[19]*x[22]+1.16*x[19]*x[25]-0.84*x[19]*x[27]+0.34*x[19]*x[28]+x[20]*x[21]-0.16*x[20]*x[23]+1.42*x[20]*x[24]-1.5*x[20]*x[25]-1.06*x[20]*x[28]+0.8*x[20]*x[29]+1.78*x[20]*x[31]+1.02*x[21]*x[22]+0.48*x[21]*x[24]-0.58*x[21]*x[25]-1.16*x[21]*x[27]+0.98*x[21]*x[28]-1.38*x[21]*x[29]+0.88*x[21]*x[30]+(-0.92*x[22]*x[23])-1.96*x[22]*x[24]+1.9*x[22]*x[26]-1.8*x[22]*x[31]+0.84*x[23]*x[26]-1.32*x[23]*x[28]+0.46*x[24]*x[26]+1.82*x[24]*x[27]-0.48*x[24]*x[29]+0.22*x[25]*x[31]-1.02*x[25]*x[26]+0.5*x[26]*x[29]-1.22*x[26]*x[27]+(-0.5*x[27]*x[29])-0.8*x[27]*x[30]+1.26*x[28]*x[29]+1.44*x[29]*x[31]-0.88*x[29]*x[30]+(-0.03*x[3]*x[3])-0.1*x[5]*x[5]-0.77*x[9]*x[9]-0.55*x[11]*x[11]+0.82*x[13]*x[13]+0.09*x[15]*x[15]-0.68*x[16]*x[16]-0.86*x[17]*x[17]+0.47*x[18]*x[18]+0.87*x[22]*x[22]+0.78*x[24]*x[24]-0.04*x[25]*x[25]-0.41*x[26]*x[26]-0.37*x[28]*x[28]+0.39*x[29]*x[29]+0.29*x[30]*x[30]+0.02*x[31]*x[31]-0.68*x[2]+0.12*x[3]-0.41*x[4]-0.32*x[5]+0.99*x[6]+0.71*x[7]+0.11*x[8]-0.52*x[9]-0.28*x[10]+0.55*x[11]-0.82*x[12]-0.25*x[13]+0.31*x[14]+0.04*x[15]-0.45*x[16]-0.96*x[17]-0.61*x[18]+0.09*x[19]+0.58*x[20]+0.78*x[21]+0.99*x[22]-0.61*x[23]+0.3*x[24]-0.63*x[25]+0.52*x[26]-0.07*x[27]+0.63*x[28]+0.12*x[29]+0.05*x[30]-0.07*x[31] <= 60.36)
@constraint(m, e3, -0.31*x[2]-0.37*x[3]+0.16*x[4]+0.23*x[5]-0.35*x[6]+0.38*x[7]+0.48*x[8]+0.09*x[9]+0.82*x[10]-0.24*x[11]+0.13*x[12]+0.39*x[13]-0.52*x[14]-0.71*x[15]+0.02*x[16]-0.28*x[17]-0.53*x[18]-0.24*x[19]+0.24*x[20]+0.72*x[21]-0.07*x[22]-0.24*x[23]-0.94*x[24]-0.18*x[25]+0.19*x[26]-0.49*x[27]+0.81*x[28]+0.26*x[29]+0.05*x[30]+0.26*x[31] == -0.03)
@constraint(m, e4, -x[2]-0.23*x[3]+0.77*x[4]+0.75*x[5]-0.91*x[6]+0.38*x[7]-0.19*x[8]+0.63*x[9]-0.85*x[10]+0.03*x[11]+0.28*x[12]-0.74*x[13]+0.62*x[14]-0.05*x[15]-0.66*x[16]+0.3*x[17]-0.45*x[18]-0.73*x[19]-0.8*x[20]+0.62*x[21]+0.25*x[22]+0.84*x[23]-0.96*x[24]+0.19*x[25]+0.01*x[26]+0.31*x[27]-0.22*x[28]+0.48*x[29]+0.34*x[30]+0.62*x[31] == 0.58)
@constraint(m, e5, 0.57*x[2]+0.82*x[3]-0.95*x[4]+0.24*x[5]-0.59*x[6]+0.95*x[7]-0.95*x[8]+0.03*x[9]-0.82*x[10]-0.29*x[11]+0.85*x[12]-0.08*x[13]+0.59*x[14]-0.27*x[15]+0.65*x[16]-0.04*x[17]-0.49*x[18]+0.23*x[19]-0.77*x[20]+0.01*x[21]+0.99*x[22]+0.83*x[23]-0.84*x[24]-0.94*x[25]+0.5*x[26]+0.37*x[27]-0.28*x[28]+0.94*x[29]+0.15*x[30]+0.11*x[31] == -0.91)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
