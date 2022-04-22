using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.69)
set_upper_bound(x[1], 2.21)
set_lower_bound(x[2], 0.91)
set_upper_bound(x[2], 2.26)
set_lower_bound(x[3], 0.62)
set_upper_bound(x[3], 2.41)
set_lower_bound(x[4], 0.85)
set_upper_bound(x[4], 2.26)
set_lower_bound(x[5], 0.87)
set_upper_bound(x[5], 2.92)
set_lower_bound(x[6], 0.48)
set_upper_bound(x[6], 2.15)
set_lower_bound(x[7], 0.13)
set_upper_bound(x[7], 2.42)
set_lower_bound(x[8], 0.94)
set_upper_bound(x[8], 2.41)
set_lower_bound(x[9], 0.97)
set_upper_bound(x[9], 2.65)
set_lower_bound(x[10], 0.27)
set_upper_bound(x[10], 2.66)
set_lower_bound(x[11], 0.62)
set_upper_bound(x[11], 2.1)
set_lower_bound(x[12], 0.86)
set_upper_bound(x[12], 2.64)


# ----- Constraints ----- #
@constraint(m, e1, -0.25*x[1]+2.32*x[2]+7.96*x[5]+9.17*x[6]+1.05*x[9]+3.59*x[11] == 37.24)
@constraint(m, e2, 7.3*x[2]+8.31*x[4]+1.33*x[7]-3.39*x[8]+2.58*x[9]+2.93*x[12] == 30.307)
@constraint(m, e3, -2.94*x[2]+0.28*x[5]+6.42*x[7]+9.48*x[9]+4*x[11]+2.47*x[12] == 30.978)
@constraint(m, e4, 4.29*x[1]+3.6*x[2]-0.62*x[3]+0.81*x[4]-0.71*x[5]+7.5*x[6]+3.36*x[7]+8.57*x[8]+3.76*x[9]+0.31*x[10]+4.71*x[11]+3.98*x[12] >= 60.033)
@constraint(m, e5, 1.42*x[1]+1.21*x[2]+2.58*x[3]-6.53*x[4]+5.64*x[5]+7.34*x[6]+9.1*x[7]+6.64*x[8]+9.5*x[9]+8.84*x[10]+6.07*x[11]+3.9*x[12] >= 86.022)
@NLconstraint(m, e6, 3.97*x[2]*x[12]*x[12]-0.19*x[2]+7.51*x[12]+4.45*x[3]*x[6]*x[11]+6.49*x[3]+7.67*x[6]+9.24*x[11]+0.75*x[1]+1.4*x[4]+1.51*x[5]+2.46*x[7]+6.46*x[8]+4.24*x[9]-3.23*x[10] >= 125.575)
@NLconstraint(m, e7, 5.86*x[2]*x[12]*x[12]+7.28*x[2]+9.04*x[12]+1.68*x[3]*x[6]*x[11]+6.8*x[3]+2.16*x[6]-5.95*x[11]+3.5*x[1]*x[2]*x[4]*x[8]+5.64*x[1]+0.91*x[4]+6.66*x[8]+3.73*x[1]*x[4]*x[6]*x[9]+5.99*x[9]+1.65*x[2]*x[6]*x[11]*x[12]+9.86*x[2]*x[7]*x[9]*x[9]+4.58*x[7]+7.28*x[3]*x[4]*x[6]*x[7]+0.58*x[5]+7.95*x[10] >= 557.655)
@NLconstraint(m, e8, 7.62*x[2]*x[12]*x[12]+3.82*x[2]+6.52*x[12]+7.73*x[3]*x[6]*x[11]+2.82*x[3]+9.76*x[6]+3.98*x[11]+9.36*x[1]*x[2]*x[4]*x[8]+6.01*x[1]+4.55*x[4]+5.7*x[8]+6.66*x[1]*x[4]*x[6]*x[9]+4.08*x[9]+0.6*x[2]*x[6]*x[11]*x[12]+7.12*x[2]*x[7]*x[9]*x[9]+5.43*x[7]+6.48*x[3]*x[4]*x[6]*x[7]+4.37*x[1]*x[1]*x[1]*x[1]*x[5]+8.34*x[5]+4.45*x[1]*x[1]*x[4]*x[6]*x[11]+4.45*x[1]*x[2]*x[3]*x[3]*x[12]+9.9*x[1]*x[2]*x[6]*x[6]*x[7]+7.46*x[2]*x[2]*x[3]*x[5]*x[11]+9.25*x[2]*x[4]*x[4]*x[8]*x[8]+8.06*x[2]*x[5]*x[5]*x[6]*x[8]+5.79*x[3]*x[3]*x[3]*x[5]*x[9]+0.53*x[3]*x[3]*x[4]*x[7]*x[9]+8.66*x[3]*x[4]*x[5]*x[5]*x[8]+1.57*x[3]*x[4]*x[6]*x[7]*x[11]+0.07*x[3]*x[4]*x[7]*x[8]*x[8]+8.46*x[3]*x[5]*x[9]*x[10]*x[11]+7.83*x[10]+1.32*x[4]*x[4]*x[8]*x[8]*x[9]+5.42*x[4]*x[5]*x[5]*x[7]*x[8]+2.81*x[4]*x[6]*x[7]*x[7]*x[8]+6.1*x[4]*x[7]*x[7]*x[7]*x[7]+8.31*x[4]*x[11]*x[12]*x[12]*x[12]+4.77*x[5]*x[5]*x[5]*x[10]*x[10]+8.93*x[5]*x[5]*x[6]*x[7]*x[8]+4.31*x[5]*x[8]*x[9]*x[9]*x[9]+6.97*x[6]*x[6]*x[6]*x[7]*x[7]-3.57*x[8]*x[8]*x[10]*x[12]*x[12]+5.08*x[8]*x[8]*x[11]*x[11]*x[11] >= 6081.405)
@constraint(m, e9, 2.11*x[1]+0.93*x[2]+4.95*x[3]+2.82*x[4]+5.25*x[5]+6.42*x[6]+7.77*x[7]+8.05*x[8]+0.82*x[9]+4.77*x[10]+9.52*x[11]+6.63*x[12] >= 91.221)
@NLconstraint(m, e10, -(8.59*x[2]*x[12]*x[12]-9.79*x[2]+7.1*x[12]+9.85*x[3]*x[6]*x[11]+8.01*x[3]-3.39*x[6]-3.59*x[11]+4.72*x[1]*x[2]*x[4]*x[8]+3.46*x[1]+5.99*x[4]+0.31*x[8]+1.48*x[1]*x[4]*x[6]*x[9]+x[9]+1.08*x[2]*x[6]*x[11]*x[12]+0.32*x[2]*x[7]*x[9]*x[9]+3.42*x[7]+9.14*x[3]*x[4]*x[6]*x[7]+6.57*x[1]*x[1]*x[1]*x[1]*x[5]+6.94*x[5]-4.03*x[1]*x[1]*x[4]*x[6]*x[11]+6.7*x[1]*x[2]*x[3]*x[3]*x[12]-6.82*x[1]*x[2]*x[6]*x[6]*x[7]+6.47*x[2]*x[2]*x[3]*x[5]*x[11]+4.34*x[2]*x[4]*x[4]*x[8]*x[8]+1.65*x[2]*x[5]*x[5]*x[6]*x[8]+8.03*x[3]*x[3]*x[3]*x[5]*x[9]-0.48*x[3]*x[3]*x[4]*x[7]*x[9]+8.5*x[3]*x[4]*x[5]*x[5]*x[8]+6.91*x[3]*x[4]*x[6]*x[7]*x[11]+7.27*x[3]*x[4]*x[7]*x[8]*x[8]+8.7*x[3]*x[5]*x[9]*x[10]*x[11]-6.84*x[10]-2.23*x[4]*x[4]*x[8]*x[8]*x[9]+9.45*x[4]*x[5]*x[5]*x[7]*x[8]+8.51*x[4]*x[6]*x[7]*x[7]*x[8]+8.67*x[4]*x[7]*x[7]*x[7]*x[7]+1.21*x[4]*x[11]*x[12]*x[12]*x[12]+8.82*x[5]*x[5]*x[5]*x[10]*x[10]-1.58*x[5]*x[5]*x[6]*x[7]*x[8]+3.49*x[5]*x[8]*x[9]*x[9]*x[9]+3.24*x[6]*x[6]*x[6]*x[7]*x[7]-5.81*x[8]*x[8]*x[10]*x[12]*x[12]-9.93*x[8]*x[8]*x[11]*x[11]*x[11])+x[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[13])

 
