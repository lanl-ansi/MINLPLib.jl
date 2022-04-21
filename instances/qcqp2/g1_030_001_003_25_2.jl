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
@NLconstraint(m, e1, -(1.94*x[2]*x[6]+0.36*x[2]*x[11]+1.96*x[2]*x[13]+1.84*x[2]*x[15]-1.36*x[2]*x[19]-1.74*x[2]*x[23]-0.62*x[2]*x[26]+(-1.78*x[3]*x[5])-0.76*x[3]*x[12]-0.38*x[3]*x[16]+1.6*x[3]*x[17]-0.64*x[3]*x[22]-0.98*x[3]*x[24]+0.62*x[3]*x[26]-0.58*x[3]*x[27]+0.2*x[4]*x[7]-1.44*x[4]*x[9]+1.96*x[4]*x[10]-1.52*x[4]*x[12]-0.88*x[4]*x[13]+0.7*x[4]*x[18]+0.24*x[4]*x[26]-0.2*x[4]*x[28]+0.58*x[5]*x[7]+1.6*x[5]*x[23]-0.34*x[5]*x[26]+1.86*x[6]*x[8]-0.54*x[6]*x[12]+1.66*x[6]*x[18]+0.34*x[6]*x[26]+0.26*x[6]*x[30]+0.96*x[7]*x[13]-0.42*x[7]*x[11]-1.22*x[7]*x[16]+0.56*x[7]*x[17]-1.6*x[7]*x[20]-1.84*x[7]*x[24]-0.86*x[7]*x[28]+(-1.88*x[8]*x[9])-1.24*x[8]*x[24]+0.92*x[8]*x[26]+1.34*x[9]*x[13]-1.04*x[9]*x[23]+0.72*x[9]*x[24]-0.88*x[9]*x[30]+(-1.1*x[10]*x[14])-1.76*x[10]*x[22]+1.94*x[10]*x[23]-0.36*x[10]*x[24]+2*x[10]*x[26]+1.84*x[10]*x[29]+1.26*x[10]*x[31]+1.3*x[11]*x[25]-1.3*x[11]*x[23]+1.54*x[11]*x[29]+0.24*x[12]*x[17]+1.12*x[12]*x[19]+1.58*x[12]*x[20]-0.88*x[12]*x[21]+0.38*x[13]*x[24]+1.78*x[13]*x[25]-1.12*x[13]*x[27]+1.1*x[14]*x[17]-1.88*x[14]*x[20]-0.84*x[14]*x[24]+1.08*x[14]*x[26]-0.64*x[14]*x[27]+0.84*x[14]*x[29]+0.92*x[14]*x[30]-1.7*x[14]*x[31]+1.1*x[15]*x[17]-1.58*x[15]*x[28]+2*x[16]*x[19]+0.08*x[16]*x[22]+1.58*x[16]*x[25]-1.78*x[16]*x[26]+1.46*x[16]*x[30]-0.52*x[16]*x[31]+(-1.1*x[17]*x[23])-1.24*x[17]*x[24]+0.6*x[17]*x[27]+1.68*x[17]*x[29]-1.5*x[17]*x[31]-x[18]*x[30]+0.24*x[19]*x[25]-0.94*x[19]*x[23]-0.54*x[19]*x[26]+(-0.88*x[20]*x[22])-0.02*x[20]*x[23]-1.12*x[20]*x[26]-0.48*x[20]*x[27]+0.68*x[21]*x[26]+1.36*x[21]*x[27]+0.14*x[22]*x[23]-0.62*x[22]*x[29]+1.22*x[23]*x[26]-1.9*x[23]*x[31]-1.34*x[24]*x[25]+1.5*x[25]*x[30]+0.64*x[26]*x[27]+0.72*x[26]*x[28]+x[26]*x[31]-0.12*x[27]*x[30]-1.76*x[28]*x[30]+1.66*x[30]*x[31]+0.9*x[4]*x[4]-0.16*x[8]*x[8]+0.43*x[15]*x[15]+0.96*x[16]*x[16]-0.67*x[18]*x[18]+0.24*x[19]*x[19]-0.88*x[20]*x[20]-0.56*x[22]*x[22]-0.82*x[2]-0.26*x[3]+0.26*x[4]-0.54*x[5]+0.5*x[6]-0.95*x[7]+0.71*x[8]+0.61*x[9]+0.59*x[10]+0.3*x[11]-0.85*x[12]+0.19*x[13]+0.34*x[14]-0.28*x[15]+0.32*x[16]+0.49*x[17]+0.8*x[18]-0.93*x[19]-0.15*x[20]+0.94*x[21]-0.21*x[22]-0.95*x[23]+0.29*x[24]+0.63*x[25]+0.97*x[26]-0.48*x[27]-0.02*x[28]+0.65*x[29]-0.19*x[30]-0.27*x[31])+x[1] == 0.0)
@NLconstraint(m, e2, 0.64*x[2]*x[11]-1.92*x[2]*x[9]+1.88*x[2]*x[16]+1.36*x[2]*x[18]+1.84*x[2]*x[21]+1.36*x[2]*x[22]-1.02*x[2]*x[25]-1.4*x[2]*x[28]+0.5*x[2]*x[31]+(-0.64*x[3]*x[4])-1.86*x[3]*x[6]+0.32*x[3]*x[8]-0.74*x[3]*x[14]+1.86*x[3]*x[17]+0.32*x[3]*x[18]+1.02*x[3]*x[23]-0.06*x[3]*x[24]+1.9*x[3]*x[25]+0.66*x[3]*x[26]+0.16*x[4]*x[7]-1.68*x[4]*x[6]+0.94*x[4]*x[8]-1.08*x[4]*x[22]+1.44*x[4]*x[26]+1.58*x[5]*x[8]-1.64*x[5]*x[12]-0.86*x[5]*x[14]+0.18*x[5]*x[17]-1.02*x[5]*x[23]+0.8*x[5]*x[25]+0.06*x[6]*x[8]+0.76*x[6]*x[17]+0.82*x[6]*x[22]+0.96*x[6]*x[25]+1.32*x[6]*x[29]+0.78*x[7]*x[24]+1.62*x[8]*x[12]-1.1*x[8]*x[14]-1.54*x[8]*x[20]-0.8*x[8]*x[21]-0.84*x[8]*x[24]+(-0.38*x[9]*x[11])-0.86*x[9]*x[14]+1.14*x[9]*x[16]-1.32*x[9]*x[18]-1.78*x[9]*x[19]+0.2*x[9]*x[27]-1.4*x[9]*x[30]+(-0.7*x[10]*x[12])-1.62*x[10]*x[16]-1.26*x[10]*x[26]-1.34*x[10]*x[30]-1.12*x[10]*x[31]+(-1.06*x[11]*x[13])-1.84*x[11]*x[18]-0.36*x[11]*x[20]+1.72*x[11]*x[22]-1.64*x[11]*x[24]+1.18*x[11]*x[27]+0.82*x[12]*x[16]-0.2*x[12]*x[31]+0.82*x[13]*x[19]+0.14*x[13]*x[25]+1.26*x[13]*x[26]+1.26*x[13]*x[30]+1.96*x[14]*x[27]-0.34*x[14]*x[24]+0.68*x[14]*x[30]+0.9*x[14]*x[31]+0.26*x[15]*x[21]-0.16*x[15]*x[22]+0.36*x[15]*x[25]+0.92*x[15]*x[27]-0.08*x[15]*x[30]+(-1.8*x[16]*x[20])-1.42*x[16]*x[24]+1.2*x[16]*x[28]-1.96*x[16]*x[31]+1.3*x[17]*x[18]+0.06*x[17]*x[21]+0.7*x[18]*x[23]+0.86*x[18]*x[28]+1.46*x[18]*x[29]+1.82*x[19]*x[20]-0.02*x[19]*x[22]-1.04*x[19]*x[29]+1.02*x[20]*x[23]+0.26*x[20]*x[25]+0.8*x[20]*x[27]-0.28*x[20]*x[29]+1.8*x[21]*x[22]+1.64*x[21]*x[27]+(-1.68*x[22]*x[23])-0.76*x[22]*x[25]-0.38*x[22]*x[26]+1.72*x[22]*x[28]+0.46*x[23]*x[26]-0.28*x[23]*x[24]+1.2*x[23]*x[31]+(-1.38*x[24]*x[26])-1.64*x[24]*x[30]+1.82*x[25]*x[28]-1.06*x[25]*x[27]+1.5*x[26]*x[29]+0.12*x[27]*x[31]-1.86*x[27]*x[29]+1.08*x[28]*x[31]+0.02*x[2]*x[2]+0.22*x[4]*x[4]+0.32*x[6]*x[6]-0.46*x[13]*x[13]+0.51*x[23]*x[23]-0.52*x[27]*x[27]-0.68*x[2]+0.12*x[3]-0.41*x[4]-0.32*x[5]+0.99*x[6]+0.71*x[7]+0.11*x[8]-0.52*x[9]-0.28*x[10]+0.55*x[11]-0.82*x[12]-0.25*x[13]+0.31*x[14]+0.04*x[15]-0.45*x[16]-0.96*x[17]-0.61*x[18]+0.09*x[19]+0.58*x[20]+0.78*x[21]+0.99*x[22]-0.61*x[23]+0.3*x[24]-0.63*x[25]+0.52*x[26]-0.07*x[27]+0.63*x[28]+0.12*x[29]+0.05*x[30]-0.07*x[31] <= 60.36)
@constraint(m, e3, -0.48*x[2]+0.99*x[3]+0.49*x[4]+0.55*x[5]+0.5*x[6]+0.03*x[7]+0.98*x[8]+0.99*x[9]+0.78*x[10]-0.44*x[11]-0.67*x[12]-0.67*x[13]-0.73*x[14]-0.45*x[15]-0.9*x[16]-0.04*x[17]+0.03*x[18]+0.95*x[19]-0.8*x[20]-0.08*x[21]+0.06*x[22]+0.63*x[23]+0.81*x[24]+0.68*x[25]-0.21*x[26]+0.13*x[27]+0.52*x[28]+0.79*x[29]-0.37*x[30]+0.39*x[31] == 0.4)
@constraint(m, e4, -0.51*x[2]+0.39*x[3]-0.05*x[4]-0.99*x[5]-0.6*x[6]+0.34*x[7]-0.84*x[8]-0.16*x[9]+0.42*x[10]+0.13*x[11]-0.66*x[12]+0.3*x[13]+0.2*x[14]+0.68*x[15]+0.92*x[16]+0.08*x[17]+0.54*x[18]-0.97*x[19]-0.39*x[20]+0.18*x[21]-0.95*x[22]-0.11*x[23]+0.06*x[24]-0.93*x[25]+0.75*x[26]-0.33*x[27]+0.37*x[28]+0.67*x[29]+0.92*x[30]+0.71*x[31] == 0.94)
@constraint(m, e5, -0.45*x[2]-0.47*x[3]-0.91*x[4]-0.72*x[5]-0.05*x[6]-0.39*x[7]-0.52*x[8]-0.42*x[9]+0.79*x[10]+0.67*x[11]-0.88*x[12]-0.59*x[13]+0.78*x[14]+0.59*x[15]-0.92*x[16]+0.41*x[17]+0.87*x[18]-0.27*x[19]+0.13*x[20]+0.61*x[21]+0.34*x[22]-0.97*x[23]+x[24]+0.34*x[25]+0.07*x[26]+0.25*x[27]-0.44*x[28]-0.08*x[29]-0.26*x[30]-0.4*x[31] == -0.58)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 