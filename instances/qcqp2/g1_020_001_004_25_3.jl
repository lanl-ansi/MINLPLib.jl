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
@NLconstraint(m, e1, -(1.22*x[2]*x[6]-0.46*x[2]*x[3]-1.64*x[2]*x[7]+0.84*x[2]*x[9]+0.54*x[2]*x[12]+0.88*x[2]*x[16]+0.02*x[3]*x[4]+0.36*x[3]*x[15]+1.08*x[3]*x[17]-0.42*x[3]*x[19]-0.86*x[3]*x[21]+0.38*x[4]*x[5]+(-0.16*x[5]*x[7])-1.08*x[5]*x[11]+1.06*x[5]*x[12]+0.06*x[5]*x[13]+1.76*x[5]*x[19]-0.74*x[5]*x[20]+0.4*x[6]*x[10]-0.08*x[6]*x[11]+0.06*x[6]*x[12]-1.24*x[6]*x[13]-1.8*x[6]*x[18]-1.48*x[6]*x[21]+1.46*x[7]*x[14]-0.88*x[7]*x[15]+0.28*x[7]*x[19]+1.92*x[8]*x[10]+0.48*x[8]*x[12]+1.96*x[8]*x[17]-1.74*x[8]*x[18]+1.48*x[9]*x[12]+0.46*x[10]*x[16]-1.74*x[12]*x[18]+1.66*x[13]*x[19]-1.5*x[13]*x[18]-0.36*x[13]*x[20]+0.4*x[14]*x[17]-0.68*x[14]*x[21]+1.26*x[15]*x[20]-0.8*x[15]*x[18]+0.42*x[16]*x[19]+1.78*x[16]*x[21]-1.3*x[17]*x[18]-0.68*x[20]*x[21]+0.11*x[3]*x[3]-0.97*x[8]*x[8]-0.44*x[13]*x[13]+0.06*x[18]*x[18]+0.72*x[21]*x[21]-0.24*x[2]+0.94*x[3]+0.79*x[4]+0.57*x[5]+0.09*x[6]+0.56*x[7]+0.69*x[8]+0.11*x[9]+0.81*x[10]-0.95*x[11]+0.48*x[12]-0.72*x[13]+0.24*x[14]+0.56*x[15]+0.19*x[16]+0.27*x[17]+0.99*x[18]-0.91*x[19]+0.85*x[20]-0.95*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.38*x[2]*x[5]+0.1*x[2]*x[8]-1.06*x[2]*x[9]-0.4*x[2]*x[10]-1.18*x[2]*x[12]+1.26*x[3]*x[7]-0.28*x[3]*x[9]+1.6*x[3]*x[12]-0.72*x[3]*x[15]+1.08*x[4]*x[6]-1.6*x[4]*x[14]+0.42*x[4]*x[18]+0.38*x[4]*x[20]-0.74*x[4]*x[21]+1.34*x[5]*x[11]-1.12*x[5]*x[10]-0.88*x[5]*x[14]-1.34*x[5]*x[19]-1.74*x[5]*x[21]+0.66*x[6]*x[10]-0.42*x[6]*x[11]-0.94*x[6]*x[12]-1.54*x[6]*x[14]+0.66*x[6]*x[17]+0.34*x[7]*x[10]-0.72*x[7]*x[17]+1.78*x[8]*x[16]+1.18*x[9]*x[12]+0.18*x[9]*x[14]-0.1*x[9]*x[15]-0.46*x[9]*x[16]+(-1.16*x[10]*x[11])-0.56*x[10]*x[13]+1.64*x[11]*x[21]-1.64*x[11]*x[18]+1.24*x[12]*x[15]-1.88*x[12]*x[13]+0.12*x[12]*x[20]+1.2*x[13]*x[18]+0.32*x[14]*x[21]-1.42*x[14]*x[16]+0.06*x[15]*x[16]+1.32*x[16]*x[21]-0.1*x[16]*x[18]-0.72*x[17]*x[19]+0.6*x[2]*x[2]-0.22*x[4]*x[4]-0.83*x[7]*x[7]-0.64*x[18]*x[18]+0.02*x[19]*x[19]-0.04*x[2]+0.58*x[3]+0.35*x[4]-0.7*x[5]-0.34*x[6]+0.63*x[7]+0.44*x[8]+0.38*x[9]-0.93*x[10]-0.69*x[11]-0.63*x[12]-0.25*x[13]+0.18*x[14]+0.24*x[15]-0.15*x[16]-0.02*x[17]-0.39*x[18]-0.83*x[19]+0.39*x[20]+0.63*x[21] <= 12.43)
@constraint(m, e3, -0.34*x[2]+0.39*x[3]-0.89*x[4]-0.3*x[5]-0.39*x[6]-0.7*x[7]+0.7*x[8]-0.73*x[10]-0.85*x[11]-0.12*x[12]+0.39*x[13]-0.91*x[14]-0.74*x[15]-0.7*x[16]-0.95*x[17]+0.32*x[18]+0.5*x[19]+0.13*x[20]-0.5*x[21] == -0.66)
@constraint(m, e4, -0.06*x[2]-0.81*x[3]+0.9*x[4]+0.91*x[5]-0.76*x[6]-0.42*x[7]-0.54*x[8]+0.34*x[9]-0.79*x[10]+0.89*x[11]-0.33*x[12]+0.63*x[13]-0.88*x[14]-0.45*x[15]-0.31*x[16]-0.16*x[17]-0.96*x[18]+0.34*x[19]-0.32*x[20]+0.59*x[21] == 0.17)
@constraint(m, e5, 0.53*x[2]+0.5*x[3]-0.09*x[4]-0.52*x[5]-0.06*x[6]+0.05*x[7]-0.49*x[8]-0.79*x[9]+0.86*x[10]+0.46*x[11]+0.58*x[12]-0.14*x[13]+0.73*x[14]+0.46*x[16]-0.84*x[17]+0.09*x[18]-0.41*x[19]-0.34*x[20]-0.94*x[21] == 0.91)
@constraint(m, e6, 0.52*x[2]-0.23*x[3]-0.16*x[4]-0.49*x[5]+0.02*x[6]-0.94*x[7]-0.86*x[8]-0.58*x[9]+0.86*x[10]+0.74*x[11]-0.63*x[12]+0.62*x[13]+0.47*x[14]-0.7*x[15]-0.08*x[16]+0.21*x[17]+0.65*x[18]-0.55*x[19]+0.21*x[20]+0.63*x[21] == -0.95)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
