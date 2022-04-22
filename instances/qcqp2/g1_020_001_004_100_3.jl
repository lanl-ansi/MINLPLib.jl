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
@NLconstraint(m, e1, -(1.16*x[2]*x[3]-0.46*x[2]*x[4]+1.22*x[2]*x[5]-1.64*x[2]*x[6]-0.84*x[2]*x[7]+0.48*x[2]*x[8]-0.96*x[2]*x[9]+0.84*x[2]*x[10]-0.64*x[2]*x[11]-1.08*x[2]*x[12]-1.22*x[2]*x[13]+0.04*x[2]*x[14]-1.08*x[2]*x[15]+0.02*x[2]*x[16]-1.92*x[2]*x[17]-1.48*x[2]*x[18]+0.54*x[2]*x[19]-0.94*x[2]*x[20]+0.88*x[2]*x[21]+1.28*x[3]*x[4]+0.22*x[3]*x[5]+0.02*x[3]*x[6]+0.44*x[3]*x[7]+x[3]*x[8]-1.58*x[3]*x[9]-1.42*x[3]*x[10]+1.82*x[3]*x[11]+1.32*x[3]*x[12]+0.36*x[3]*x[13]-0.88*x[3]*x[14]+1.08*x[3]*x[15]-0.94*x[3]*x[16]-0.42*x[3]*x[17]-1.34*x[3]*x[18]-0.86*x[3]*x[19]+0.38*x[3]*x[20]+0.36*x[3]*x[21]+0.68*x[4]*x[5]+0.28*x[4]*x[6]+1.02*x[4]*x[7]-0.82*x[4]*x[8]-0.6*x[4]*x[9]-0.34*x[4]*x[10]+1.04*x[4]*x[11]-1.24*x[4]*x[12]+1.58*x[4]*x[13]-0.5*x[4]*x[14]+1.48*x[4]*x[15]-0.16*x[4]*x[16]+1.76*x[4]*x[17]-1.64*x[4]*x[18]+0.88*x[4]*x[19]-1.08*x[4]*x[20]+1.06*x[4]*x[21]+1.16*x[5]*x[7]-0.4*x[5]*x[6]+1.86*x[5]*x[8]+1.76*x[5]*x[9]-0.74*x[5]*x[10]+0.44*x[5]*x[11]+1.72*x[5]*x[12]-1.8*x[5]*x[13]-0.44*x[5]*x[14]-1.8*x[5]*x[15]-0.68*x[5]*x[16]-0.74*x[5]*x[17]+0.4*x[5]*x[18]-0.08*x[5]*x[19]+0.06*x[5]*x[20]-0.96*x[5]*x[21]+0.44*x[6]*x[8]-1.24*x[6]*x[7]-0.16*x[6]*x[9]-1.8*x[6]*x[10]-1.44*x[6]*x[12]-1.48*x[6]*x[13]-0.36*x[6]*x[14]+1.86*x[6]*x[15]+0.58*x[6]*x[16]-1.38*x[6]*x[17]-1.18*x[6]*x[18]+1.58*x[6]*x[19]-1.28*x[6]*x[20]-0.58*x[6]*x[21]+1.06*x[7]*x[8]+1.8*x[7]*x[9]-0.38*x[7]*x[10]-0.88*x[7]*x[11]+1.84*x[7]*x[12]+0.28*x[7]*x[13]+1.1*x[7]*x[14]-1.52*x[7]*x[15]+1.5*x[7]*x[16]-0.22*x[7]*x[17]-1.94*x[7]*x[18]+0.94*x[7]*x[19]-1.58*x[7]*x[20]+0.8*x[8]*x[9]+1.92*x[8]*x[10]+1.46*x[8]*x[11]+0.48*x[8]*x[12]-1.82*x[8]*x[13]-1.94*x[8]*x[14]-x[8]*x[15]-1.98*x[8]*x[16]+0.28*x[8]*x[17]-1.16*x[8]*x[18]-0.72*x[8]*x[19]+1.96*x[8]*x[20]-1.74*x[8]*x[21]+(-1.12*x[9]*x[10])-0.82*x[9]*x[11]+1.72*x[9]*x[12]+0.12*x[9]*x[13]-0.36*x[9]*x[14]+1.48*x[9]*x[15]+1.54*x[9]*x[16]-1.64*x[9]*x[17]-0.46*x[9]*x[18]-0.74*x[9]*x[19]-0.86*x[9]*x[20]+(-1.38*x[10]*x[11])-1.46*x[10]*x[12]+0.46*x[10]*x[13]-1.4*x[10]*x[14]+0.72*x[10]*x[15]-1.36*x[10]*x[16]-0.14*x[10]*x[17]+1.32*x[10]*x[19]+1.52*x[10]*x[20]-0.92*x[10]*x[21]+1.74*x[11]*x[12]+1.04*x[11]*x[13]-0.82*x[11]*x[14]-0.22*x[11]*x[15]-1.18*x[11]*x[16]-0.84*x[11]*x[17]+1.86*x[11]*x[18]+1.48*x[11]*x[19]-1.14*x[11]*x[20]-0.58*x[11]*x[21]+0.5*x[12]*x[13]-0.92*x[12]*x[14]+0.82*x[12]*x[15]+0.28*x[12]*x[16]-1.58*x[12]*x[17]-0.88*x[12]*x[18]-1.74*x[12]*x[19]+0.36*x[12]*x[20]+0.76*x[13]*x[15]-1.6*x[13]*x[14]-0.58*x[13]*x[16]-0.88*x[13]*x[17]+1.84*x[13]*x[18]+1.26*x[13]*x[19]+0.64*x[13]*x[21]+1.8*x[14]*x[16]-1.5*x[14]*x[15]-1.62*x[14]*x[17]+0.54*x[14]*x[18]+1.66*x[14]*x[19]-0.36*x[14]*x[20]+x[14]*x[21]+0.54*x[15]*x[16]+0.16*x[15]*x[17]+0.24*x[15]*x[18]+0.4*x[15]*x[19]-0.68*x[15]*x[21]+(-0.8*x[16]*x[17])-1.6*x[16]*x[18]+0.38*x[16]*x[19]-0.98*x[16]*x[20]+1.26*x[16]*x[21]+1.86*x[17]*x[19]+0.42*x[17]*x[20]+1.78*x[17]*x[21]+0.52*x[18]*x[19]+0.12*x[18]*x[20]-0.68*x[18]*x[21]+(-0.98*x[19]*x[20])-x[19]*x[21]+1.44*x[20]*x[21]+(-0.69*x[2]*x[2])-0.6*x[3]*x[3]+0.76*x[4]*x[4]+0.03*x[5]*x[5]+0.67*x[6]*x[6]+0.73*x[7]*x[7]+0.25*x[8]*x[8]+0.04*x[9]*x[9]+0.13*x[10]*x[10]+0.15*x[12]*x[12]+0.84*x[13]*x[13]+0.92*x[14]*x[14]-0.1*x[16]*x[16]+0.27*x[17]*x[17]-0.65*x[18]*x[18]+0.36*x[19]*x[19]+0.6*x[20]*x[20]+0.41*x[21]*x[21]-0.24*x[2]+0.94*x[3]+0.79*x[4]+0.57*x[5]+0.09*x[6]+0.56*x[7]+0.69*x[8]+0.11*x[9]+0.81*x[10]-0.95*x[11]+0.48*x[12]-0.72*x[13]+0.24*x[14]+0.56*x[15]+0.19*x[16]+0.27*x[17]+0.99*x[18]-0.91*x[19]+0.85*x[20]-0.95*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, (-1.7*x[2]*x[3])-0.32*x[2]*x[4]+1.98*x[2]*x[5]-0.96*x[2]*x[6]+0.18*x[2]*x[7]+1.74*x[2]*x[8]-0.62*x[2]*x[9]+1.48*x[2]*x[10]-1.86*x[2]*x[11]-1.38*x[2]*x[12]+0.68*x[2]*x[13]-0.76*x[2]*x[14]-0.68*x[2]*x[15]+1.26*x[2]*x[16]-0.4*x[2]*x[17]-1.88*x[2]*x[18]-1.36*x[2]*x[20]+0.38*x[2]*x[21]+0.82*x[3]*x[5]-0.18*x[3]*x[4]+0.42*x[3]*x[6]+0.94*x[3]*x[7]-0.84*x[3]*x[8]-0.9*x[3]*x[9]-0.2*x[3]*x[10]-1.4*x[3]*x[11]+1.38*x[3]*x[12]-0.28*x[3]*x[13]-0.3*x[3]*x[14]+x[3]*x[15]+1.84*x[3]*x[16]-0.98*x[3]*x[17]+0.84*x[3]*x[18]-1.26*x[3]*x[19]+0.24*x[3]*x[20]-1.72*x[3]*x[21]+(-2*x[4]*x[5])-1.76*x[4]*x[6]-0.04*x[4]*x[7]-0.66*x[4]*x[8]+1.14*x[4]*x[9]-0.68*x[4]*x[11]+0.04*x[4]*x[12]+0.82*x[4]*x[13]-0.64*x[4]*x[14]-1.72*x[4]*x[15]+1.9*x[4]*x[16]-0.32*x[4]*x[17]+0.74*x[4]*x[18]-1.82*x[4]*x[19]-1.5*x[4]*x[20]+0.88*x[4]*x[21]+(-x[5]*x[7])-0.12*x[5]*x[8]-0.82*x[5]*x[9]+1.16*x[5]*x[10]-0.24*x[5]*x[11]-1.24*x[5]*x[12]-1.1*x[5]*x[13]-0.88*x[5]*x[14]-0.56*x[5]*x[15]-0.8*x[5]*x[16]+1.9*x[5]*x[18]-0.18*x[5]*x[19]-1.68*x[5]*x[21]+(-1.92*x[6]*x[7])-1.84*x[6]*x[8]-0.84*x[6]*x[9]-1.88*x[6]*x[10]+1.4*x[6]*x[11]-0.98*x[6]*x[12]-0.3*x[6]*x[13]-0.82*x[6]*x[14]+0.88*x[6]*x[15]+0.94*x[6]*x[16]-0.18*x[6]*x[17]+1.16*x[6]*x[18]+x[6]*x[19]-1.86*x[6]*x[20]+(-0.52*x[7]*x[9])-1.42*x[7]*x[10]-1.88*x[7]*x[11]-1.52*x[7]*x[12]+1.26*x[7]*x[13]-1.24*x[7]*x[14]-0.32*x[7]*x[15]-0.46*x[7]*x[16]-1.82*x[7]*x[17]+1.26*x[7]*x[19]+1.3*x[7]*x[20]-1.92*x[7]*x[21]+0.14*x[8]*x[9]-0.6*x[8]*x[10]+1.38*x[8]*x[11]-1.42*x[8]*x[12]-1.78*x[8]*x[13]-0.1*x[8]*x[14]-1.9*x[8]*x[15]-0.12*x[8]*x[16]+0.42*x[8]*x[17]+0.34*x[8]*x[18]+0.34*x[8]*x[19]+0.14*x[8]*x[20]-1.52*x[8]*x[21]+1.82*x[9]*x[10]-0.48*x[9]*x[11]-0.92*x[9]*x[12]-0.78*x[9]*x[13]-1.32*x[9]*x[14]+1.46*x[9]*x[15]-1.62*x[9]*x[16]+1.24*x[9]*x[17]-1.16*x[9]*x[18]+1.8*x[9]*x[19]+1.06*x[9]*x[20]+0.2*x[9]*x[21]+1.78*x[10]*x[12]+1.52*x[10]*x[13]+1.72*x[10]*x[14]-0.74*x[10]*x[15]+1.42*x[10]*x[16]-0.4*x[10]*x[17]+1.04*x[10]*x[18]-0.12*x[10]*x[19]-1.9*x[10]*x[20]-1.48*x[10]*x[21]+1.76*x[11]*x[12]-0.16*x[11]*x[13]-1.1*x[11]*x[14]-1.58*x[11]*x[16]-1.4*x[11]*x[17]+0.64*x[11]*x[18]+0.86*x[11]*x[19]+0.04*x[11]*x[20]-0.44*x[11]*x[21]+(-0.8*x[12]*x[13])-1.9*x[12]*x[14]+0.9*x[12]*x[15]-1.04*x[12]*x[16]-0.98*x[12]*x[17]-0.02*x[12]*x[18]-0.16*x[12]*x[19]+0.72*x[12]*x[20]-1.1*x[12]*x[21]+(-0.24*x[13]*x[14])-1.62*x[13]*x[15]-1.62*x[13]*x[16]+0.98*x[13]*x[17]+0.78*x[13]*x[18]-1.38*x[13]*x[19]-1.4*x[13]*x[21]+(-0.74*x[14]*x[15])-0.14*x[14]*x[16]+0.26*x[14]*x[17]-1.62*x[14]*x[18]-0.92*x[14]*x[19]+0.22*x[14]*x[20]+1.18*x[14]*x[21]+1.9*x[15]*x[17]-0.98*x[15]*x[16]-1.46*x[15]*x[18]+0.96*x[15]*x[19]-0.68*x[15]*x[20]+1.82*x[15]*x[21]+0.1*x[16]*x[19]-0.58*x[16]*x[17]-0.58*x[16]*x[20]+0.78*x[16]*x[21]+1.72*x[17]*x[21]-1.72*x[17]*x[19]+1.34*x[18]*x[20]-1.5*x[18]*x[19]+0.92*x[18]*x[21]+0.68*x[19]*x[21]-1.54*x[19]*x[20]+0.36*x[20]*x[21]+(-0.91*x[2]*x[2])-0.33*x[3]*x[3]-0.22*x[4]*x[4]-0.26*x[5]*x[5]-0.36*x[6]*x[6]+0.91*x[7]*x[7]+0.46*x[8]*x[8]-0.68*x[9]*x[9]-0.79*x[10]*x[10]-0.54*x[11]*x[11]+0.81*x[12]*x[12]+0.09*x[13]*x[13]-0.78*x[14]*x[14]+0.91*x[15]*x[15]-0.02*x[16]*x[16]-0.05*x[17]*x[17]+0.42*x[18]*x[18]-0.95*x[19]*x[19]+0.34*x[20]*x[20]+0.6*x[21]*x[21]-0.04*x[2]+0.58*x[3]+0.35*x[4]-0.7*x[5]-0.34*x[6]+0.63*x[7]+0.44*x[8]+0.38*x[9]-0.93*x[10]-0.69*x[11]-0.63*x[12]-0.25*x[13]+0.18*x[14]+0.24*x[15]-0.15*x[16]-0.02*x[17]-0.39*x[18]-0.83*x[19]+0.39*x[20]+0.63*x[21] <= 12.43)
@constraint(m, e3, -0.08*x[2]-0.3*x[3]-0.58*x[4]-0.94*x[5]-0.71*x[6]-0.77*x[7]+0.99*x[8]+0.04*x[9]+0.22*x[10]+0.68*x[11]-0.12*x[12]+0.15*x[13]-0.13*x[14]-0.97*x[15]-0.06*x[16]+0.9*x[17]-0.87*x[18]+0.91*x[19]-0.06*x[20]+0.11*x[21] == -0.24)
@constraint(m, e4, -0.69*x[2]-0.52*x[3]+0.65*x[4]-0.2*x[5]-0.41*x[6]+0.46*x[7]+0.34*x[8]+0.24*x[9]+0.23*x[10]+0.65*x[11]-0.1*x[12]+0.82*x[13]-0.88*x[14]-0.48*x[15]-0.5*x[16]-0.09*x[17]+0.51*x[19]-0.76*x[20]-0.6*x[21] == -0.64)
@constraint(m, e5, 0.25*x[2]-0.84*x[3]-0.49*x[4]-0.36*x[5]-0.29*x[6]-0.9*x[7]-0.46*x[8]-0.5*x[9]-0.67*x[10]+0.72*x[11]+0.82*x[12]+0.75*x[13]+0.57*x[14]-0.61*x[15]+0.82*x[16]+0.03*x[17]+0.52*x[18]+0.34*x[19]+0.02*x[20]-0.6*x[21] == -0.89)
@constraint(m, e6, 0.38*x[2]+0.06*x[3]-0.21*x[4]+0.16*x[5]-0.63*x[6]-0.77*x[7]+0.3*x[8]+0.13*x[9]+0.62*x[10]-0.79*x[11]+0.76*x[12]+0.43*x[13]+0.81*x[14]-0.27*x[15]-0.94*x[16]-0.1*x[17]-0.74*x[18]-0.14*x[19]+0.54*x[20]-0.54*x[21] == 0.19)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
