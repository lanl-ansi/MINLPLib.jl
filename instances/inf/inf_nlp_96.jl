using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.8)
set_upper_bound(x[1], 2.84)
set_lower_bound(x[2], 0.65)
set_upper_bound(x[2], 2.13)
set_lower_bound(x[3], 0.39)
set_upper_bound(x[3], 2.55)
set_lower_bound(x[4], 0.81)
set_upper_bound(x[4], 2.64)
set_lower_bound(x[5], 0.49)
set_upper_bound(x[5], 2.69)
set_lower_bound(x[6], 0.02)
set_upper_bound(x[6], 2.01)
set_lower_bound(x[7], 0.44)
set_upper_bound(x[7], 2.37)
set_lower_bound(x[8], 0.19)
set_upper_bound(x[8], 2.51)
set_lower_bound(x[9], 0.06)
set_upper_bound(x[9], 2.87)
set_lower_bound(x[10], 0.73)
set_upper_bound(x[10], 2.57)
set_lower_bound(x[11], 0.49)
set_upper_bound(x[11], 2.73)
set_lower_bound(x[12], 0.53)
set_upper_bound(x[12], 2.5)


# ----- Constraints ----- #
@constraint(m, e1, 2.32*x[1]+9.84*x[2]-9.19*x[3]+4.4*x[4]+1.59*x[5]+4.54*x[6]+2.55*x[7]+4.76*x[8]+6.96*x[9]+6.44*x[10]-7.23*x[11]+7.09*x[12] == 49.049)
@constraint(m, e2, 0.98*x[1]+0.26*x[2]+5.38*x[3]+7.85*x[4]+3.27*x[5]+3.81*x[6]+2.69*x[7]+3.25*x[8]+8.83*x[9]-8.79*x[10]+3.75*x[11]+9.54*x[12] == 59.751)
@constraint(m, e3, 8.86*x[1]+0.72*x[2]+8.76*x[3]+5.7*x[4]+3.4*x[5]+7.32*x[6]+7.32*x[7]+9.45*x[8]-6.66*x[9]+3.62*x[10]+7.77*x[11]+4.4*x[12] == 91.105)
@constraint(m, e4, -3.65*x[1]+7.46*x[2]+9.06*x[3]+3.45*x[4]+1.09*x[5]+7.34*x[6]+5.55*x[7]+2.4*x[8]+0.25*x[9]+2.41*x[10]+1.1*x[11]+9.38*x[12] >= 63.541)
@constraint(m, e5, 4.81*x[1]+9.92*x[2]+8.29*x[3]+2.93*x[4]+0.31*x[5]+6.39*x[6]+5.48*x[7]+6.21*x[8]+6.07*x[9]+4.8*x[10]+1.85*x[11]+2.29*x[12] >= 86.106)
@NLconstraint(m, e6, 2.34*x[1]*x[1]*x[2]+3.34*x[1]+8.1*x[2]+4.23*x[1]*x[5]*x[5]+9.74*x[5]+9.07*x[6]*x[7]*x[7]+8.93*x[6]+7.02*x[7]+8.84*x[7]*x[10]*x[11]+5.58*x[10]+1.18*x[11]+2.77*x[9]*x[12]*x[12]+9.88*x[9]+4.65*x[12]+8.71*x[3]+5.8*x[4]+0.75*x[8] >= 322.932)
@NLconstraint(m, e7, 7.42*x[1]-8.13*x[1]*x[1]*x[2]-8.34*x[2]+4.71*x[1]*x[5]*x[5]+8.78*x[5]-4.77*x[6]*x[7]*x[7]+8.97*x[6]+8.59*x[7]+7.81*x[7]*x[10]*x[11]+2.03*x[10]+6.72*x[11]-8.88*x[9]*x[12]*x[12]+4.02*x[9]+6.3*x[12]+1.65*x[2]*x[5]*x[7]*x[11]-7.32*x[2]*x[7]*x[9]*x[10]+0.26*x[3]*x[4]*x[4]*x[4]-5.13*x[3]+3.33*x[4]+6.51*x[5]*x[8]*x[8]*x[12]+8.36*x[8] >= 50.737)
@NLconstraint(m, e8, 1.87*x[1]*x[1]*x[2]+2.46*x[1]+6.17*x[2]-6.4*x[1]*x[5]*x[5]+5.48*x[5]+1.76*x[6]*x[7]*x[7]+4.42*x[6]-0.88*x[7]+8.2*x[7]*x[10]*x[11]+6.83*x[10]+4.32*x[11]+7.33*x[9]*x[12]*x[12]+7.87*x[9]+0.05*x[12]+7.28*x[2]*x[5]*x[7]*x[11]+8.84*x[2]*x[7]*x[9]*x[10]+9.92*x[3]*x[4]*x[4]*x[4]+8.31*x[3]+9.77*x[4]+0.54*x[5]*x[8]*x[8]*x[12]+8.08*x[8]+3.79*x[1]*x[1]*x[3]*x[4]*x[7]+5.62*x[1]*x[1]*x[4]*x[7]*x[8]+4.69*x[1]*x[2]*x[3]*x[4]*x[5]+9.2*x[1]*x[6]*x[8]*x[9]*x[9]+5.83*x[1]*x[7]*x[7]*x[7]*x[8]+4.68*x[1]*x[8]*x[9]*x[11]*x[12]+7.6*x[1]*x[10]*x[10]*x[12]*x[12]+3.78*x[2]*x[2]*x[6]*x[7]*x[10]+0.47*x[2]*x[3]*x[5]*x[6]*x[9]+5.62*x[2]*x[4]*x[6]*x[9]*x[10]+9.03*x[2]*x[6]*x[8]*x[8]*x[8]+5.04*x[2]*x[6]*x[8]*x[8]*x[12]+9.78*x[3]*x[3]*x[3]*x[5]*x[9]+5.65*x[3]*x[4]*x[4]*x[5]*x[5]+0.65*x[3]*x[4]*x[4]*x[5]*x[12]+7.77*x[3]*x[7]*x[7]*x[8]*x[9]+4.96*x[4]*x[4]*x[6]*x[7]*x[7]+6.57*x[4]*x[4]*x[11]*x[11]*x[11]+7.66*x[4]*x[5]*x[7]*x[7]*x[8]+0.9*x[5]*x[5]*x[5]*x[5]*x[9]+6.68*x[5]*x[7]*x[7]*x[7]*x[12]+7.87*x[6]*x[7]*x[9]*x[9]*x[9] >= 7302.306)
@constraint(m, e9, 7.21*x[1]+3.74*x[2]+1.67*x[3]+6.2*x[4]+3.2*x[5]-8.55*x[6]+5.58*x[7]+0.99*x[8]+7.21*x[9]+9.31*x[10]+2.11*x[11]+6.39*x[12] >= 76.059)
@NLconstraint(m, e10, -(5.64*x[1]*x[1]*x[2]-8.23*x[1]+2.01*x[2]+5.74*x[1]*x[5]*x[5]+0.76*x[5]+9.05*x[6]*x[7]*x[7]+7.65*x[6]+1.42*x[7]-7.51*x[7]*x[10]*x[11]+8.99*x[10]+0.91*x[11]+2.52*x[9]*x[12]*x[12]+6.63*x[9]+0.41*x[12]+4.67*x[2]*x[5]*x[7]*x[11]+3.86*x[2]*x[7]*x[9]*x[10]-3.95*x[3]*x[4]*x[4]*x[4]+8.34*x[3]+8.75*x[4]+2.62*x[5]*x[8]*x[8]*x[12]+5.22*x[8]+0.51*x[1]*x[1]*x[3]*x[4]*x[7]-7.88*x[1]*x[1]*x[4]*x[7]*x[8]+0.47*x[1]*x[2]*x[3]*x[4]*x[5]+3.8*x[1]*x[6]*x[8]*x[9]*x[9]+3.26*x[1]*x[7]*x[7]*x[7]*x[8]+3.21*x[1]*x[8]*x[9]*x[11]*x[12]+6.54*x[1]*x[10]*x[10]*x[12]*x[12]+4.62*x[2]*x[2]*x[6]*x[7]*x[10]+1.6*x[2]*x[3]*x[5]*x[6]*x[9]+2.86*x[2]*x[4]*x[6]*x[9]*x[10]+1.9*x[2]*x[6]*x[8]*x[8]*x[8]+8.76*x[2]*x[6]*x[8]*x[8]*x[12]+2.67*x[3]*x[3]*x[3]*x[5]*x[9]+8.19*x[3]*x[4]*x[4]*x[5]*x[5]+4.41*x[3]*x[4]*x[4]*x[5]*x[12]+5.65*x[3]*x[7]*x[7]*x[8]*x[9]-7.99*x[4]*x[4]*x[6]*x[7]*x[7]+2.81*x[4]*x[4]*x[11]*x[11]*x[11]+4.21*x[4]*x[5]*x[7]*x[7]*x[8]+7.39*x[5]*x[5]*x[5]*x[5]*x[9]+5.73*x[5]*x[7]*x[7]*x[7]*x[12]+2.51*x[6]*x[7]*x[9]*x[9]*x[9])+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

m = m 		 # model get returned when including this script. 