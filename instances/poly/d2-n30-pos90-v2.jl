using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[30], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 9.0)
set_lower_bound(x[2], 3.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 4.0)
set_upper_bound(x[3], 6.0)
set_lower_bound(x[4], 3.0)
set_upper_bound(x[4], 7.0)
set_lower_bound(x[5], 3.0)
set_upper_bound(x[5], 8.0)
set_upper_bound(x[6], 6.0)
set_lower_bound(x[7], 2.0)
set_upper_bound(x[7], 8.0)
set_upper_bound(x[8], 9.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 9.0)
set_lower_bound(x[10], 4.0)
set_upper_bound(x[10], 6.0)
set_lower_bound(x[11], 3.0)
set_upper_bound(x[11], 9.0)
set_lower_bound(x[12], 1.0)
set_upper_bound(x[12], 8.0)
set_upper_bound(x[13], 7.0)
set_lower_bound(x[14], 4.0)
set_upper_bound(x[14], 8.0)
set_lower_bound(x[15], 2.0)
set_upper_bound(x[15], 7.0)
set_lower_bound(x[16], 2.0)
set_upper_bound(x[16], 10.0)
set_lower_bound(x[17], 1.0)
set_upper_bound(x[17], 10.0)
set_lower_bound(x[18], 4.0)
set_upper_bound(x[18], 7.0)
set_lower_bound(x[19], 2.0)
set_upper_bound(x[19], 10.0)
set_lower_bound(x[20], 2.0)
set_upper_bound(x[20], 6.0)
set_upper_bound(x[21], 10.0)
set_upper_bound(x[22], 7.0)
set_upper_bound(x[23], 6.0)
set_lower_bound(x[24], 4.0)
set_upper_bound(x[24], 9.0)
set_lower_bound(x[25], 1.0)
set_upper_bound(x[25], 10.0)
set_lower_bound(x[26], 3.0)
set_upper_bound(x[26], 7.0)
set_lower_bound(x[27], 3.0)
set_upper_bound(x[27], 9.0)
set_lower_bound(x[28], 3.0)
set_upper_bound(x[28], 7.0)
set_lower_bound(x[29], 1.0)
set_upper_bound(x[29], 7.0)
set_upper_bound(x[30], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.66*x[5]-3.55*x[6]-x[8]+3.25*x[9]+4.2*x[10]+2.32*x[18]-0.81*x[22]-4.99*x[23] >= 20.7)
@NLconstraint(m, e2, 4.02*x[1]-1.47*x[1]*x[6]-3.7*x[1]*x[7]-2.81*x[1]*x[13]-3.5*x[1]*x[15]+4.73*x[1]*x[20]-4.11*x[20]+4.04*x[2]*x[3]-1.97*x[3]+3.02*x[2]*x[8]-4.74*x[2]*x[12]-4.64*x[2]*x[13]+0.14*x[2]*x[16]-0.31*x[2]*x[20]-3.75*x[2]*x[22]+0.72*x[2]*x[28]-1.17*x[2]*x[29]-2.19*x[3]*x[5]+1.56*x[5]+3.2*x[3]*x[7]-2.91*x[3]*x[24]-2.89*x[3]*x[26]-2.34*x[3]*x[28]+0.61*x[4]*x[6]-0.9*x[4]*x[7]+2.74*x[4]*x[12]+3.02*x[4]*x[22]+1.78*x[4]*x[25]+0.96*x[4]*x[29]+3.23*x[5]*x[8]-2.21*x[5]*x[9]-3.37*x[9]-4.01*x[5]*x[13]+4.23*x[5]*x[18]-2.03*x[5]*x[19]+3.36*x[19]-4.57*x[5]*x[22]-2.03*x[5]*x[28]-2.82*x[5]*x[29]+4.07*x[6]*x[6]-4.43*x[6]*x[10]-2.81*x[10]+1.96*x[6]*x[11]+0.2*x[6]*x[16]-3.06*x[6]*x[18]+3.13*x[6]*x[23]-0.39*x[6]*x[27]-4.83*x[27]+1.6*x[7]*x[9]+1.62*x[7]*x[11]+1.2*x[7]*x[15]-3.52*x[7]*x[16]+3.48*x[7]*x[21]-0.8*x[21]+3.77*x[7]*x[22]-0.64*x[7]*x[26]-2.91*x[7]*x[27]-2.83*x[7]*x[29]-0.57*x[8]*x[15]-3.87*x[8]*x[16]-4.14*x[8]*x[17]-2.82*x[17]-3.34*x[8]*x[22]-3.59*x[8]*x[25]+0.5*x[8]*x[26]+2.55*x[8]*x[28]+1.71*x[9]*x[9]+2.6*x[9]*x[10]+4.6*x[9]*x[11]+3.76*x[9]*x[18]-4.88*x[9]*x[23]-0.96*x[10]*x[18]-2.2*x[10]*x[19]+3.01*x[10]*x[23]-3.37*x[10]*x[29]-0.38*x[10]*x[30]+2.3*x[11]*x[11]-0.38*x[11]*x[12]-1.08*x[11]*x[15]+2.6*x[11]*x[17]-2.41*x[11]*x[26]+0.61*x[12]*x[14]+1.26*x[14]+0.76*x[12]*x[16]+0.56*x[12]*x[19]+2.51*x[12]*x[30]-2.08*x[13]*x[19]-2.66*x[13]*x[28]-3.1*x[13]*x[29]-1.51*x[14]*x[15]+4.03*x[14]*x[17]+0.88*x[14]*x[22]-1.15*x[14]*x[23]+0.19*x[14]*x[28]-0.55*x[14]*x[29]+0.27*x[15]*x[16]+3.99*x[15]*x[17]-2.61*x[15]*x[22]+3.82*x[15]*x[25]+1.76*x[15]*x[27]+0.26*x[16]*x[18]-2.97*x[16]*x[22]-3.92*x[16]*x[23]+2.75*x[16]*x[27]+2.98*x[17]*x[20]-1.06*x[17]*x[24]-4.28*x[17]*x[28]+0.74*x[18]*x[18]+3.82*x[18]*x[19]-1.14*x[18]*x[24]-4.84*x[19]*x[23]-0.37*x[19]*x[24]+3.99*x[19]*x[25]-2.6*x[19]*x[27]-1.6*x[19]*x[28]+1.78*x[19]*x[29]-1.88*x[20]*x[22]+0.94*x[21]*x[24]+0.73*x[22]*x[25]-0.62*x[22]*x[27]-1.76*x[22]*x[30]-0.7*x[23]*x[26]-2.74*x[23]*x[30]+1.42*x[24]*x[26]+3.34*x[25]*x[25]+1.65*x[25]*x[26]-3.94*x[25]*x[27]-1.58*x[25]*x[28]-3.29*x[25]*x[29]-0.26*x[25]*x[30]+3.49*x[27]*x[27]+0.04*x[28]*x[28]-0.81*x[28]*x[29]-x[28]*x[30]-0.88*x[29]*x[30] >= -959.7)
@constraint(m, e3, 3.74*x[1]-4.94*x[2]+4.23*x[3]-3.71*x[4]-0.81*x[16]+2.71*x[17]-3.02*x[22]+4.84*x[24]-3.99*x[27]-2.86*x[29] >= -15.3)
@NLconstraint(m, e4, 3.1*x[16]-1.45*x[1]*x[16]-1.11*x[1]*x[17]-4.14*x[1]*x[20]+0.55*x[1]*x[23]+1.95*x[1]*x[26]-3.54*x[1]*x[27]-2.37*x[1]*x[29]+0.19*x[2]*x[2]+3.44*x[2]*x[5]-x[2]*x[6]-2.75*x[2]*x[8]-3.87*x[8]+0.41*x[2]*x[10]-4.81*x[2]*x[15]-0.04*x[2]*x[20]-0.76*x[2]*x[23]-3.67*x[3]*x[3]+1.34*x[3]*x[5]+4.96*x[3]*x[9]+3.77*x[9]+3.26*x[3]*x[11]-1.43*x[3]*x[14]-2.69*x[14]+0.27*x[3]*x[15]+4.8*x[3]*x[18]+2.91*x[3]*x[20]+1.11*x[3]*x[23]-4.16*x[3]*x[25]-3.06*x[3]*x[27]+0.57*x[4]*x[4]-3.14*x[4]-3.06*x[4]*x[7]+3.96*x[4]*x[18]-4.43*x[4]*x[21]+2.7*x[4]*x[26]-4.92*x[4]*x[27]+1.4*x[5]*x[9]+3.42*x[5]*x[10]-1.37*x[5]*x[11]+1.21*x[5]*x[24]+1.76*x[5]*x[25]+3.65*x[5]*x[26]-2.3*x[5]*x[27]+2.88*x[6]*x[6]+0.34*x[6]*x[7]-0.9*x[6]*x[13]+2.64*x[6]*x[14]-1.23*x[6]*x[23]+4.05*x[7]*x[7]+0.26*x[7]*x[9]-0.5*x[7]*x[12]-4.35*x[12]-4.88*x[7]*x[21]-1.12*x[7]*x[26]+0.2*x[7]*x[30]+0.16*x[8]*x[12]+0.52*x[8]*x[13]+1.8*x[8]*x[17]+4.1*x[8]*x[20]+1.42*x[8]*x[23]+3.39*x[8]*x[30]-1.27*x[9]*x[12]+0.66*x[9]*x[30]+1.96*x[10]*x[14]-0.79*x[10]*x[17]-1.58*x[10]*x[18]-2.51*x[10]*x[19]-2.22*x[10]*x[21]+2.01*x[10]*x[22]+3.07*x[22]+2.57*x[10]*x[24]-4.28*x[10]*x[30]-0.77*x[11]*x[12]+1.83*x[11]*x[16]+0.01*x[11]*x[23]+1.52*x[11]*x[25]+0.81*x[11]*x[30]+2.52*x[12]*x[18]-3.61*x[12]*x[22]-3.84*x[12]*x[23]+3.35*x[12]*x[24]-4.79*x[13]*x[14]-2.3*x[13]*x[16]-3.14*x[13]*x[18]-0.55*x[13]*x[21]-3.08*x[13]*x[26]+3.93*x[13]*x[30]-4.81*x[14]*x[14]+4.42*x[14]*x[16]+2.39*x[14]*x[24]+0.33*x[14]*x[27]+3.7*x[15]*x[20]+2.4*x[15]*x[23]-2.35*x[15]*x[29]-2.69*x[16]*x[19]-3.76*x[16]*x[20]-4.26*x[16]*x[24]+1.15*x[16]*x[26]+1.55*x[16]*x[29]+3.16*x[18]*x[30]+4.53*x[19]*x[20]-0.68*x[19]*x[23]-1.98*x[19]*x[26]+2.36*x[19]*x[28]+0.53*x[28]-1.88*x[20]*x[22]+2.75*x[20]*x[27]-2.18*x[21]*x[23]-3.49*x[21]*x[30]-0.22*x[22]*x[23]+0.99*x[22]*x[25]+1.06*x[23]*x[26]-2.3*x[23]*x[30]-3.65*x[24]*x[29]-2.54*x[26]*x[29]+2.93*x[27]*x[27]-0.11*x[27]*x[28] >= -441.5)
@constraint(m, e5, 3.64*x[2]+2.37*x[5]-0.37*x[8]+4.9*x[9]+1.11*x[16]+3.3*x[19]-2.67*x[20]-3.77*x[24] >= 50.7)
@NLconstraint(m, e6, 1.57*x[1]*x[6]-2.28*x[6]-1.91*x[1]*x[9]+0.5*x[1]*x[13]-0.72*x[1]*x[15]-0.01*x[1]*x[18]-1.19*x[18]+2.6*x[1]*x[22]-2.53*x[22]-0.61*x[2]*x[2]-2.3*x[2]*x[4]-4.27*x[2]*x[5]-3.7*x[2]*x[7]-2.49*x[7]-0.24*x[2]*x[9]-3.22*x[2]*x[14]-0.64*x[2]*x[22]-4.04*x[2]*x[25]+2.68*x[2]*x[29]+2.14*x[3]*x[4]+2.13*x[3]*x[5]-3.83*x[3]*x[17]-1.08*x[17]-1.75*x[3]*x[22]+2.82*x[3]*x[25]-1.16*x[3]*x[27]-0.09*x[3]*x[28]-0.22*x[4]*x[4]-0.65*x[4]*x[6]-4.28*x[4]*x[20]-3.64*x[4]*x[21]+1.94*x[4]*x[22]-3.56*x[4]*x[26]-2.06*x[5]*x[11]-2.06*x[5]*x[17]-3.44*x[5]*x[18]+3.96*x[5]*x[25]-2.96*x[6]*x[8]+4.69*x[6]*x[11]-3.55*x[6]*x[13]-2.29*x[6]*x[15]+2.19*x[6]*x[18]+0.86*x[6]*x[21]+3.07*x[7]*x[8]+0.3*x[7]*x[10]+2.2*x[10]-2.9*x[7]*x[20]-2.57*x[7]*x[24]+4.15*x[7]*x[26]-3.36*x[7]*x[29]-4.27*x[7]*x[30]-2.86*x[8]*x[8]-4.59*x[8]*x[12]+1.32*x[8]*x[16]-2.66*x[8]*x[22]+1.29*x[8]*x[25]+4.13*x[8]*x[27]-2.48*x[8]*x[30]+2.34*x[9]*x[10]+3.53*x[9]*x[15]+3.33*x[9]*x[16]-0.82*x[9]*x[19]+3.96*x[9]*x[20]+4.31*x[10]*x[15]-0.45*x[10]*x[16]-4.57*x[10]*x[22]-1.36*x[11]*x[14]+2.91*x[11]*x[19]-0.97*x[11]*x[23]+2.74*x[11]*x[24]+3.44*x[11]*x[25]+4.85*x[11]*x[27]+1.06*x[11]*x[29]+2.59*x[11]*x[30]+3.67*x[12]*x[20]+0.48*x[12]*x[23]-2.96*x[12]*x[24]+0.03*x[12]*x[28]+1.64*x[12]*x[30]+3.77*x[13]*x[21]+3.74*x[13]*x[28]-3.84*x[14]*x[14]+3.47*x[14]*x[18]-4.36*x[14]*x[22]+3.61*x[14]*x[24]-4.16*x[14]*x[28]+4.03*x[14]*x[30]+4.83*x[15]*x[18]-3.36*x[15]*x[23]-0.74*x[15]*x[25]-3.69*x[16]*x[17]-4.94*x[16]*x[20]+0.66*x[16]*x[23]-0.61*x[17]*x[19]-0.06*x[17]*x[20]-1.57*x[17]*x[21]+2.52*x[17]*x[23]+4.83*x[17]*x[25]-0.43*x[17]*x[26]+3.52*x[18]*x[18]-0.96*x[18]*x[25]-4.47*x[18]*x[29]-2.61*x[19]*x[28]-4.16*x[20]*x[27]-4.34*x[21]*x[23]-3.13*x[21]*x[27]-2.56*x[21]*x[30]+4.87*x[22]*x[23]-2.57*x[22]*x[25]+3.87*x[23]*x[23]-4.5*x[24]*x[25]-0.04*x[24]*x[28]+4.02*x[24]*x[29]+2.25*x[24]*x[30]-3.21*x[27]*x[28]+1.19*x[27]*x[29]+1.35*x[29]*x[29] >= -833.0)
@constraint(m, e7, 3*x[1]+1.1*x[2]+9*x[3]+6.3*x[4]+4.1*x[5]+6.3*x[6]+3*x[7]+8*x[8]+8.1*x[9]+7.2*x[10]+2.9*x[11]+7.9*x[12]+7.3*x[13]+8.6*x[14]+2.4*x[15]+5*x[16]+0.7*x[17]+3.5*x[18]+0.1*x[19]+5.6*x[20]+6.1*x[21]-0.1*x[22]+9.4*x[23]+x[24]+0.9*x[25]+7.9*x[26]+0.1*x[27]+8.3*x[28]+0.2*x[30] >= 505.9)
@NLconstraint(m, e8, (-3.4*x[1]*x[5])-3.3*x[5]+0.15*x[1]*x[6]+0.49*x[6]+4.92*x[1]*x[11]+2.13*x[1]*x[12]-3.14*x[1]*x[14]-1.61*x[1]*x[16]+4.33*x[1]*x[20]+3.98*x[1]*x[29]-0.45*x[2]*x[3]-3.19*x[2]*x[7]+1.6*x[7]+0.7*x[2]*x[11]+4.29*x[2]*x[12]+1.53*x[2]*x[15]-4.31*x[15]-1.9*x[2]*x[18]-1.83*x[2]*x[19]+3.6*x[2]*x[23]+2.26*x[2]*x[26]+4.01*x[26]-3.84*x[3]*x[10]-4.07*x[10]-2.79*x[3]*x[20]-0.13*x[3]*x[21]+2.8*x[3]*x[22]+3.33*x[22]+0.8*x[3]*x[23]+4.67*x[3]*x[28]+4.25*x[3]*x[30]-3.94*x[4]*x[7]+4.34*x[4]*x[12]+2.44*x[4]*x[22]+1.94*x[4]*x[24]-0.79*x[24]+0.86*x[4]*x[25]-1.23*x[4]*x[30]+4.09*x[5]*x[9]-4.57*x[5]*x[12]+4.08*x[5]*x[13]+0.94*x[13]-0.91*x[5]*x[17]-4.65*x[5]*x[19]+4.95*x[5]*x[28]-2.65*x[6]*x[13]+1.12*x[6]*x[21]-4.03*x[6]*x[22]+0.09*x[6]*x[25]+4.46*x[6]*x[29]+1.72*x[6]*x[30]-0.72*x[7]*x[12]-2.05*x[7]*x[13]+2.22*x[7]*x[15]-3.55*x[7]*x[26]-2.84*x[7]*x[30]-0.75*x[8]*x[8]-2.63*x[8]*x[15]+4.18*x[8]*x[16]-1.02*x[8]*x[21]+1.47*x[8]*x[29]+3.26*x[8]*x[30]+2.08*x[9]*x[10]-2.67*x[9]*x[12]-0.02*x[9]*x[15]+0.07*x[9]*x[17]-4.72*x[9]*x[26]+2.94*x[9]*x[30]-2.14*x[10]*x[10]-3.7*x[10]*x[20]-0.53*x[10]*x[26]-1.44*x[10]*x[28]-2.36*x[10]*x[30]+1.97*x[11]*x[12]+0.29*x[11]*x[16]+3.87*x[11]*x[17]-1.81*x[11]*x[20]+2.65*x[11]*x[23]+0.06*x[11]*x[28]-4.08*x[11]*x[29]+2.38*x[11]*x[30]+0.74*x[12]*x[15]-3.43*x[12]*x[17]+4.3*x[12]*x[20]+2.8*x[13]*x[17]-1.21*x[14]*x[15]-1.55*x[14]*x[16]+3.65*x[14]*x[18]-3.75*x[14]*x[22]-3.37*x[14]*x[23]-2.23*x[14]*x[28]-4.08*x[14]*x[30]+3.2*x[15]*x[17]+0.23*x[15]*x[20]-2.3*x[15]*x[25]-1.22*x[16]*x[16]-2.41*x[16]*x[17]+0.89*x[16]*x[19]+4.86*x[16]*x[23]+4.46*x[17]*x[17]-2.88*x[17]*x[27]+3.64*x[17]*x[29]+1.45*x[17]*x[30]+1.48*x[18]*x[23]-x[18]*x[24]+1.66*x[18]*x[25]-0.02*x[19]*x[21]-2.86*x[19]*x[22]-1.43*x[19]*x[24]-2.08*x[20]*x[20]+2.49*x[20]*x[21]+0.35*x[20]*x[23]-3.44*x[20]*x[27]+3.2*x[20]*x[28]+2.24*x[20]*x[29]-3.23*x[21]*x[23]-1.96*x[21]*x[24]-0.96*x[22]*x[24]-4.49*x[22]*x[28]-0.73*x[22]*x[30]-0.3*x[23]*x[28]-2.66*x[24]*x[25]+2.86*x[24]*x[26]-2.51*x[25]*x[28]-2.41*x[26]*x[29]+2.49*x[27]*x[27]-2.52*x[28]*x[28] >= 106.7)
@constraint(m, e9, 3.58*x[1]+4.4*x[2]+3.04*x[11]+3.08*x[12]+4.45*x[26]-2.92*x[28]+4.48*x[29] >= 104.1)
@NLconstraint(m, e10, 1.56*x[1]*x[3]+1.34*x[1]*x[10]+1.81*x[1]*x[14]+0.54*x[14]+1.47*x[1]*x[18]+1.33*x[18]+4.37*x[1]*x[20]+1.86*x[1]*x[22]+1.07*x[1]*x[24]+2.11*x[24]-3.61*x[1]*x[29]-1.3*x[2]*x[6]+2.35*x[2]*x[15]-4.81*x[2]*x[18]+3.05*x[2]*x[19]+4.22*x[2]*x[23]+3.77*x[2]*x[25]+2.57*x[2]*x[27]+1.75*x[3]*x[3]-3.17*x[3]*x[6]+3.35*x[3]*x[16]-2.66*x[16]-4.58*x[3]*x[17]+4.95*x[3]*x[21]-0.24*x[3]*x[23]-0.47*x[3]*x[25]+3.37*x[3]*x[26]+4.29*x[4]*x[6]+4.83*x[4]*x[7]-3.8*x[4]*x[8]-4.5*x[8]+0.98*x[4]*x[10]-2.48*x[4]*x[11]-4.3*x[4]*x[24]+1.29*x[4]*x[26]-4.68*x[4]*x[29]+0.69*x[5]*x[6]-0.01*x[5]*x[7]-0.84*x[5]*x[11]+2.15*x[5]*x[13]+4.71*x[5]*x[29]+1.56*x[5]*x[30]-3.55*x[6]*x[15]-3.38*x[6]*x[17]+1.48*x[6]*x[18]+1.68*x[6]*x[20]+1.22*x[6]*x[22]-0.39*x[6]*x[25]-4*x[6]*x[26]+4.9*x[6]*x[28]-0.64*x[6]*x[29]-0.57*x[7]*x[7]-0.8*x[7]*x[8]-4.92*x[7]*x[18]+3.81*x[8]*x[15]-0.95*x[8]*x[16]-2.55*x[8]*x[18]+2.44*x[8]*x[19]-0.65*x[8]*x[26]+0.87*x[8]*x[27]-1.03*x[9]*x[10]+0.39*x[9]+0.4*x[9]*x[23]+4.18*x[9]*x[28]-2.51*x[10]*x[19]+4.75*x[10]*x[30]-1.32*x[11]*x[12]+3.22*x[12]+0.53*x[11]*x[15]-1.36*x[11]*x[18]-0.67*x[11]*x[26]+4.88*x[11]*x[27]+4.92*x[11]*x[30]+3.16*x[12]*x[14]+1.54*x[12]*x[21]-4.22*x[12]*x[26]+0.65*x[13]*x[17]+0.95*x[13]*x[27]-0.78*x[13]*x[29]+3.59*x[13]*x[30]-3.01*x[14]*x[22]+2.86*x[15]*x[16]-1.07*x[15]*x[18]-0.88*x[15]*x[20]-1.75*x[15]*x[29]-0.13*x[16]*x[19]+4.01*x[16]*x[24]-3.06*x[17]*x[23]+4.96*x[17]*x[25]-2.55*x[17]*x[26]-4.16*x[18]*x[21]+0.16*x[18]*x[25]-2.7*x[18]*x[28]-1.21*x[19]*x[24]+4.55*x[19]*x[30]-3.85*x[20]*x[21]-1.91*x[20]*x[24]+2.54*x[20]*x[25]-3.78*x[20]*x[27]-0.38*x[20]*x[28]-0.62*x[21]*x[23]+3.6*x[21]*x[24]-2.73*x[21]*x[29]-0.82*x[22]*x[26]+2.2*x[23]*x[25]-0.71*x[24]*x[29]+1.55*x[27]*x[28]+1.34*x[28]*x[30]-4.03*x[29]*x[30] >= 1486.5)
@constraint(m, e11, -0.94*x[2]-4.9*x[16]-3.89*x[19]+4.99*x[27]-2.32*x[28]+2.31*x[29] >= -31.3)
@NLconstraint(m, e12, (-0.26*x[1]*x[3])-2.06*x[1]*x[6]+1.91*x[1]*x[9]+0.3*x[1]*x[13]+1.63*x[1]*x[14]+4.52*x[1]*x[22]-3.06*x[22]+4.25*x[1]*x[23]-2.44*x[1]*x[25]+0.77*x[1]*x[29]-3.85*x[2]*x[3]+4.26*x[2]*x[18]-1.23*x[2]*x[19]+2.54*x[2]*x[26]+1.9*x[2]*x[27]+4.73*x[3]*x[7]-1.48*x[3]*x[9]-4.2*x[3]*x[11]+4.28*x[3]*x[12]+0.14*x[3]*x[16]+0.06*x[16]-1.6*x[3]*x[19]-4.82*x[3]*x[23]+4.47*x[3]*x[25]+0.36*x[4]*x[6]+3.36*x[4]*x[7]-2.47*x[4]*x[12]+0.08*x[4]*x[26]-0.58*x[4]*x[29]+3.78*x[4]*x[30]-0.79*x[5]*x[5]-1.78*x[5]*x[6]-2.61*x[5]*x[11]+4.99*x[5]*x[15]+4.64*x[5]*x[16]-0.25*x[5]*x[21]-1.62*x[5]*x[27]+4.72*x[5]*x[28]+4.32*x[5]*x[29]-2.52*x[5]*x[30]-3.55*x[6]*x[6]+4.56*x[6]*x[11]+1.39*x[6]*x[12]-4.43*x[6]*x[13]-2.32*x[6]*x[19]-3.12*x[6]*x[21]+3.45*x[6]*x[24]+4.04*x[24]-1.95*x[6]*x[26]-1.15*x[6]*x[27]+4.81*x[7]*x[8]-4.45*x[7]*x[9]+3.47*x[7]*x[12]-1.95*x[7]*x[15]-0.83*x[7]*x[19]+0.94*x[7]*x[21]-1.65*x[7]*x[23]-3.65*x[7]*x[24]-3.39*x[7]*x[25]-3.17*x[7]*x[30]-2.31*x[8]*x[9]+4.96*x[8]*x[11]+0.82*x[8]*x[17]-4.67*x[8]*x[22]+0.34*x[8]*x[27]+0.03*x[8]*x[29]+4.2*x[9]*x[9]-3.63*x[9]*x[12]-1.16*x[9]*x[16]+1.58*x[9]*x[17]-0.77*x[9]*x[18]+3.31*x[9]*x[22]+0.1*x[9]*x[23]-4.86*x[9]*x[29]+0.83*x[9]*x[30]-2.66*x[10]*x[21]-0.33*x[10]-4.95*x[10]*x[22]+4.28*x[10]*x[25]-3.07*x[11]*x[21]-0.87*x[11]*x[23]-4.17*x[11]*x[24]-0.35*x[11]*x[26]-4.5*x[11]*x[29]+1.14*x[11]*x[30]-0.37*x[12]*x[13]-2.94*x[12]*x[15]+0.02*x[12]*x[27]+0.61*x[12]*x[28]+3.52*x[12]*x[30]+0.92*x[13]*x[13]-0.98*x[13]*x[23]+1.68*x[13]*x[25]+4.61*x[14]*x[14]-0.77*x[14]*x[19]+1.42*x[14]*x[22]+0.76*x[15]*x[16]+2.45*x[15]*x[27]-0.69*x[15]*x[29]+1.08*x[16]*x[18]-3.16*x[16]*x[22]+4.21*x[16]*x[23]-1.87*x[16]*x[25]-0.93*x[16]*x[26]+2.3*x[17]*x[29]+0.05*x[18]*x[19]-4.91*x[18]*x[21]-1.55*x[18]*x[25]-2.79*x[18]*x[29]+1.31*x[18]*x[30]+3.34*x[19]*x[22]+0.77*x[19]*x[26]-4.62*x[19]*x[27]+3.13*x[19]*x[29]+1.61*x[20]*x[21]+4.5*x[20]*x[23]+3.67*x[20]*x[24]-0.07*x[20]*x[25]-2.98*x[20]*x[29]+3.09*x[21]*x[21]-3.71*x[21]*x[22]+4.51*x[21]*x[25]-1.77*x[21]*x[28]-0.7*x[21]*x[29]+2.99*x[22]*x[22]-0.19*x[22]*x[25]+2.24*x[22]*x[26]+0.01*x[22]*x[29]+2.51*x[22]*x[30]-3.98*x[23]*x[23]+2.12*x[23]*x[24]+0.59*x[23]*x[29]+2.9*x[24]*x[24]-2.09*x[24]*x[25]-3.38*x[24]*x[28]-2.85*x[24]*x[29]+1.11*x[25]*x[25]-0.83*x[25]*x[26]-1.04*x[25]*x[27]+4.01*x[25]*x[30]+0.6*x[27]*x[29]-4.39*x[27]*x[30]+2.99*x[29]*x[29] >= 582.5)
@constraint(m, e13, -3.35*x[4]-4.27*x[9]-1.41*x[10]+4.15*x[13]-3.13*x[21]+4.97*x[22]-1.07*x[25]-3.14*x[27]+2.5*x[28] >= -41.2)
@NLconstraint(m, e14, 1.46*x[1]*x[10]-3.71*x[1]*x[26]+1.4*x[1]*x[27]-4.55*x[1]*x[30]-3.21*x[2]*x[12]+3.91*x[12]-4.16*x[2]*x[15]-2.57*x[2]*x[16]-1.62*x[2]*x[19]+1.33*x[19]-0.82*x[2]*x[24]-3.02*x[2]*x[25]+3.04*x[25]+2.1*x[2]*x[29]-1.79*x[3]*x[4]+0.54*x[3]*x[7]+0.73*x[3]*x[8]-2.21*x[3]*x[11]+1.77*x[3]*x[14]+4.56*x[3]*x[20]+3.36*x[3]*x[25]+2.89*x[3]*x[28]-1.51*x[4]*x[13]-2.02*x[4]*x[15]+3.62*x[4]*x[23]+1.04*x[4]*x[25]+3.43*x[4]*x[30]-0.01*x[5]*x[7]+2.87*x[5]+0.15*x[5]*x[10]-1.78*x[5]*x[14]+0.5*x[5]*x[15]-3.15*x[5]*x[17]-4.35*x[5]*x[18]-0.53*x[18]+2.79*x[5]*x[19]-3.16*x[5]*x[28]+1.67*x[6]*x[10]+3.37*x[6]+0.96*x[6]*x[12]+3.39*x[6]*x[14]+4.6*x[6]*x[15]+4.11*x[6]*x[22]-4.97*x[6]*x[25]+0.07*x[6]*x[26]-3.75*x[6]*x[27]-0.06*x[6]*x[28]-3.51*x[7]*x[7]-2.31*x[7]*x[9]-0.01*x[9]+1.86*x[7]*x[12]+2.49*x[7]*x[14]-1.59*x[7]*x[24]-1.51*x[7]*x[25]+4.08*x[7]*x[26]+1.62*x[7]*x[27]-2.02*x[8]*x[12]+3.59*x[8]*x[14]+3.22*x[8]*x[18]-2.09*x[8]*x[20]+0.18*x[8]*x[21]-0.97*x[8]*x[22]+4.59*x[8]*x[24]+2.09*x[8]*x[25]+0.07*x[8]*x[30]-1.38*x[9]*x[16]-4.31*x[9]*x[17]+2.03*x[9]*x[22]+3.12*x[9]*x[26]+3.96*x[9]*x[28]-1.43*x[9]*x[29]-3.36*x[10]*x[13]+2.73*x[10]*x[18]+3.52*x[10]*x[20]-3.47*x[10]*x[22]+1.81*x[10]*x[25]-3.53*x[10]*x[27]+2.53*x[11]*x[12]+4.95*x[11]*x[14]-3.12*x[11]*x[29]+3.69*x[12]*x[12]-0.13*x[12]*x[15]+0.54*x[12]*x[22]+4.68*x[12]*x[24]+2.18*x[12]*x[26]+0.54*x[12]*x[27]+4.49*x[13]*x[15]-2.04*x[13]*x[17]-3.24*x[13]*x[19]-3.25*x[13]*x[22]+4.45*x[13]*x[25]+1.41*x[13]*x[28]-2.69*x[13]*x[29]+4.17*x[14]*x[15]+1.98*x[14]*x[20]+2.51*x[14]*x[21]+4.69*x[14]*x[22]+4.74*x[14]*x[23]-4.42*x[15]*x[17]+4.52*x[15]*x[19]-0.44*x[15]*x[24]+0.87*x[15]*x[29]+4.45*x[15]*x[30]-0.6*x[16]*x[17]-1.74*x[16]*x[18]-1.09*x[16]*x[19]-1.73*x[16]*x[20]-0.51*x[16]*x[21]-1.38*x[16]*x[26]+3.92*x[16]*x[28]-4.39*x[17]*x[17]+0.25*x[17]*x[18]-2.18*x[17]*x[19]+2.89*x[17]*x[21]+1.32*x[17]*x[25]+0.69*x[17]*x[27]+1.27*x[18]*x[19]-3.51*x[18]*x[24]+4.8*x[18]*x[30]-0.85*x[19]*x[20]+1.04*x[19]*x[26]+2.59*x[20]*x[25]+2.48*x[21]*x[24]-0.76*x[21]*x[29]-1.01*x[22]*x[24]-3.11*x[22]*x[27]+4.81*x[22]*x[30]-4.22*x[23]*x[25]-3.06*x[23]*x[28]+4.89*x[24]*x[27]+0.73*x[24]*x[29]-0.72*x[24]*x[30]-2.28*x[26]*x[27]+1.52*x[26]*x[30]-1.86*x[27]*x[27]+3.29*x[27]*x[28]-2.5*x[27]*x[30]-2.43*x[29]*x[30] >= 860.9)
@constraint(m, e15, 3.31*x[8]+1.1*x[9]-1.64*x[16]-0.83*x[20]-3.56*x[28] >= -10.6)
@NLconstraint(m, e16, (-2.66*x[1]*x[3])-4.93*x[3]-1.5*x[1]*x[4]-1.67*x[1]*x[8]+1.89*x[1]*x[9]+3.84*x[1]*x[14]-1.74*x[14]+3.66*x[1]*x[17]-4.03*x[1]*x[20]+2.49*x[1]*x[23]-1.56*x[1]*x[24]+0.89*x[1]*x[26]-1.64*x[1]*x[30]-3.16*x[30]-4.71*x[2]*x[2]+0.35*x[2]*x[6]-1.49*x[6]+0.49*x[2]*x[11]+3.34*x[11]-2.44*x[2]*x[13]+1.8*x[2]*x[14]-2.38*x[2]*x[17]-2.36*x[2]*x[18]+2.13*x[2]*x[23]+4.15*x[2]*x[26]-2.48*x[2]*x[28]+4.18*x[3]*x[5]-0.03*x[3]*x[7]+3.15*x[3]*x[9]-1.05*x[3]*x[10]+2.2*x[3]*x[14]-2.46*x[3]*x[16]-3.79*x[3]*x[23]-0.11*x[3]*x[28]-4.69*x[3]*x[29]+3.83*x[29]-3.42*x[4]*x[6]+4.51*x[4]*x[8]+0.77*x[4]*x[18]-0.1*x[4]*x[20]+3.64*x[4]*x[27]-3.91*x[4]*x[28]+1.55*x[5]*x[6]-3.12*x[5]*x[13]-0.86*x[5]*x[14]-0.34*x[5]*x[19]+1.22*x[19]-4.41*x[5]*x[20]-4.9*x[5]*x[22]-1.9*x[22]-4.56*x[5]*x[28]-1.45*x[5]*x[29]+1.65*x[5]*x[30]+4.66*x[6]*x[6]+0.33*x[6]*x[16]+0.61*x[6]*x[18]-0.3*x[6]*x[24]+3.39*x[6]*x[25]+1.71*x[6]*x[29]-4.44*x[7]*x[9]-4.97*x[7]*x[11]+3.94*x[7]*x[15]-1.7*x[7]*x[22]-0.38*x[7]*x[25]+1.37*x[8]*x[10]-0.88*x[8]*x[11]-3.38*x[8]*x[13]-1.75*x[8]*x[17]+4.83*x[8]*x[23]-3.5*x[8]*x[24]-0.5*x[8]*x[30]+2.57*x[9]*x[9]+0.58*x[9]*x[10]-3.81*x[9]*x[11]-4.55*x[9]*x[13]+1.49*x[9]*x[17]+0.58*x[9]*x[20]-4.06*x[9]*x[25]-3.94*x[9]*x[26]-4.07*x[9]*x[28]+3.86*x[10]*x[10]-1.37*x[10]*x[11]-3.86*x[10]*x[13]+0.26*x[10]*x[14]-0.95*x[10]*x[15]-2.37*x[10]*x[22]-2.07*x[10]*x[23]-0.4*x[10]*x[30]-4.9*x[11]*x[13]+4.97*x[11]*x[28]+3.74*x[11]*x[29]+1.37*x[11]*x[30]+1.37*x[12]*x[13]+3.86*x[12]+4.65*x[12]*x[15]-3.91*x[12]*x[17]-0.22*x[12]*x[20]+2.25*x[12]*x[21]-1.26*x[21]+3.09*x[12]*x[22]+0.54*x[12]*x[23]-1.1*x[12]*x[25]+4.7*x[12]*x[28]+2.68*x[12]*x[29]+2.41*x[13]*x[13]+3.12*x[13]*x[14]-3.46*x[13]*x[15]+3.4*x[13]*x[17]+1.58*x[13]*x[19]-3*x[13]*x[21]+2.11*x[13]*x[26]+1.47*x[13]*x[29]+4.88*x[14]*x[20]+3.58*x[14]*x[24]+1.31*x[14]*x[30]+0.63*x[15]*x[17]+1.97*x[15]*x[22]+4.58*x[15]*x[23]+2.31*x[15]*x[26]+1.04*x[16]*x[27]+4.5*x[16]*x[29]-1.61*x[17]*x[18]+3.5*x[17]*x[20]-1.3*x[19]*x[27]+0.99*x[20]*x[23]-0.56*x[21]*x[21]+1.5*x[21]*x[22]+0.23*x[22]*x[23]-1.51*x[22]*x[25]-4.76*x[22]*x[26]+2.8*x[23]*x[26]-3.35*x[23]*x[27]-0.75*x[23]*x[28]+3.82*x[24]*x[24]+0.41*x[24]*x[30]+4.23*x[25]*x[28]+4.16*x[26]*x[27]-3.04*x[29]*x[30] >= 179.3)
@NLconstraint(m, e17, -(9.61*x[1]-8.28*x[1]*x[1]+8.13*x[1]*x[2]+7.7*x[2]-4.91*x[1]*x[3]+9.01*x[3]+7.19*x[1]*x[4]+7.72*x[4]+9.23*x[1]*x[5]+7.03*x[5]+9.89*x[1]*x[6]+2.89*x[6]+3.76*x[1]*x[7]+4.88*x[7]+1.05*x[1]*x[8]+9.63*x[8]+9.21*x[1]*x[9]+3.46*x[9]+1.68*x[1]*x[10]+4.59*x[10]-0.82*x[1]*x[11]+5.94*x[11]+4.87*x[1]*x[12]+1.07*x[12]+2.29*x[1]*x[13]+2.08*x[13]+2.75*x[1]*x[14]+0.13*x[14]+9.05*x[1]*x[15]-5.25*x[15]+8.37*x[1]*x[16]+6.72*x[16]+1.23*x[1]*x[17]+1.2*x[17]+7.92*x[1]*x[18]+3.56*x[18]+1.7*x[1]*x[19]+3.05*x[19]-9.04*x[1]*x[20]+3.4*x[20]+7.76*x[1]*x[21]+1.8*x[21]+5.95*x[1]*x[22]+8.65*x[22]+7.49*x[1]*x[23]+7.22*x[23]+8.42*x[1]*x[24]+3.78*x[24]+4.43*x[1]*x[25]+0.81*x[25]+5.18*x[1]*x[26]+5.24*x[26]+9.07*x[1]*x[27]+2.52*x[27]+9.23*x[1]*x[28]+3.19*x[28]+2.78*x[1]*x[29]+7.49*x[29]+9.94*x[1]*x[30]-4.98*x[30]+2.01*x[2]*x[2]+9.37*x[2]*x[3]+7.4*x[2]*x[4]+6.09*x[2]*x[5]+6.47*x[2]*x[6]+3.6*x[2]*x[7]-0.72*x[2]*x[8]+9.13*x[2]*x[9]+8.66*x[2]*x[10]+8.99*x[2]*x[11]+8.09*x[2]*x[12]+3.38*x[2]*x[13]+4.45*x[2]*x[14]-4.95*x[2]*x[15]+7.82*x[2]*x[16]+5.67*x[2]*x[17]+2.16*x[2]*x[18]-3.84*x[2]*x[19]+6.04*x[2]*x[20]+1.82*x[2]*x[21]+6.78*x[2]*x[22]+3.08*x[2]*x[23]-0.86*x[2]*x[24]+9.62*x[2]*x[25]+2.81*x[2]*x[26]+4.7*x[2]*x[27]+5.69*x[2]*x[28]-6.47*x[2]*x[29]+7.9*x[2]*x[30]+3.29*x[3]*x[3]+6.25*x[3]*x[4]+5.32*x[3]*x[5]-4.5*x[3]*x[6]+8.23*x[3]*x[7]+1.1*x[3]*x[8]+7.2*x[3]*x[9]+1.63*x[3]*x[10]+1.21*x[3]*x[11]+0.29*x[3]*x[12]+3.95*x[3]*x[13]-4.09*x[3]*x[14]-4.92*x[3]*x[15]+1.82*x[3]*x[16]+9.39*x[3]*x[17]+1.15*x[3]*x[18]+3.88*x[3]*x[19]+0.68*x[3]*x[20]+2.48*x[3]*x[21]+2.01*x[3]*x[22]+3.29*x[3]*x[23]+0.03*x[3]*x[24]+0.96*x[3]*x[25]+0.19*x[3]*x[26]+6.98*x[3]*x[27]+9.3*x[3]*x[28]+8.73*x[3]*x[29]+4.03*x[3]*x[30]+0.24*x[4]*x[4]+8.93*x[4]*x[5]+5.61*x[4]*x[6]+5.49*x[4]*x[7]+8.49*x[4]*x[8]+6.24*x[4]*x[9]+2.75*x[4]*x[10]-4.43*x[4]*x[11]+7.84*x[4]*x[12]+2.43*x[4]*x[13]+2.28*x[4]*x[14]+0.55*x[4]*x[15]+8.38*x[4]*x[16]-5.06*x[4]*x[17]+4.44*x[4]*x[18]+0.26*x[4]*x[19]+6.16*x[4]*x[20]+6.01*x[4]*x[21]+0.91*x[4]*x[22]+0.52*x[4]*x[23]+4.76*x[4]*x[24]+9.33*x[4]*x[25]+7.42*x[4]*x[26]+6.98*x[4]*x[27]+2.52*x[4]*x[28]+8.89*x[4]*x[29]+4.45*x[4]*x[30]+8.48*x[5]*x[5]-6.14*x[5]*x[6]+0.38*x[5]*x[7]+9.15*x[5]*x[8]+5.27*x[5]*x[9]+6.88*x[5]*x[10]+7.41*x[5]*x[11]+7.09*x[5]*x[12]+2.87*x[5]*x[13]+9.98*x[5]*x[14]+6.36*x[5]*x[15]+7.27*x[5]*x[16]+9.12*x[5]*x[17]+3.53*x[5]*x[18]+9.7*x[5]*x[19]+8.72*x[5]*x[20]+6.19*x[5]*x[21]+7.51*x[5]*x[22]-2.47*x[5]*x[23]+2.26*x[5]*x[24]+5.16*x[5]*x[25]-9.04*x[5]*x[26]-1.56*x[5]*x[27]-5.73*x[5]*x[28]+4.99*x[5]*x[29]+4.79*x[5]*x[30]+2.52*x[6]*x[6]+6.28*x[6]*x[7]+3.28*x[6]*x[8]+6.4*x[6]*x[9]+3.62*x[6]*x[10]+7.97*x[6]*x[11]+1.04*x[6]*x[12]+9.98*x[6]*x[13]-1.69*x[6]*x[14]+8.29*x[6]*x[15]+8.42*x[6]*x[16]+5.48*x[6]*x[17]+9.71*x[6]*x[18]+1.97*x[6]*x[19]+3.86*x[6]*x[20]-6.97*x[6]*x[21]-0.53*x[6]*x[22]+5.43*x[6]*x[23]+3.67*x[6]*x[24]+9.71*x[6]*x[25]+6.58*x[6]*x[26]+0.48*x[6]*x[27]+4.34*x[6]*x[28]+5.07*x[6]*x[29]+0.28*x[6]*x[30]+0.6*x[7]*x[7]+4.62*x[7]*x[8]+8.99*x[7]*x[9]+4.71*x[7]*x[10]+8.2*x[7]*x[11]+9.77*x[7]*x[12]+5.18*x[7]*x[13]+9.35*x[7]*x[14]+6.4*x[7]*x[15]-4.94*x[7]*x[16]+8.87*x[7]*x[17]+0.51*x[7]*x[18]+3.73*x[7]*x[19]+0.05*x[7]*x[20]-2.02*x[7]*x[21]+1.13*x[7]*x[22]+5.16*x[7]*x[23]+3.22*x[7]*x[24]+6.02*x[7]*x[25]+9.72*x[7]*x[26]+7.87*x[7]*x[27]+5.08*x[7]*x[28]+2.72*x[7]*x[29]+2.99*x[7]*x[30]+5.36*x[8]*x[8]+1.02*x[8]*x[9]+9.85*x[8]*x[10]+2.02*x[8]*x[11]+8.08*x[8]*x[12]-3.57*x[8]*x[13]+1.6*x[8]*x[14]+6.54*x[8]*x[15]+4.25*x[8]*x[16]+2.27*x[8]*x[17]+0.48*x[8]*x[18]+6.99*x[8]*x[19]+9.21*x[8]*x[20]+2.93*x[8]*x[21]-1.25*x[8]*x[22]+9.2*x[8]*x[23]-6.7*x[8]*x[24]-3.79*x[8]*x[25]+2.93*x[8]*x[26]+1.2*x[8]*x[27]+0.55*x[8]*x[28]+0.5*x[8]*x[29]+9.82*x[8]*x[30]+6.93*x[9]*x[9]-0.3*x[9]*x[10]+7.2*x[9]*x[11]+7.49*x[9]*x[12]+6.62*x[9]*x[13]+8.99*x[9]*x[14]-6.01*x[9]*x[15]+4.57*x[9]*x[16]-8.28*x[9]*x[17]+6.77*x[9]*x[18]+1.91*x[9]*x[19]+6.46*x[9]*x[20]-0.31*x[9]*x[21]+8.58*x[9]*x[22]+5.31*x[9]*x[23]+1.7*x[9]*x[24]+9.64*x[9]*x[25]+9.54*x[9]*x[26]+9.54*x[9]*x[27]+7.07*x[9]*x[28]+5.26*x[9]*x[29]+6.25*x[9]*x[30]+5.31*x[10]*x[10]+2.36*x[10]*x[11]+1.78*x[10]*x[12]+7.65*x[10]*x[13]+9.48*x[10]*x[14]+0.63*x[10]*x[15]+2.6*x[10]*x[16]+3.78*x[10]*x[17]+0.2*x[10]*x[18]+5.01*x[10]*x[19]+7.62*x[10]*x[20]+5.83*x[10]*x[21]+5.7*x[10]*x[22]+7.97*x[10]*x[23]+4.93*x[10]*x[24]+6.07*x[10]*x[25]-8.89*x[10]*x[26]+3.92*x[10]*x[27]+1.27*x[10]*x[28]+0.9*x[10]*x[29]+4.88*x[10]*x[30]+1.15*x[11]*x[11]+1.02*x[11]*x[12]+5.64*x[11]*x[13]+3.76*x[11]*x[14]+4.02*x[11]*x[15]+8.26*x[11]*x[16]-4.37*x[11]*x[17]+5.7*x[11]*x[18]+1.35*x[11]*x[19]+1.69*x[11]*x[20]+3.33*x[11]*x[21]+0.59*x[11]*x[22]+1.93*x[11]*x[23]+7.1*x[11]*x[24]+1.29*x[11]*x[25]+9.46*x[11]*x[26]+3.09*x[11]*x[27]+6.97*x[11]*x[28]+5.33*x[11]*x[29]+9.78*x[11]*x[30]+3.27*x[12]*x[12]+2.05*x[12]*x[13]+5.44*x[12]*x[14]-1.9*x[12]*x[15]-4.59*x[12]*x[16]+4.46*x[12]*x[17]+6.43*x[12]*x[18]+8.8*x[12]*x[19]+6.21*x[12]*x[20]+7.13*x[12]*x[21]+0.58*x[12]*x[22]+6.3*x[12]*x[23]+4.55*x[12]*x[24]+9.05*x[12]*x[25]+9.45*x[12]*x[26]+5.95*x[12]*x[27]-1.29*x[12]*x[28]+1.4*x[12]*x[29]+8.19*x[12]*x[30]+7.8*x[13]*x[13]+5*x[13]*x[14]+3.75*x[13]*x[15]-1.05*x[13]*x[16]+5.24*x[13]*x[17]+7.45*x[13]*x[18]+5.49*x[13]*x[19]+1.24*x[13]*x[20]+9*x[13]*x[21]+0.49*x[13]*x[22]+1.85*x[13]*x[23]+3.71*x[13]*x[24]+2.67*x[13]*x[25]+4.37*x[13]*x[26]+9.36*x[13]*x[27]+4.36*x[13]*x[28]+6.76*x[13]*x[29]+3.56*x[13]*x[30]+0.37*x[14]*x[14]-3.93*x[14]*x[15]+3.64*x[14]*x[16]+0.97*x[14]*x[17]+1.34*x[14]*x[18]+0.2*x[14]*x[19]+0.36*x[14]*x[20]-6.39*x[14]*x[21]+4.63*x[14]*x[22]+6.77*x[14]*x[23]+1.73*x[14]*x[24]+0.29*x[14]*x[25]-8.38*x[14]*x[26]+2.03*x[14]*x[27]-0.75*x[14]*x[28]+8.73*x[14]*x[29]+4.23*x[14]*x[30]+6.57*x[15]*x[15]-8.56*x[15]*x[16]+0.47*x[15]*x[17]+7.6*x[15]*x[18]+2.63*x[15]*x[19]+1.19*x[15]*x[20]+2.09*x[15]*x[21]+0.13*x[15]*x[22]+3.94*x[15]*x[23]+5.12*x[15]*x[24]+2.11*x[15]*x[25]+9.04*x[15]*x[26]+9.39*x[15]*x[27]+9.08*x[15]*x[28]+0.14*x[15]*x[29]+3.08*x[15]*x[30]+9.02*x[16]*x[16]+4.11*x[16]*x[17]+1.78*x[16]*x[18]+9.71*x[16]*x[19]+5.69*x[16]*x[20]+9.03*x[16]*x[21]+5.45*x[16]*x[22]+3.27*x[16]*x[23]-0.94*x[16]*x[24]+3.74*x[16]*x[25]+1.87*x[16]*x[26]+8.83*x[16]*x[27]+8.48*x[16]*x[28]+7.21*x[16]*x[29]+2.36*x[16]*x[30]+1.24*x[17]*x[17]+3.61*x[17]*x[18]+2.67*x[17]*x[19]+6.61*x[17]*x[20]+4.38*x[17]*x[21]-2.22*x[17]*x[22]+6.92*x[17]*x[23]+6.18*x[17]*x[24]+9.97*x[17]*x[25]-7.65*x[17]*x[26]+6.18*x[17]*x[27]+4.38*x[17]*x[28]+0.86*x[17]*x[29]+8.92*x[17]*x[30]+5.45*x[18]*x[18]+8.64*x[18]*x[19]+8.36*x[18]*x[20]+8.7*x[18]*x[21]+3.7*x[18]*x[22]-6.29*x[18]*x[23]+8.34*x[18]*x[24]+4.56*x[18]*x[25]+2.13*x[18]*x[26]+9.55*x[18]*x[27]+5.82*x[18]*x[28]+1.85*x[18]*x[29]+7.46*x[18]*x[30]+0.94*x[19]*x[19]+2.67*x[19]*x[20]-1.68*x[19]*x[21]-7.71*x[19]*x[22]+4.72*x[19]*x[23]+8.19*x[19]*x[24]+2.44*x[19]*x[25]+2.47*x[19]*x[26]+5.53*x[19]*x[27]+7.09*x[19]*x[28]-8.27*x[19]*x[29]+4.91*x[19]*x[30]+0.14*x[20]*x[20]+4.88*x[20]*x[21]+3*x[20]*x[22]+7.75*x[20]*x[23]+3.12*x[20]*x[24]+4.93*x[20]*x[25]+2.85*x[20]*x[26]+0.28*x[20]*x[27]+2.47*x[20]*x[28]+7.28*x[20]*x[29]+6.52*x[20]*x[30]+8.76*x[21]*x[21]+6.19*x[21]*x[22]+3.66*x[21]*x[23]+5.88*x[21]*x[24]+7.26*x[21]*x[25]+5.61*x[21]*x[26]+8.41*x[21]*x[27]+5.95*x[21]*x[28]+1.16*x[21]*x[29]+6.47*x[21]*x[30]+0.18*x[22]*x[22]+7.35*x[22]*x[23]+0.55*x[22]*x[24]+3.73*x[22]*x[25]+3.8*x[22]*x[26]+9.91*x[22]*x[27]+5.7*x[22]*x[28]+0.98*x[22]*x[29]+7.33*x[22]*x[30]+0.65*x[23]*x[23]+1.67*x[23]*x[24]-0.41*x[23]*x[25]+3.65*x[23]*x[26]+4.72*x[23]*x[27]+4.48*x[23]*x[28]+4.33*x[23]*x[29]-1.64*x[23]*x[30]+2.69*x[24]*x[24]+5.79*x[24]*x[25]-4.05*x[24]*x[26]+6.23*x[24]*x[27]+2.62*x[24]*x[28]+8.42*x[24]*x[29]+7.26*x[24]*x[30]+2.4*x[25]*x[25]+0.29*x[25]*x[26]+9.86*x[25]*x[27]+9.59*x[25]*x[28]+2.52*x[25]*x[29]+6.25*x[25]*x[30]+5.93*x[26]*x[26]+1.5*x[26]*x[27]+1.9*x[26]*x[28]+2.76*x[26]*x[29]+1.88*x[26]*x[30]+6.39*x[27]*x[27]+2.13*x[27]*x[28]+9.43*x[27]*x[29]+2.9*x[27]*x[30]+0.76*x[28]*x[28]+6.97*x[28]*x[29]-0.77*x[28]*x[30]+1.54*x[29]*x[29]+2.48*x[29]*x[30]+0.42*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

 
