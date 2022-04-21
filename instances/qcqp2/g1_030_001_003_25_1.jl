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
@NLconstraint(m, e1, -(-0.44*x[2]*x[9]-1.54*x[2]*x[20]+1.82*x[2]*x[21]+0.92*x[2]*x[22]-0.6*x[2]*x[26]+0.64*x[2]*x[27]-1.64*x[2]*x[28]+1.5*x[3]*x[8]-1.3*x[3]*x[6]+0.06*x[3]*x[13]+0.9*x[3]*x[15]-1.36*x[3]*x[24]-1.14*x[3]*x[25]+1.98*x[3]*x[29]+0.04*x[4]*x[12]+1.24*x[4]*x[26]+1.78*x[5]*x[7]+0.68*x[5]*x[18]-x[5]*x[23]-1.26*x[5]*x[27]+1.7*x[6]*x[12]+1.62*x[6]*x[21]+0.46*x[6]*x[28]-1.82*x[6]*x[29]+0.96*x[7]*x[23]-1.92*x[7]*x[13]+0.18*x[7]*x[28]+1.66*x[7]*x[29]+0.6*x[8]*x[13]+1.28*x[8]*x[14]-0.7*x[8]*x[15]+0.44*x[8]*x[17]-1.34*x[8]*x[21]-1.78*x[8]*x[29]+1.16*x[9]*x[11]-0.26*x[9]*x[10]-0.86*x[9]*x[16]+1.48*x[9]*x[18]-1.84*x[9]*x[22]-0.8*x[9]*x[25]+1.8*x[9]*x[28]+0.92*x[9]*x[30]+1.96*x[10]*x[15]-1.46*x[10]*x[17]+0.38*x[10]*x[18]+0.96*x[10]*x[19]+0.42*x[10]*x[22]+(-1.38*x[11]*x[18])-0.64*x[11]*x[19]+1.54*x[11]*x[20]-0.38*x[11]*x[25]+0.46*x[11]*x[26]-0.1*x[11]*x[27]+0.28*x[12]*x[17]-0.04*x[12]*x[19]-0.36*x[12]*x[22]-0.96*x[12]*x[29]+x[12]*x[30]+1.22*x[13]*x[22]-0.92*x[13]*x[20]+1.72*x[13]*x[29]+0.6*x[14]*x[15]-1.18*x[14]*x[22]+2*x[14]*x[26]+1.54*x[14]*x[27]-0.88*x[14]*x[28]+(-0.68*x[15]*x[16])-1.02*x[15]*x[17]+0.9*x[15]*x[30]+0.92*x[16]*x[17]+1.5*x[16]*x[18]+0.52*x[16]*x[21]-0.06*x[16]*x[22]-0.5*x[16]*x[24]+1.96*x[16]*x[25]-0.78*x[16]*x[30]+1.82*x[16]*x[31]+1.96*x[17]*x[19]+0.62*x[17]*x[21]+0.38*x[18]*x[19]+0.34*x[18]*x[20]-1.74*x[18]*x[28]+0.9*x[18]*x[31]+(-0.36*x[19]*x[21])-1.6*x[19]*x[23]-1.7*x[19]*x[27]+1.9*x[20]*x[30]-0.04*x[20]*x[29]+(-1.04*x[21]*x[24])-1.78*x[21]*x[30]+0.8*x[22]*x[26]+1.28*x[22]*x[31]+1.96*x[23]*x[27]-0.3*x[23]*x[26]-0.28*x[23]*x[28]-0.14*x[23]*x[29]-0.9*x[23]*x[30]+1.7*x[23]*x[31]+0.56*x[24]*x[27]-0.1*x[24]*x[26]+0.7*x[25]*x[31]+1.28*x[26]*x[27]-1.62*x[26]*x[31]+(-0.3*x[27]*x[28])-0.2*x[27]*x[30]-0.26*x[28]*x[31]+0.92*x[13]*x[13]-0.13*x[10]*x[10]+0.3*x[19]*x[19]+0.78*x[22]*x[22]+0.95*x[23]*x[23]+0.86*x[26]*x[26]-0.55*x[31]*x[31]+0.52*x[2]+0.22*x[3]+0.39*x[4]+0.63*x[5]+0.42*x[6]+0.3*x[7]-0.39*x[8]+0.66*x[9]+0.66*x[10]-0.05*x[11]+0.15*x[12]-0.73*x[13]-0.56*x[14]+0.42*x[15]-0.47*x[16]+0.95*x[17]+0.38*x[18]+0.28*x[19]-0.94*x[20]+0.35*x[21]+0.22*x[22]-0.2*x[23]-0.18*x[24]+0.18*x[25]-0.29*x[26]-0.19*x[27]+0.26*x[28]-0.97*x[29]-0.58*x[30]+0.31*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 1.06*x[2]*x[6]+1.42*x[2]*x[12]-1.06*x[2]*x[22]-1.2*x[2]*x[29]-1.04*x[2]*x[30]+0.22*x[3]*x[6]-0.12*x[3]*x[5]-1.72*x[3]*x[20]+1.5*x[3]*x[21]+0.64*x[3]*x[26]+(-0.36*x[4]*x[7])-0.18*x[4]*x[11]+0.72*x[4]*x[18]+0.24*x[4]*x[29]+0.16*x[5]*x[9]-x[5]*x[11]-0.66*x[5]*x[12]-1.22*x[5]*x[15]+1.18*x[5]*x[25]-1.04*x[5]*x[29]+0.16*x[5]*x[30]+(-x[6]*x[7])-1.12*x[6]*x[9]+1.52*x[6]*x[10]+1.06*x[6]*x[16]-0.84*x[6]*x[18]-0.46*x[6]*x[19]-1.52*x[6]*x[20]-0.14*x[6]*x[25]-0.66*x[6]*x[27]-0.82*x[6]*x[29]+0.38*x[6]*x[31]+1.6*x[7]*x[8]+1.14*x[7]*x[10]-1.74*x[7]*x[12]+0.12*x[7]*x[14]+1.14*x[7]*x[15]-1.08*x[7]*x[18]-0.4*x[7]*x[25]+0.78*x[7]*x[29]+0.86*x[7]*x[30]+0.92*x[8]*x[9]-0.52*x[8]*x[10]+0.2*x[8]*x[18]+(-2*x[9]*x[14])-0.68*x[9]*x[17]-0.28*x[9]*x[21]-0.02*x[9]*x[23]-1.86*x[9]*x[28]+1.02*x[10]*x[11]+0.2*x[10]*x[14]+1.5*x[10]*x[20]-1.04*x[10]*x[22]+1.56*x[10]*x[25]+0.98*x[10]*x[28]+0.82*x[11]*x[19]-1.78*x[11]*x[13]-0.06*x[11]*x[24]-1.24*x[11]*x[26]+1.88*x[11]*x[31]+(-1.04*x[12]*x[16])-0.82*x[12]*x[23]+1.12*x[12]*x[30]+0.44*x[13]*x[15]-0.86*x[13]*x[18]+1.68*x[13]*x[22]-1.98*x[13]*x[24]-1.12*x[13]*x[25]-0.54*x[13]*x[28]+(-1.38*x[14]*x[15])-0.96*x[14]*x[17]-0.88*x[14]*x[24]+0.44*x[14]*x[29]-0.66*x[14]*x[30]-0.42*x[14]*x[31]+1.8*x[15]*x[22]-1.34*x[15]*x[18]+1.1*x[15]*x[23]+0.58*x[15]*x[24]+(-1.84*x[16]*x[27])-1.76*x[16]*x[28]+1.28*x[17]*x[22]+1.48*x[17]*x[24]+0.96*x[17]*x[28]-0.18*x[17]*x[30]-1.22*x[18]*x[22]+1.24*x[19]*x[22]+0.22*x[19]*x[23]+1.16*x[19]*x[31]+(-1.72*x[20]*x[28])-0.14*x[20]*x[30]+1.22*x[20]*x[31]+1.6*x[21]*x[31]-0.88*x[21]*x[30]+0.22*x[22]*x[24]+0.24*x[22]*x[28]-0.6*x[22]*x[30]+0.98*x[23]*x[29]-1.08*x[23]*x[30]-1.96*x[24]*x[30]+(-1.94*x[25]*x[27])-1.1*x[25]*x[28]-1.94*x[26]*x[27]+0.94*x[27]*x[29]+1.52*x[27]*x[31]+1.96*x[29]*x[31]+1.3*x[30]*x[31]+0.43*x[3]*x[3]-0.38*x[7]*x[7]+0.72*x[9]*x[9]-0.07*x[17]*x[17]-0.03*x[24]*x[24]+0.55*x[25]*x[25]-0.87*x[2]+0.32*x[3]+0.98*x[4]+0.83*x[5]+0.18*x[6]+0.05*x[7]-0.61*x[8]+0.15*x[9]-0.24*x[10]+0.42*x[11]+0.49*x[12]-0.3*x[13]-0.77*x[14]-0.9*x[15]-0.69*x[16]+0.56*x[17]+0.82*x[18]-0.74*x[19]+0.46*x[20]-0.2*x[21]+0.31*x[22]-0.49*x[23]-0.47*x[24]+0.09*x[25]-0.76*x[26]+0.72*x[27]-0.34*x[28]+0.95*x[29]+0.46*x[30]-0.38*x[31] <= 63.33)
@constraint(m, e3, -0.65*x[2]+0.36*x[3]-0.19*x[4]-0.45*x[5]+0.62*x[6]+0.66*x[7]-0.02*x[8]+0.95*x[9]-0.63*x[10]-0.48*x[11]-0.65*x[12]-0.69*x[13]-0.01*x[14]-0.98*x[15]+0.61*x[16]-0.49*x[17]+0.91*x[18]+0.77*x[19]+0.37*x[20]-0.36*x[21]+0.4*x[22]+0.99*x[23]-0.6*x[24]-0.66*x[25]+0.58*x[26]-0.28*x[27]+0.47*x[28]-0.81*x[29]-0.94*x[30]-0.27*x[31] == -0.3)
@constraint(m, e4, -0.34*x[2]+0.6*x[3]+0.27*x[4]+0.7*x[5]-0.49*x[6]+0.37*x[7]-0.07*x[8]-0.1*x[9]+0.09*x[10]+0.01*x[11]-0.94*x[12]-0.11*x[13]+0.75*x[14]+0.29*x[15]-0.98*x[16]+0.97*x[17]-0.8*x[18]-0.79*x[19]-0.01*x[20]-0.64*x[21]-0.2*x[22]+0.62*x[23]+0.18*x[24]+0.93*x[25]+0.23*x[26]+0.13*x[27]+0.47*x[28]+0.76*x[29]-0.17*x[30]-0.63*x[31] == 0.55)
@constraint(m, e5, 0.42*x[2]+0.43*x[3]+0.84*x[4]+0.58*x[5]-0.71*x[6]-0.88*x[7]-0.77*x[8]+0.93*x[9]-0.72*x[10]+0.44*x[11]-0.19*x[12]-0.75*x[13]+0.9*x[14]+0.31*x[15]-0.07*x[16]-0.87*x[17]-0.96*x[18]+0.89*x[19]-0.83*x[20]-0.2*x[21]-0.33*x[22]+0.94*x[23]+0.65*x[24]+0.31*x[25]-0.54*x[26]-0.29*x[27]-0.63*x[28]-0.48*x[29]-0.58*x[30]-0.89*x[31] == -0.9)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 