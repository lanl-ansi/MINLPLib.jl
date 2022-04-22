using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[3], 0.0)
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


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.95*x[2]*x[7]+0.37*x[2]*x[8]-0.69*x[2]*x[9]+1.7*x[2]*x[10]-1.97*x[2]*x[11]+1.88*x[3]*x[7]+0.97*x[3]*x[8]-1.15*x[3]*x[9]-0.57*x[3]*x[10]+1.2*x[3]*x[11]+1.13*x[4]*x[7]-1.22*x[4]*x[8]+1.51*x[4]*x[9]+1.72*x[4]*x[10]+0.6*x[4]*x[11]+1.94*x[5]*x[7]-0.97*x[5]*x[8]+1.51*x[5]*x[9]-1.87*x[5]*x[10]-1.74*x[5]*x[11]+(-0.88*x[6]*x[7])-0.79*x[6]*x[8]-0.01*x[6]*x[9]+1.32*x[6]*x[10]+1.11*x[6]*x[11]+0.09*x[2]-0.99*x[3]+0.75*x[4]+0.84*x[5]+0.09*x[6]-0.36*x[7]+0.25*x[8]+0.27*x[9]-0.49*x[10]+0.85*x[11])+x[1] == 0.0)
@NLconstraint(m, e2, 0.3*x[2]*x[8]-0.33*x[2]*x[7]-0.78*x[2]*x[9]+0.08*x[2]*x[10]+0.62*x[2]*x[11]+(-0.96*x[3]*x[7])-0.67*x[3]*x[8]-1.51*x[3]*x[9]+1.02*x[3]*x[10]-0.98*x[3]*x[11]+0.2*x[4]*x[7]+0.74*x[4]*x[8]+0.5*x[4]*x[9]+0.36*x[4]*x[10]-0.34*x[4]*x[11]+1.22*x[5]*x[8]-0.69*x[5]*x[7]-1.78*x[5]*x[9]-0.47*x[5]*x[10]-0.51*x[5]*x[11]+(-0.97*x[6]*x[7])-0.35*x[6]*x[8]+1.21*x[6]*x[9]+1.39*x[6]*x[10]+1.44*x[6]*x[11]-0.6*x[2]+0.1*x[3]+0.5*x[4]+0.23*x[5]+0.99*x[6]-0.45*x[7]-0.59*x[8]-0.32*x[9]-0.57*x[10]+0.92*x[11] <= 35.4)
@NLconstraint(m, e3, 0.92*x[2]*x[7]-1.92*x[2]*x[8]-0.15*x[2]*x[9]+1.09*x[2]*x[10]-0.16*x[2]*x[11]+0.59*x[3]*x[8]-0.26*x[3]*x[7]+0.29*x[3]*x[9]-0.33*x[3]*x[10]+0.57*x[3]*x[11]+0.44*x[4]*x[7]+0.58*x[4]*x[8]+0.47*x[4]*x[9]-0.87*x[4]*x[10]-0.78*x[4]*x[11]+1.91*x[5]*x[7]-0.06*x[5]*x[8]-1.63*x[5]*x[9]+0.63*x[5]*x[10]-1.44*x[5]*x[11]+1.82*x[6]*x[7]+1.11*x[6]*x[8]+0.8*x[6]*x[9]+0.39*x[6]*x[10]-0.76*x[6]*x[11]+0.39*x[2]+0.58*x[3]-0.94*x[4]+0.95*x[5]+0.81*x[6]-0.16*x[7]-0.57*x[8]-0.29*x[9]-0.4*x[10]+0.79*x[11] <= 50.13)
@NLconstraint(m, e4, 1.14*x[2]*x[8]-0.01*x[2]*x[7]-1.94*x[2]*x[9]+0.47*x[2]*x[10]-1.31*x[2]*x[11]+(-0.62*x[3]*x[7])-0.68*x[3]*x[8]+0.92*x[3]*x[9]-0.78*x[3]*x[10]+1.05*x[3]*x[11]+0.47*x[4]*x[7]+1.55*x[4]*x[8]+0.11*x[4]*x[9]-1.74*x[4]*x[10]-1.5*x[4]*x[11]+0.62*x[5]*x[8]-0.42*x[5]*x[7]-0.81*x[5]*x[9]+1.68*x[5]*x[10]-0.61*x[5]*x[11]+1.78*x[6]*x[7]-0.34*x[6]*x[8]+1.99*x[6]*x[9]+0.91*x[6]*x[10]-1.57*x[6]*x[11]+0.27*x[2]-0.43*x[3]+0.1*x[4]+0.27*x[5]+0.29*x[6]+0.43*x[7]-0.82*x[8]-0.76*x[9]+0.45*x[10]+0.44*x[11] <= 78.02)
@NLconstraint(m, e5, (-0.03*x[2]*x[7])-1.18*x[2]*x[8]-1.55*x[2]*x[9]-0.1*x[2]*x[10]-0.83*x[2]*x[11]+1.81*x[3]*x[7]-0.06*x[3]*x[8]+0.76*x[3]*x[9]-0.41*x[3]*x[10]-0.67*x[3]*x[11]+1.86*x[4]*x[7]+0.73*x[4]*x[8]+0.04*x[4]*x[9]+0.58*x[4]*x[10]-1.68*x[4]*x[11]+(-0.78*x[5]*x[7])-0.41*x[5]*x[8]-0.02*x[5]*x[9]+0.8*x[5]*x[10]+0.16*x[5]*x[11]+0.76*x[6]*x[8]-0.79*x[6]*x[7]-0.28*x[6]*x[9]+1.38*x[6]*x[10]+0.03*x[6]*x[11]+0.36*x[2]-0.77*x[3]-0.91*x[4]+0.47*x[5]-0.28*x[6]-0.11*x[7]+0.24*x[8]-0.25*x[9]-0.07*x[10]+0.92*x[11] <= 90.9)
@NLconstraint(m, e6, (-1.9*x[2]*x[7])-0.58*x[2]*x[8]+1.4*x[2]*x[9]-0.17*x[2]*x[10]+0.61*x[2]*x[11]+1.86*x[3]*x[7]-0.34*x[3]*x[8]-0.79*x[3]*x[9]-1.68*x[3]*x[10]+0.33*x[3]*x[11]+(-0.6*x[4]*x[7])-1.48*x[4]*x[8]+0.16*x[4]*x[9]-1.66*x[4]*x[10]+1.85*x[4]*x[11]+1.28*x[5]*x[7]+1.26*x[5]*x[8]-0.41*x[5]*x[9]+1.85*x[5]*x[10]-0.15*x[5]*x[11]+0.27*x[6]*x[7]+1.8*x[6]*x[8]-0.56*x[6]*x[9]-1.52*x[6]*x[10]+0.09*x[6]*x[11]+0.31*x[2]+0.93*x[4]-0.11*x[5]+0.69*x[6]+0.59*x[7]+0.52*x[8]-0.62*x[9]-0.12*x[10]+0.44*x[11] <= 4.29)
@NLconstraint(m, e7, 1.33*x[2]*x[7]-1.7*x[2]*x[8]+0.39*x[2]*x[9]-0.75*x[2]*x[10]+1.94*x[2]*x[11]+(-0.37*x[3]*x[7])-1.96*x[3]*x[8]+0.05*x[3]*x[9]-1.43*x[3]*x[10]-0.01*x[3]*x[11]+0.28*x[4]*x[7]-x[4]*x[8]+1.67*x[4]*x[9]-0.9*x[4]*x[10]-1.47*x[4]*x[11]+0.13*x[5]*x[7]+0.12*x[5]*x[8]+0.7*x[5]*x[9]-0.97*x[5]*x[10]+0.75*x[5]*x[11]+0.9*x[6]*x[7]+1.73*x[6]*x[8]+1.59*x[6]*x[9]+1.07*x[6]*x[10]+0.4*x[6]*x[11]+0.29*x[2]-0.02*x[3]-0.25*x[4]+0.1*x[5]+0.15*x[6]+0.16*x[7]+0.36*x[8]+0.45*x[9]-0.97*x[10]+0.13*x[11] <= 64.58)
@NLconstraint(m, e8, 0.91*x[2]*x[8]-0.72*x[2]*x[7]-0.07*x[2]*x[9]-0.71*x[2]*x[10]-1.38*x[2]*x[11]+1.6*x[3]*x[7]-1.98*x[3]*x[8]+1.81*x[3]*x[9]-0.46*x[3]*x[10]-0.23*x[3]*x[11]+0.83*x[4]*x[8]-0.26*x[4]*x[7]+0.47*x[4]*x[9]-0.22*x[4]*x[10]-1.06*x[4]*x[11]+0.2*x[5]*x[8]-1.07*x[5]*x[7]-0.74*x[5]*x[9]-0.37*x[5]*x[10]-1.95*x[5]*x[11]+(-1.13*x[6]*x[7])-1.23*x[6]*x[8]+0.42*x[6]*x[9]+1.59*x[6]*x[10]-1.77*x[6]*x[11]+0.61*x[2]+0.43*x[3]+0.85*x[4]+0.26*x[5]+0.09*x[6]+0.03*x[7]+0.69*x[8]+0.33*x[9]+0.62*x[10]+0.81*x[11] <= 36.63)
@NLconstraint(m, e9, 1.97*x[2]*x[7]+1.77*x[2]*x[8]-0.22*x[2]*x[9]+1.72*x[2]*x[10]+1.88*x[2]*x[11]+1.3*x[3]*x[7]-1.04*x[3]*x[8]-0.63*x[3]*x[9]+0.89*x[3]*x[10]+0.33*x[3]*x[11]+0.84*x[4]*x[8]-1.54*x[4]*x[7]+0.13*x[4]*x[9]+0.11*x[4]*x[10]-0.08*x[4]*x[11]+(-0.1*x[5]*x[7])-1.55*x[5]*x[8]+0.26*x[5]*x[9]-0.53*x[5]*x[10]-0.72*x[5]*x[11]+1.24*x[6]*x[7]-0.6*x[6]*x[8]-0.91*x[6]*x[9]-1.49*x[6]*x[10]-0.64*x[6]*x[11]-0.85*x[2]-0.87*x[3]+0.42*x[4]+0.16*x[5]+0.28*x[6]+0.14*x[7]+0.7*x[8]-0.37*x[9]+0.82*x[10]-0.54*x[11] <= 74.69)
@NLconstraint(m, e10, 0.76*x[2]*x[8]-0.92*x[2]*x[7]-0.68*x[2]*x[10]-1.76*x[2]*x[11]+1.07*x[3]*x[8]-0.94*x[3]*x[7]+0.47*x[3]*x[9]-1.19*x[3]*x[10]+1.54*x[3]*x[11]+0.05*x[4]*x[7]+1.83*x[4]*x[8]-0.21*x[4]*x[9]-0.13*x[4]*x[10]-0.5*x[4]*x[11]+0.94*x[5]*x[7]+1.78*x[5]*x[8]+0.02*x[5]*x[9]-1.21*x[5]*x[10]-1.35*x[5]*x[11]+1.9*x[6]*x[8]-1.57*x[6]*x[7]-1.81*x[6]*x[9]-1.5*x[6]*x[10]-0.18*x[6]*x[11]-0.29*x[2]+0.19*x[3]+0.25*x[4]+0.08*x[5]-0.52*x[6]-0.37*x[7]+0.52*x[8]-0.21*x[9]-0.93*x[10]-0.92*x[11] <= 17.97)
@NLconstraint(m, e11, (-1.61*x[2]*x[7])-1.17*x[2]*x[8]-1.79*x[2]*x[9]+0.55*x[2]*x[10]+1.02*x[2]*x[11]+(-1.04*x[3]*x[7])-1.84*x[3]*x[8]-0.03*x[3]*x[9]-0.61*x[3]*x[10]-1.71*x[3]*x[11]+1.39*x[4]*x[7]+1.53*x[4]*x[8]+1.91*x[4]*x[9]-1.72*x[4]*x[10]-1.18*x[4]*x[11]+0.59*x[5]*x[7]-1.95*x[5]*x[8]-0.7*x[5]*x[9]-1.89*x[5]*x[10]+0.41*x[5]*x[11]+(-1.5*x[6]*x[7])-0.89*x[6]*x[8]+0.12*x[6]*x[9]-1.51*x[6]*x[10]+0.74*x[6]*x[11]-0.4*x[2]+0.32*x[3]+0.84*x[4]+0.48*x[5]+0.35*x[6]+0.78*x[7]-0.19*x[8]-0.04*x[9]-0.52*x[10]+0.04*x[11] <= 39.75)
@NLconstraint(m, e12, (-0.96*x[2]*x[7])-1.72*x[2]*x[8]-0.54*x[2]*x[9]+1.76*x[2]*x[10]-0.75*x[2]*x[11]+1.14*x[3]*x[8]-0.7*x[3]*x[7]+1.58*x[3]*x[9]+0.28*x[3]*x[10]+1.12*x[3]*x[11]+(-0.28*x[4]*x[7])-0.22*x[4]*x[8]-1.42*x[4]*x[9]-0.73*x[4]*x[10]-0.17*x[4]*x[11]+1.87*x[5]*x[7]+0.11*x[5]*x[8]-1.26*x[5]*x[9]+0.47*x[5]*x[10]-1.22*x[5]*x[11]+(-0.06*x[6]*x[7])-0.81*x[6]*x[8]+1.51*x[6]*x[9]+0.9*x[6]*x[10]+0.47*x[6]*x[11]-0.63*x[2]+0.15*x[3]+0.59*x[4]+0.32*x[5]+0.97*x[6]-0.05*x[7]+0.11*x[8]+0.66*x[9]-0.59*x[10]-0.81*x[11] <= 62.07)
@NLconstraint(m, e13, 1.37*x[2]*x[7]+1.55*x[2]*x[8]-1.01*x[2]*x[9]-1.09*x[2]*x[10]+1.06*x[2]*x[11]+0.68*x[3]*x[8]-1.09*x[3]*x[7]-1.27*x[3]*x[9]+1.21*x[3]*x[10]-0.88*x[3]*x[11]+0.77*x[4]*x[8]-0.34*x[4]*x[7]-0.51*x[4]*x[9]+1.68*x[4]*x[10]+0.69*x[4]*x[11]+(-1.55*x[5]*x[7])-1.53*x[5]*x[8]+1.19*x[5]*x[9]+0.74*x[5]*x[10]+1.83*x[5]*x[11]+0.35*x[6]*x[8]-1.82*x[6]*x[7]-0.22*x[6]*x[9]-0.06*x[6]*x[10]+1.43*x[6]*x[11]+0.31*x[2]-0.96*x[3]-0.29*x[4]+0.55*x[5]-x[6]-0.96*x[7]-0.58*x[8]-0.99*x[9]+0.35*x[10]-0.86*x[11] <= 28.85)
@NLconstraint(m, e14, 0.22*x[2]*x[7]+1.02*x[2]*x[8]-0.84*x[2]*x[9]+1.11*x[2]*x[10]-1.71*x[2]*x[11]+1.92*x[3]*x[8]-1.05*x[3]*x[7]-1.74*x[3]*x[9]+1.24*x[3]*x[10]+0.53*x[3]*x[11]+0.85*x[4]*x[7]+1.69*x[4]*x[8]-1.45*x[4]*x[9]+0.49*x[4]*x[10]+0.55*x[4]*x[11]+(-0.31*x[5]*x[7])-0.88*x[5]*x[8]+1.56*x[5]*x[9]-0.97*x[5]*x[10]-1.62*x[5]*x[11]+0.86*x[6]*x[7]-1.01*x[6]*x[8]-1.54*x[6]*x[9]+0.2*x[6]*x[10]-0.3*x[6]*x[11]-0.97*x[2]-0.28*x[3]-0.09*x[4]+0.74*x[5]+0.21*x[6]+0.01*x[7]-0.95*x[8]-0.46*x[9]+0.11*x[10]+0.94*x[11] <= 41.96)
@NLconstraint(m, e15, 1.01*x[2]*x[7]+1.86*x[2]*x[8]+1.46*x[2]*x[9]-0.87*x[2]*x[10]+1.28*x[2]*x[11]+1.62*x[3]*x[7]+0.12*x[3]*x[8]-1.93*x[3]*x[9]+1.73*x[3]*x[10]-0.52*x[3]*x[11]+1.97*x[4]*x[7]-0.64*x[4]*x[8]+0.96*x[4]*x[9]-1.84*x[4]*x[10]-0.76*x[4]*x[11]+0.96*x[5]*x[7]-0.45*x[5]*x[8]+1.58*x[5]*x[9]-1.73*x[5]*x[10]-0.78*x[5]*x[11]+0.61*x[6]*x[7]+1.63*x[6]*x[8]-0.07*x[6]*x[9]-0.88*x[6]*x[10]-0.54*x[6]*x[11]+0.95*x[2]+0.09*x[3]+0.23*x[4]-0.05*x[5]+0.08*x[6]-0.53*x[7]-0.21*x[8]-0.74*x[9]+0.37*x[10]-0.77*x[11] <= 56.14)
@NLconstraint(m, e16, 0.59*x[2]*x[7]+0.34*x[2]*x[8]+1.58*x[2]*x[10]-1.68*x[2]*x[11]+0.78*x[3]*x[7]-1.33*x[3]*x[8]+1.87*x[3]*x[9]-0.55*x[3]*x[10]+0.49*x[3]*x[11]+(-1.51*x[4]*x[7])-1.25*x[4]*x[8]+0.52*x[4]*x[9]-0.72*x[4]*x[10]-1.83*x[4]*x[11]+(-0.23*x[5]*x[7])-0.44*x[5]*x[8]-x[5]*x[9]+1.33*x[5]*x[10]+1.86*x[5]*x[11]+x[6]*x[7]-0.95*x[6]*x[8]+1.3*x[6]*x[9]-0.15*x[6]*x[10]+1.35*x[6]*x[11]-0.99*x[2]+0.93*x[3]+0.75*x[4]+0.89*x[5]-0.31*x[7]+x[8]-0.23*x[9]-0.06*x[10]+0.72*x[11] <= 62.55)
@NLconstraint(m, e17, (-0.04*x[2]*x[7])-1.93*x[2]*x[8]-1.03*x[2]*x[9]+1.79*x[2]*x[10]-1.98*x[2]*x[11]+0.63*x[3]*x[7]+0.01*x[3]*x[8]-1.74*x[3]*x[9]-1.2*x[3]*x[10]-1.04*x[3]*x[11]+1.41*x[4]*x[7]+0.79*x[4]*x[8]-1.87*x[4]*x[9]+1.5*x[4]*x[10]-1.35*x[4]*x[11]+0.08*x[5]*x[7]+2*x[5]*x[8]-0.63*x[5]*x[9]-1.12*x[5]*x[10]+1.05*x[5]*x[11]+1.59*x[6]*x[7]-x[6]*x[8]+0.71*x[6]*x[9]-1.51*x[6]*x[10]-0.55*x[6]*x[11]+0.77*x[2]-0.15*x[3]-0.74*x[4]+0.06*x[5]+0.68*x[6]-0.26*x[7]-0.86*x[8]-0.32*x[9]+0.47*x[10]-0.04*x[11] <= 87.05)
@NLconstraint(m, e18, 0.09*x[2]*x[7]-0.08*x[2]*x[8]+1.03*x[2]*x[9]+1.91*x[2]*x[10]+1.93*x[2]*x[11]+0.65*x[3]*x[7]-0.95*x[3]*x[8]+1.9*x[3]*x[9]-1.18*x[3]*x[10]+0.26*x[3]*x[11]+(-1.36*x[4]*x[7])-1.69*x[4]*x[8]+1.73*x[4]*x[9]-1.47*x[4]*x[10]-1.77*x[4]*x[11]+(-1.81*x[5]*x[7])-0.83*x[5]*x[8]-0.36*x[5]*x[9]+0.64*x[5]*x[10]-0.45*x[5]*x[11]+(-1.88*x[6]*x[7])-0.36*x[6]*x[8]-0.94*x[6]*x[9]-1.91*x[6]*x[10]-0.06*x[6]*x[11]+0.32*x[2]+0.01*x[3]+0.39*x[4]+0.84*x[5]+0.37*x[6]+0.24*x[7]-0.31*x[8]-0.96*x[9]-0.37*x[10]-0.04*x[11] <= 76.5)
@NLconstraint(m, e19, 1.31*x[2]*x[8]-0.4*x[2]*x[7]+1.82*x[2]*x[9]+0.45*x[2]*x[10]-1.28*x[2]*x[11]+1.5*x[3]*x[7]-1.03*x[3]*x[8]+1.38*x[3]*x[9]+0.3*x[3]*x[10]-1.75*x[3]*x[11]+(-0.42*x[4]*x[7])-1.13*x[4]*x[8]-0.4*x[4]*x[9]-0.17*x[4]*x[10]+1.46*x[4]*x[11]+(-1.82*x[5]*x[7])-1.44*x[5]*x[8]-1.42*x[5]*x[9]-1.19*x[5]*x[10]+0.23*x[6]*x[8]-0.75*x[6]*x[7]+1.15*x[6]*x[9]+0.71*x[6]*x[10]-0.29*x[6]*x[11]-0.1*x[2]-0.67*x[3]-0.05*x[4]-0.71*x[6]+0.95*x[7]-0.92*x[8]-0.31*x[9]-0.65*x[10]+0.15*x[11] <= 35.57)
@NLconstraint(m, e20, (-1.25*x[2]*x[7])-0.1*x[2]*x[8]+1.47*x[2]*x[9]-0.99*x[2]*x[10]-0.5*x[2]*x[11]+(-1.93*x[3]*x[7])-0.9*x[3]*x[8]-1.16*x[3]*x[9]+0.55*x[3]*x[10]+0.05*x[3]*x[11]+0.89*x[4]*x[7]+0.34*x[4]*x[8]-0.9*x[4]*x[9]+0.83*x[4]*x[10]+0.26*x[4]*x[11]+1.04*x[5]*x[7]-0.18*x[5]*x[8]+1.23*x[5]*x[9]+0.51*x[5]*x[10]+1.83*x[5]*x[11]+1.24*x[6]*x[7]+0.01*x[6]*x[8]+0.56*x[6]*x[9]-1.35*x[6]*x[10]+0.57*x[6]*x[11]+0.78*x[2]+0.65*x[3]+0.32*x[4]+0.98*x[5]-0.43*x[6]-0.57*x[7]+0.18*x[8]-0.15*x[9]-0.65*x[10]+0.94*x[11] <= 44.97)
@NLconstraint(m, e21, (-0.97*x[2]*x[7])-0.47*x[2]*x[8]+0.01*x[2]*x[9]+1.2*x[2]*x[10]-0.23*x[2]*x[11]+1.09*x[3]*x[7]+1.32*x[3]*x[8]-1.43*x[3]*x[9]-1.65*x[3]*x[10]+0.37*x[3]*x[11]+1.27*x[4]*x[8]-1.38*x[4]*x[7]+0.59*x[4]*x[9]+1.49*x[4]*x[10]+0.08*x[4]*x[11]+1.91*x[5]*x[8]-0.67*x[5]*x[7]+0.59*x[5]*x[9]-0.16*x[5]*x[10]+0.03*x[5]*x[11]+0.42*x[6]*x[7]+0.3*x[6]*x[8]+0.73*x[6]*x[9]-0.6*x[6]*x[10]+0.33*x[6]*x[11]+0.92*x[2]+0.31*x[3]-0.03*x[4]+0.25*x[5]+0.54*x[6]+0.61*x[7]+0.24*x[8]-0.89*x[9]+0.77*x[10]-0.08*x[11] <= 4.04)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
