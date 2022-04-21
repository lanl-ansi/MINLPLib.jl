using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-1.98*x[2]*x[3]-1.56*x[2]*x[4]-0.32*x[2]*x[5]+1.94*x[2]*x[6]-1.64*x[2]*x[7]+0.82*x[2]*x[8]-0.12*x[2]*x[9]+0.92*x[2]*x[10]+0.86*x[2]*x[11]-1.9*x[2]*x[12]-0.9*x[2]*x[13]-x[2]*x[14]-0.16*x[2]*x[15]+1.08*x[2]*x[16]+0.8*x[2]*x[17]+0.8*x[2]*x[19]-1.44*x[2]*x[20]+0.98*x[2]*x[21]+0.76*x[3]*x[5]-0.32*x[3]*x[4]-0.32*x[3]*x[6]+1.86*x[3]*x[7]+1.72*x[3]*x[8]+0.7*x[3]*x[9]+0.52*x[3]*x[10]+1.86*x[3]*x[11]-1.38*x[3]*x[12]-1.14*x[3]*x[13]-1.8*x[3]*x[14]+0.16*x[3]*x[15]-1.76*x[3]*x[17]-1.16*x[3]*x[18]-1.88*x[3]*x[19]-0.26*x[3]*x[20]+1.02*x[3]*x[21]+1.02*x[4]*x[6]-1.9*x[4]*x[5]+0.78*x[4]*x[7]-1.64*x[4]*x[8]-0.88*x[4]*x[10]+0.38*x[4]*x[11]+1.68*x[4]*x[12]-0.32*x[4]*x[13]+1.54*x[4]*x[14]-1.12*x[4]*x[15]-1.04*x[4]*x[16]-1.32*x[4]*x[17]+1.56*x[4]*x[18]+0.76*x[4]*x[19]+0.42*x[4]*x[20]+1.72*x[4]*x[21]+0.78*x[5]*x[6]-1.1*x[5]*x[7]-1.72*x[5]*x[9]-1.26*x[5]*x[10]-1.76*x[5]*x[11]+1.9*x[5]*x[12]-0.12*x[5]*x[13]-1.92*x[5]*x[14]-0.7*x[5]*x[15]+2*x[5]*x[16]-0.92*x[5]*x[17]-1.64*x[5]*x[18]-1.36*x[5]*x[19]+0.64*x[5]*x[20]-0.58*x[5]*x[21]+0.6*x[6]*x[8]-0.22*x[6]*x[7]+1.18*x[6]*x[9]+0.94*x[6]*x[10]+1.74*x[6]*x[11]+1.76*x[6]*x[12]-0.12*x[6]*x[13]+1.8*x[6]*x[14]-0.66*x[6]*x[15]-0.42*x[6]*x[16]-0.4*x[6]*x[17]+1.44*x[6]*x[18]+1.52*x[6]*x[19]-0.28*x[6]*x[20]+1.76*x[6]*x[21]+1.14*x[7]*x[9]+1.14*x[7]*x[10]-1.52*x[7]*x[11]-0.34*x[7]*x[12]+1.1*x[7]*x[13]+1.58*x[7]*x[14]-1.86*x[7]*x[15]-0.56*x[7]*x[16]-1.88*x[7]*x[17]+0.52*x[7]*x[18]-0.1*x[7]*x[19]-1.74*x[7]*x[20]-0.5*x[7]*x[21]+0.16*x[8]*x[10]-1.92*x[8]*x[9]-1.76*x[8]*x[11]+x[8]*x[13]-1.42*x[8]*x[14]+0.76*x[8]*x[15]-0.82*x[8]*x[16]-1.5*x[8]*x[17]+1.22*x[8]*x[18]-0.42*x[8]*x[19]+0.96*x[8]*x[20]+0.92*x[8]*x[21]+0.5*x[9]*x[11]-0.52*x[9]*x[10]-1.16*x[9]*x[12]+1.98*x[9]*x[13]+1.42*x[9]*x[14]-0.48*x[9]*x[15]+1.7*x[9]*x[16]-1.16*x[9]*x[17]+1.48*x[9]*x[18]+1.1*x[9]*x[19]-0.48*x[9]*x[20]+0.56*x[9]*x[21]+(-0.92*x[10]*x[11])-1.04*x[10]*x[12]+1.62*x[10]*x[13]-0.54*x[10]*x[14]-1.18*x[10]*x[15]+0.82*x[10]*x[16]-1.76*x[10]*x[17]+0.16*x[10]*x[18]-1.22*x[10]*x[19]-1.36*x[10]*x[20]-0.38*x[10]*x[21]+0.44*x[11]*x[12]-1.62*x[11]*x[13]+0.32*x[11]*x[14]+1.12*x[11]*x[15]-1.48*x[11]*x[16]-0.56*x[11]*x[17]-1.16*x[11]*x[18]+0.9*x[11]*x[19]+1.44*x[11]*x[20]+1.56*x[11]*x[21]+1.68*x[12]*x[14]-0.94*x[12]*x[13]+0.94*x[12]*x[15]-1.28*x[12]*x[16]-0.22*x[12]*x[17]-1.2*x[12]*x[18]+0.78*x[12]*x[19]+1.48*x[12]*x[20]-0.8*x[12]*x[21]+(-1.9*x[13]*x[14])-0.54*x[13]*x[15]+0.06*x[13]*x[16]+0.88*x[13]*x[17]+1.96*x[13]*x[18]-1.52*x[13]*x[19]-1.76*x[13]*x[20]+1.78*x[14]*x[15]+0.66*x[14]*x[16]+1.42*x[14]*x[17]-0.5*x[14]*x[18]+1.54*x[14]*x[19]+1.26*x[14]*x[20]+1.76*x[14]*x[21]+(-1.44*x[15]*x[16])-x[15]*x[17]-1.62*x[15]*x[18]+1.22*x[15]*x[19]+1.08*x[15]*x[20]+0.54*x[16]*x[17]+1.62*x[16]*x[18]-1.96*x[16]*x[19]+1.32*x[16]*x[20]-1.86*x[16]*x[21]+1.92*x[17]*x[18]-1.88*x[17]*x[19]+1.7*x[17]*x[20]-1.34*x[17]*x[21]+(-1.64*x[18]*x[19])-1.42*x[18]*x[20]-1.96*x[18]*x[21]+1.02*x[19]*x[20]-1.56*x[19]*x[21]+1.48*x[20]*x[21]+0.26*x[2]*x[2]+0.55*x[3]*x[3]-0.98*x[4]*x[4]+0.5*x[6]*x[6]+0.95*x[7]*x[7]+0.04*x[8]*x[8]-0.21*x[9]*x[9]-0.55*x[10]*x[10]-0.21*x[11]*x[11]+0.9*x[12]*x[12]-0.08*x[13]*x[13]-0.78*x[14]*x[14]-0.91*x[15]*x[15]-0.28*x[17]*x[17]-0.02*x[18]*x[18]+0.92*x[19]*x[19]+x[20]*x[20]+0.46*x[21]*x[21]+0.47*x[2]+0.92*x[3]-0.05*x[4]-0.03*x[5]+0.57*x[6]+0.42*x[7]-0.33*x[8]+0.53*x[9]-0.35*x[10]+0.03*x[11]+0.82*x[12]-0.61*x[13]-0.88*x[14]+0.55*x[15]+0.92*x[16]-0.35*x[17]-0.58*x[18]+0.67*x[19]-0.18*x[20]+0.09*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 1.3*x[2]*x[3]+0.82*x[2]*x[4]+0.6*x[2]*x[5]+0.72*x[2]*x[6]-0.66*x[2]*x[7]-2*x[2]*x[8]-1.14*x[2]*x[9]+1.4*x[2]*x[10]-1.4*x[2]*x[12]+0.64*x[2]*x[13]+1.24*x[2]*x[14]+1.98*x[2]*x[15]-0.8*x[2]*x[16]+0.62*x[2]*x[17]-1.1*x[2]*x[18]-0.52*x[2]*x[19]-0.8*x[2]*x[20]+1.22*x[2]*x[21]+0.82*x[3]*x[4]+1.84*x[3]*x[5]+1.64*x[3]*x[6]-1.62*x[3]*x[7]-1.28*x[3]*x[8]+0.58*x[3]*x[9]-0.92*x[3]*x[10]+1.78*x[3]*x[11]-1.94*x[3]*x[12]-0.28*x[3]*x[13]-1.22*x[3]*x[14]-0.28*x[3]*x[15]-1.3*x[3]*x[16]-0.48*x[3]*x[17]-1.3*x[3]*x[18]-1.24*x[3]*x[20]+1.88*x[3]*x[21]+(-0.94*x[4]*x[5])-0.94*x[4]*x[6]-1.06*x[4]*x[7]-0.62*x[4]*x[8]+1.22*x[4]*x[9]-0.34*x[4]*x[10]+0.12*x[4]*x[11]+1.94*x[4]*x[12]-1.96*x[4]*x[13]+0.06*x[4]*x[14]+1.02*x[4]*x[15]-1.84*x[4]*x[16]-1.42*x[4]*x[17]-0.94*x[4]*x[18]+1.08*x[4]*x[19]-0.56*x[4]*x[20]+0.36*x[4]*x[21]+0.64*x[5]*x[6]-0.06*x[5]*x[7]+1.26*x[5]*x[8]+0.78*x[5]*x[9]-1.2*x[5]*x[10]+0.48*x[5]*x[11]-1.66*x[5]*x[12]-0.58*x[5]*x[13]-0.12*x[5]*x[15]-0.12*x[5]*x[16]+1.36*x[5]*x[17]-1.84*x[5]*x[18]-0.34*x[5]*x[19]-x[5]*x[20]+1.06*x[5]*x[21]+(-1.22*x[6]*x[7])-0.68*x[6]*x[8]-0.46*x[6]*x[9]+1.54*x[6]*x[10]+0.66*x[6]*x[11]-0.72*x[6]*x[12]+0.42*x[6]*x[13]+0.86*x[6]*x[14]+0.92*x[6]*x[15]-1.3*x[6]*x[16]+1.84*x[6]*x[17]+1.74*x[6]*x[18]+0.26*x[6]*x[19]+0.92*x[6]*x[20]-0.84*x[6]*x[21]+0.52*x[7]*x[9]+0.96*x[7]*x[10]+0.06*x[7]*x[11]-0.5*x[7]*x[12]-0.1*x[7]*x[13]+0.64*x[7]*x[14]+1.4*x[7]*x[15]-1.52*x[7]*x[16]-0.04*x[7]*x[19]-0.26*x[7]*x[21]+1.28*x[8]*x[9]+0.52*x[8]*x[10]+1.56*x[8]*x[11]-0.26*x[8]*x[12]+0.12*x[8]*x[13]-1.22*x[8]*x[14]+1.08*x[8]*x[15]+1.88*x[8]*x[16]+0.02*x[8]*x[17]+1.34*x[8]*x[18]+1.72*x[8]*x[20]+1.24*x[8]*x[21]+1.8*x[9]*x[10]-1.4*x[9]*x[11]-0.66*x[9]*x[12]+1.66*x[9]*x[13]-1.34*x[9]*x[14]-0.64*x[9]*x[15]+1.64*x[9]*x[16]-1.18*x[9]*x[17]-1.2*x[9]*x[18]+0.66*x[9]*x[19]+1.78*x[9]*x[20]-0.66*x[9]*x[21]+(-0.3*x[10]*x[11])-1.16*x[10]*x[12]-0.22*x[10]*x[13]+1.54*x[10]*x[14]-0.02*x[10]*x[15]-0.36*x[10]*x[16]-1.3*x[10]*x[17]-0.2*x[10]*x[18]+0.32*x[10]*x[19]+0.18*x[10]*x[20]+0.8*x[11]*x[12]-0.92*x[11]*x[13]-1.26*x[11]*x[14]+1.98*x[11]*x[15]-1.7*x[11]*x[16]+0.96*x[11]*x[17]+1.74*x[11]*x[18]+1.68*x[11]*x[19]-0.8*x[11]*x[20]+1.98*x[11]*x[21]+0.72*x[12]*x[13]-0.02*x[12]*x[14]-0.64*x[12]*x[15]-1.16*x[12]*x[16]-0.88*x[12]*x[17]+1.16*x[12]*x[18]-1.9*x[12]*x[19]+1.28*x[12]*x[20]+1.52*x[13]*x[14]-0.36*x[13]*x[15]-0.24*x[13]*x[16]-0.7*x[13]*x[18]+0.52*x[13]*x[19]-1.22*x[13]*x[20]+0.76*x[13]*x[21]+0.36*x[14]*x[15]-1.2*x[14]*x[16]+0.68*x[14]*x[17]+0.42*x[14]*x[18]-1.9*x[14]*x[19]+1.8*x[14]*x[20]+x[14]*x[21]+(-1.58*x[15]*x[16])-0.12*x[15]*x[17]+0.5*x[15]*x[18]-0.4*x[15]*x[19]-0.08*x[15]*x[20]-1.16*x[15]*x[21]+0.32*x[16]*x[17]-0.6*x[16]*x[18]+0.38*x[16]*x[19]-0.1*x[16]*x[20]-1.98*x[16]*x[21]+(-0.52*x[17]*x[18])-1.6*x[17]*x[19]-0.8*x[17]*x[20]-0.02*x[17]*x[21]+1.4*x[18]*x[19]-1.14*x[18]*x[20]-0.32*x[18]*x[21]+1.54*x[19]*x[20]+1.46*x[19]*x[21]-1.9*x[20]*x[21]+(-0.92*x[2]*x[2])-0.35*x[3]*x[3]+0.82*x[4]*x[4]+0.39*x[5]*x[5]+0.88*x[6]*x[6]-0.73*x[7]*x[7]+0.18*x[8]*x[8]-0.42*x[9]*x[9]+0.26*x[10]*x[10]+0.42*x[11]*x[11]-0.37*x[12]*x[12]+0.78*x[13]*x[13]-0.32*x[14]*x[14]+0.03*x[15]*x[15]+0.73*x[16]*x[16]-0.5*x[17]*x[17]+0.77*x[18]*x[18]-0.83*x[19]*x[19]+0.98*x[20]*x[20]+0.59*x[21]*x[21]-0.84*x[2]+0.74*x[3]-0.17*x[4]-0.24*x[5]+0.42*x[6]+0.4*x[7]-0.21*x[8]+0.18*x[9]+0.78*x[10]-0.45*x[11]-0.51*x[12]-0.96*x[13]-0.63*x[14]-0.08*x[15]+0.58*x[16]+0.4*x[17]-0.56*x[18]+0.69*x[19]-0.1*x[20]+0.5*x[21] <= 8.86)
@constraint(m, e3, 0.59*x[2]-0.95*x[3]-0.89*x[4]+0.35*x[5]+0.13*x[6]-0.56*x[7]+0.19*x[8]+0.52*x[9]+0.95*x[10]-0.24*x[11]-0.51*x[12]+0.08*x[13]+0.37*x[14]+0.5*x[15]-0.34*x[16]+0.7*x[17]+0.76*x[18]-0.19*x[19]+0.69*x[20]-0.87*x[21] == -0.33)
@constraint(m, e4, 0.44*x[2]+0.83*x[3]+0.94*x[4]-0.7*x[5]-0.19*x[6]-0.76*x[7]+0.9*x[8]+0.77*x[9]-0.32*x[10]-0.11*x[11]+0.8*x[12]+0.43*x[13]-0.33*x[14]+0.72*x[15]+0.91*x[16]+0.52*x[17]-0.85*x[18]+0.41*x[19]-0.81*x[20]-0.93*x[21] == -0.03)
@constraint(m, e5, -0.14*x[2]+0.1*x[3]-0.6*x[4]-0.89*x[5]-0.71*x[6]-0.62*x[7]+0.38*x[8]-0.99*x[9]+0.83*x[10]-0.23*x[11]+0.48*x[12]+0.09*x[13]-0.17*x[14]-0.02*x[15]-0.25*x[16]+0.61*x[17]+0.95*x[18]-0.46*x[19]-0.92*x[20]+0.73*x[21] == 0.24)
@constraint(m, e6, 0.41*x[2]+0.77*x[3]-0.66*x[4]-0.15*x[5]+0.6*x[6]-0.73*x[7]-0.51*x[8]-0.8*x[9]+0.6*x[10]-0.74*x[11]-0.99*x[12]-0.41*x[13]+0.59*x[14]+0.6*x[15]-0.57*x[16]+0.4*x[17]-0.7*x[18]-0.08*x[19]+0.16*x[20]+0.45*x[21] == 0.29)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 