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
@NLconstraint(m, e1, -(0.97*x[2]*x[8]-0.16*x[2]*x[7]-0.82*x[2]*x[9]-0.94*x[2]*x[10]-0.3*x[2]*x[11]+0.79*x[3]*x[7]+1.79*x[3]*x[8]+1.94*x[3]*x[9]-1.46*x[3]*x[10]-1.29*x[3]*x[11]+1.2*x[4]*x[7]+0.44*x[4]*x[8]+1.25*x[4]*x[9]+x[4]*x[10]-1.8*x[4]*x[11]+0.78*x[5]*x[7]-0.58*x[5]*x[8]+1.68*x[5]*x[9]+1.39*x[5]*x[10]-1.62*x[5]*x[11]+1.11*x[6]*x[8]-0.5*x[6]*x[7]-1.72*x[6]*x[9]-1.31*x[6]*x[10]+1.53*x[6]*x[11]+0.51*x[2]+0.84*x[3]-0.19*x[4]-0.06*x[5]+0.31*x[6]-0.77*x[7]-0.67*x[8]+0.55*x[9]+0.41*x[10]-0.92*x[11])+x[1] == 0.0)
@NLconstraint(m, e2, 1.75*x[2]*x[7]+1.78*x[2]*x[8]-0.88*x[2]*x[9]+1.72*x[2]*x[10]+1.57*x[2]*x[11]+1.41*x[3]*x[7]-0.88*x[3]*x[8]+1.06*x[3]*x[9]+0.28*x[3]*x[10]+1.96*x[3]*x[11]+(-1.48*x[4]*x[7])-1.84*x[4]*x[8]+0.22*x[4]*x[9]-1.89*x[4]*x[10]-0.95*x[4]*x[11]+1.49*x[5]*x[7]-0.72*x[5]*x[8]-1.02*x[5]*x[9]-1.37*x[5]*x[10]+0.59*x[5]*x[11]+1.35*x[6]*x[7]-0.1*x[6]*x[8]+1.76*x[6]*x[9]+1.33*x[6]*x[10]-0.74*x[6]*x[11]-0.18*x[2]+0.77*x[3]-0.5*x[4]-0.55*x[5]+0.58*x[6]-0.61*x[7]-0.17*x[8]+0.21*x[9]-0.72*x[10]-0.54*x[11] <= 37.77)
@NLconstraint(m, e3, (-1.83*x[2]*x[7])-1.25*x[2]*x[8]-0.53*x[2]*x[9]+2*x[2]*x[10]-1.98*x[2]*x[11]+0.93*x[3]*x[7]+0.02*x[3]*x[8]+0.95*x[3]*x[9]+1.06*x[3]*x[10]-0.79*x[3]*x[11]+(-0.65*x[4]*x[7])-0.67*x[4]*x[8]+0.8*x[4]*x[9]+1.92*x[4]*x[10]+0.66*x[4]*x[11]+(-0.88*x[5]*x[7])-1.64*x[5]*x[8]-1.14*x[5]*x[9]+1.99*x[5]*x[10]+0.02*x[5]*x[11]+0.86*x[6]*x[7]+0.29*x[6]*x[8]+1.54*x[6]*x[9]+1.14*x[6]*x[10]-1.07*x[6]*x[11]+0.39*x[2]-0.34*x[3]-0.13*x[4]-0.3*x[5]-0.16*x[7]+0.47*x[8]+0.12*x[9]-0.7*x[10]+0.28*x[11] <= 46.28)
@NLconstraint(m, e4, 0.93*x[2]*x[7]-1.79*x[2]*x[8]-1.95*x[2]*x[9]+0.2*x[2]*x[10]-0.59*x[2]*x[11]+0.91*x[3]*x[7]+0.63*x[3]*x[8]-0.24*x[3]*x[9]+0.08*x[3]*x[10]-0.79*x[3]*x[11]+0.75*x[4]*x[8]-1.82*x[4]*x[7]+0.66*x[4]*x[9]+0.09*x[4]*x[10]-1.49*x[4]*x[11]+1.19*x[5]*x[7]+1.67*x[5]*x[8]+1.99*x[5]*x[9]-1.43*x[5]*x[10]-0.1*x[5]*x[11]+(-1.46*x[6]*x[7])-1.73*x[6]*x[8]+1.24*x[6]*x[9]+1.88*x[6]*x[10]+0.77*x[6]*x[11]+0.13*x[2]+0.98*x[3]-0.12*x[4]-0.08*x[5]+0.41*x[6]-0.48*x[7]+0.67*x[8]-0.77*x[9]+0.71*x[10]-0.61*x[11] <= 76.45)
@NLconstraint(m, e5, 0.99*x[2]*x[7]+0.26*x[2]*x[8]-1.47*x[2]*x[9]-0.93*x[2]*x[10]+1.28*x[2]*x[11]+0.98*x[3]*x[7]-1.43*x[3]*x[8]+1.83*x[3]*x[9]-0.65*x[3]*x[10]+0.99*x[3]*x[11]+1.8*x[4]*x[8]-1.67*x[4]*x[7]+0.5*x[4]*x[9]-0.5*x[4]*x[10]-0.31*x[4]*x[11]+0.18*x[5]*x[7]-0.8*x[5]*x[8]-0.4*x[5]*x[9]-1.83*x[5]*x[10]-0.75*x[5]*x[11]+1.51*x[6]*x[8]-1.13*x[6]*x[7]-1.22*x[6]*x[9]-1.47*x[6]*x[10]+0.12*x[6]*x[11]-0.14*x[2]+0.39*x[3]-0.97*x[4]-0.53*x[5]+0.66*x[6]+0.7*x[7]+0.85*x[8]-0.31*x[9]-0.56*x[10]-0.09*x[11] <= 82.67)
@NLconstraint(m, e6, 1.78*x[2]*x[7]+1.71*x[2]*x[8]-1.15*x[2]*x[9]+1.2*x[2]*x[10]-1.66*x[2]*x[11]+1.05*x[3]*x[7]-1.42*x[3]*x[8]-1.66*x[3]*x[9]+1.25*x[3]*x[10]-0.41*x[3]*x[11]+1.16*x[4]*x[7]+0.82*x[4]*x[8]-0.54*x[4]*x[9]+0.46*x[4]*x[10]-1.63*x[4]*x[11]+1.52*x[5]*x[7]-1.79*x[5]*x[8]+0.88*x[5]*x[9]+0.09*x[5]*x[10]+0.28*x[5]*x[11]+1.37*x[6]*x[7]+0.26*x[6]*x[8]-0.35*x[6]*x[9]+1.99*x[6]*x[10]+1.19*x[6]*x[11]-0.13*x[3]+0.09*x[4]-0.15*x[5]-0.02*x[6]+0.29*x[7]-0.06*x[8]+0.61*x[9]-0.29*x[10]+0.23*x[11] <= 7.89)
@NLconstraint(m, e7, 0.92*x[2]*x[8]-1.72*x[2]*x[7]+0.72*x[2]*x[9]+1.33*x[2]*x[10]+1.85*x[2]*x[11]+(-0.66*x[3]*x[7])-1.02*x[3]*x[8]-0.27*x[3]*x[9]-0.49*x[3]*x[10]-0.86*x[3]*x[11]+(-1.67*x[4]*x[7])-1.91*x[4]*x[8]-1.46*x[4]*x[9]-1.7*x[4]*x[10]-1.09*x[4]*x[11]+(-1.72*x[5]*x[7])-0.18*x[5]*x[8]-1.09*x[5]*x[9]-1.38*x[5]*x[10]-1.06*x[5]*x[11]+(-1.72*x[6]*x[7])-0.75*x[6]*x[8]-1.42*x[6]*x[9]+0.17*x[6]*x[10]-0.04*x[6]*x[11]+0.74*x[2]+0.41*x[3]-0.16*x[4]+0.5*x[5]+0.35*x[6]+0.87*x[7]+0.35*x[8]-0.19*x[9]+0.55*x[10]+0.98*x[11] <= 29.79)
@NLconstraint(m, e8, (-0.02*x[2]*x[7])-0.16*x[2]*x[8]+1.09*x[2]*x[9]+1.31*x[2]*x[10]+1.25*x[2]*x[11]+1.56*x[3]*x[7]-1.96*x[3]*x[8]-0.85*x[3]*x[9]-0.21*x[3]*x[10]-1.19*x[3]*x[11]+(-0.32*x[4]*x[7])-1.06*x[4]*x[8]+1.93*x[4]*x[9]-0.24*x[4]*x[10]+1.86*x[4]*x[11]+(-1.78*x[5]*x[7])-1.36*x[5]*x[8]+0.5*x[5]*x[9]+1.56*x[5]*x[10]-0.48*x[5]*x[11]+(-0.77*x[6]*x[7])-1.17*x[6]*x[8]-0.5*x[6]*x[9]-1.55*x[6]*x[10]-0.02*x[6]*x[11]+0.63*x[2]+0.69*x[3]+0.27*x[4]+0.35*x[5]-0.07*x[6]+0.26*x[7]-0.91*x[8]-0.15*x[9]-0.88*x[10]+0.79*x[11] <= 49.09)
@NLconstraint(m, e9, 1.48*x[2]*x[7]+1.84*x[2]*x[8]+1.43*x[2]*x[9]-1.04*x[2]*x[10]-1.11*x[2]*x[11]+1.26*x[3]*x[8]-1.62*x[3]*x[7]-1.52*x[3]*x[9]-0.93*x[3]*x[10]-1.6*x[3]*x[11]+(-0.48*x[4]*x[7])-1.84*x[4]*x[8]+1.76*x[4]*x[9]-0.57*x[4]*x[10]-1.99*x[4]*x[11]+(-0.1*x[5]*x[7])-1.7*x[5]*x[8]-1.07*x[5]*x[9]+1.7*x[5]*x[10]+1.98*x[5]*x[11]+1.85*x[6]*x[7]-1.99*x[6]*x[8]+0.22*x[6]*x[9]+1.32*x[6]*x[10]-1.02*x[6]*x[11]+0.55*x[2]+0.01*x[3]-0.52*x[4]+0.26*x[5]+0.21*x[6]-0.75*x[7]+0.93*x[8]+0.88*x[9]+0.35*x[10]+0.67*x[11] <= 3.76)
@NLconstraint(m, e10, 0.38*x[2]*x[7]-0.67*x[2]*x[8]+1.84*x[2]*x[9]+0.69*x[2]*x[10]+0.31*x[2]*x[11]+(-0.39*x[3]*x[7])-0.08*x[3]*x[8]-1.39*x[3]*x[9]+0.1*x[3]*x[10]+0.72*x[3]*x[11]+(-1.89*x[4]*x[7])-0.84*x[4]*x[8]+0.98*x[4]*x[9]+0.14*x[4]*x[10]+0.61*x[4]*x[11]+1.18*x[5]*x[8]-1.63*x[5]*x[7]+1.3*x[5]*x[9]+0.13*x[5]*x[10]+0.9*x[5]*x[11]+0.95*x[6]*x[7]-1.84*x[6]*x[8]-1.98*x[6]*x[9]-1.33*x[6]*x[10]-1.77*x[6]*x[11]+0.26*x[2]+0.62*x[3]+0.17*x[4]-0.91*x[5]-0.88*x[6]+0.82*x[7]-0.94*x[8]-0.89*x[9]-0.38*x[10]+0.28*x[11] <= 64.35)
@NLconstraint(m, e11, 1.84*x[2]*x[7]+0.11*x[2]*x[8]-0.31*x[2]*x[9]+0.41*x[2]*x[10]-0.01*x[2]*x[11]+0.67*x[3]*x[7]-1.84*x[3]*x[8]-0.95*x[3]*x[9]+0.41*x[3]*x[10]-1.71*x[3]*x[11]+1.86*x[4]*x[7]+1.88*x[4]*x[8]-0.44*x[4]*x[9]+1.88*x[4]*x[10]+0.56*x[4]*x[11]+0.97*x[5]*x[8]-0.39*x[5]*x[7]-0.92*x[5]*x[9]+1.77*x[5]*x[10]+1.18*x[5]*x[11]+1.16*x[6]*x[7]+0.34*x[6]*x[8]+1.14*x[6]*x[9]+0.48*x[6]*x[10]-0.62*x[6]*x[11]-0.91*x[2]-0.1*x[3]+0.69*x[4]-0.23*x[5]-0.28*x[6]+0.85*x[7]-0.88*x[8]-0.51*x[9]+0.85*x[11] <= 81.11)
@NLconstraint(m, e12, 1.76*x[2]*x[8]-1.27*x[2]*x[7]+0.16*x[2]*x[9]+0.69*x[2]*x[10]-0.04*x[2]*x[11]+0.6*x[3]*x[7]-1.31*x[3]*x[8]+1.18*x[3]*x[9]+1.39*x[3]*x[10]+0.14*x[3]*x[11]+0.17*x[4]*x[8]-1.42*x[4]*x[7]-1.47*x[4]*x[9]+1.27*x[4]*x[10]-1.79*x[4]*x[11]+0.01*x[5]*x[7]-0.29*x[5]*x[8]+0.01*x[5]*x[9]-1.22*x[5]*x[10]-1.45*x[5]*x[11]+0.14*x[6]*x[7]-0.67*x[6]*x[8]-0.2*x[6]*x[9]-0.51*x[6]*x[10]+1.71*x[6]*x[11]+0.39*x[2]+0.3*x[3]+0.74*x[4]-0.16*x[5]-0.9*x[6]-0.3*x[7]+0.08*x[8]-0.76*x[9]+0.98*x[10]-0.03*x[11] <= 4.71)
@NLconstraint(m, e13, (-0.07*x[2]*x[7])-1.51*x[2]*x[8]+0.28*x[2]*x[9]-0.7*x[2]*x[10]-0.42*x[2]*x[11]+(-0.66*x[3]*x[7])-0.68*x[3]*x[8]-1.57*x[3]*x[9]+1.77*x[3]*x[10]-1.75*x[3]*x[11]+(-1.35*x[4]*x[7])-1.67*x[4]*x[8]+1.77*x[4]*x[9]-1.7*x[4]*x[10]+1.64*x[4]*x[11]+1.67*x[5]*x[7]+1.85*x[5]*x[8]-0.78*x[5]*x[9]+1.55*x[5]*x[10]+1.9*x[5]*x[11]+1.2*x[6]*x[7]-1.02*x[6]*x[8]-0.83*x[6]*x[9]+1.33*x[6]*x[10]-1.85*x[6]*x[11]-0.5*x[2]-0.23*x[3]+0.24*x[4]-0.21*x[5]+0.73*x[6]+0.16*x[7]+0.05*x[8]+0.45*x[9]+0.79*x[10]+0.82*x[11] <= 18.18)
@NLconstraint(m, e14, 0.81*x[2]*x[8]-1.77*x[2]*x[7]+0.84*x[2]*x[9]+0.55*x[2]*x[10]+1.01*x[2]*x[11]+1.6*x[3]*x[8]-0.43*x[3]*x[7]+1.28*x[3]*x[9]+0.25*x[3]*x[10]+0.49*x[3]*x[11]+0.72*x[4]*x[7]-0.35*x[4]*x[8]-1.71*x[4]*x[9]-1.1*x[4]*x[10]-0.05*x[4]*x[11]+1.62*x[5]*x[7]-0.41*x[5]*x[8]+0.52*x[5]*x[9]-1.46*x[5]*x[10]-0.11*x[5]*x[11]+1.21*x[6]*x[8]-0.34*x[6]*x[7]-0.14*x[6]*x[9]+0.95*x[6]*x[10]+0.4*x[6]*x[11]+0.95*x[2]+0.92*x[3]-0.93*x[4]-0.49*x[5]+0.19*x[6]-0.62*x[7]-0.3*x[8]+0.78*x[9]+0.32*x[11] <= 59.95)
@NLconstraint(m, e15, 1.8*x[2]*x[7]-0.64*x[2]*x[8]+0.12*x[2]*x[9]+0.98*x[2]*x[10]+0.96*x[2]*x[11]+0.5*x[3]*x[7]+0.87*x[3]*x[8]+1.48*x[3]*x[9]-0.71*x[3]*x[10]+1.76*x[3]*x[11]+0.83*x[4]*x[8]-1.46*x[4]*x[7]+1.01*x[4]*x[9]+1.79*x[4]*x[10]+1.77*x[4]*x[11]+0.11*x[5]*x[8]-1.98*x[5]*x[7]+0.02*x[5]*x[9]-1.82*x[5]*x[10]-0.97*x[5]*x[11]+0.94*x[6]*x[7]-1.07*x[6]*x[8]-1.68*x[6]*x[9]+0.14*x[6]*x[10]+0.02*x[6]*x[11]+0.5*x[2]-0.87*x[3]+0.79*x[4]-0.34*x[5]+0.98*x[6]-0.31*x[7]-0.67*x[8]+0.37*x[9]-0.01*x[10]+0.3*x[11] <= 71.33)
@NLconstraint(m, e16, 1.45*x[2]*x[8]-0.45*x[2]*x[7]+1.68*x[2]*x[9]-0.77*x[2]*x[10]-0.13*x[2]*x[11]+(-0.39*x[3]*x[7])-0.3*x[3]*x[8]+0.69*x[3]*x[9]-0.99*x[3]*x[10]-0.64*x[3]*x[11]+1.66*x[4]*x[7]+1.7*x[4]*x[8]+1.77*x[4]*x[9]-1.36*x[4]*x[10]-0.95*x[4]*x[11]+0.71*x[5]*x[7]-0.46*x[5]*x[8]-0.1*x[5]*x[9]+0.27*x[5]*x[10]+1.05*x[5]*x[11]+1.35*x[6]*x[7]+1.36*x[6]*x[8]-1.38*x[6]*x[9]+0.37*x[6]*x[10]+1.88*x[6]*x[11]-0.73*x[2]-0.12*x[3]-0.16*x[4]-0.98*x[5]-0.35*x[6]+0.92*x[7]+0.61*x[8]+0.3*x[9]+0.55*x[10]+0.56*x[11] <= 54.4)
@NLconstraint(m, e17, 1.02*x[2]*x[7]+0.64*x[2]*x[8]+1.24*x[2]*x[9]+1.67*x[2]*x[10]+1.38*x[2]*x[11]+0.08*x[3]*x[7]-0.41*x[3]*x[8]+0.67*x[3]*x[9]+1.12*x[3]*x[10]-1.03*x[3]*x[11]+1.32*x[4]*x[7]+0.96*x[4]*x[8]-0.21*x[4]*x[9]-1.98*x[4]*x[10]+0.08*x[4]*x[11]+1.31*x[5]*x[8]-0.97*x[5]*x[7]-0.18*x[5]*x[9]-1.34*x[5]*x[10]+1.91*x[5]*x[11]+(-1.6*x[6]*x[7])-0.37*x[6]*x[8]-1.55*x[6]*x[9]+1.55*x[6]*x[10]+1.97*x[6]*x[11]+0.41*x[2]-0.15*x[3]+0.05*x[4]+0.01*x[5]-0.56*x[6]-0.05*x[7]-0.78*x[8]-0.48*x[9]+0.36*x[10]-0.19*x[11] <= 49.01)
@NLconstraint(m, e18, 1.89*x[2]*x[8]-1.49*x[2]*x[7]-1.87*x[2]*x[9]+0.37*x[2]*x[10]+1.25*x[2]*x[11]+1.89*x[3]*x[7]+0.85*x[3]*x[8]+1.02*x[3]*x[9]-1.32*x[3]*x[10]+1.41*x[3]*x[11]+0.14*x[4]*x[7]-1.34*x[4]*x[8]+1.51*x[4]*x[9]+1.36*x[4]*x[10]-0.77*x[4]*x[11]+(-1.78*x[5]*x[7])-0.55*x[5]*x[8]-0.6*x[5]*x[9]+0.49*x[5]*x[10]-0.97*x[5]*x[11]+(-1.39*x[6]*x[7])-1.17*x[6]*x[8]-1.89*x[6]*x[9]-0.44*x[6]*x[10]+1.62*x[6]*x[11]-0.88*x[2]-0.94*x[3]-0.85*x[4]-0.98*x[5]-0.71*x[6]+0.84*x[7]-0.43*x[8]-0.31*x[9]-0.34*x[10]-0.12*x[11] <= 93.09)
@NLconstraint(m, e19, 0.48*x[2]*x[8]-1.92*x[2]*x[7]-0.39*x[2]*x[9]-1.63*x[2]*x[10]-0.97*x[2]*x[11]+(-1.09*x[3]*x[7])-1.12*x[3]*x[8]-0.19*x[3]*x[9]-1.96*x[3]*x[10]+0.52*x[3]*x[11]+0.31*x[4]*x[7]+0.63*x[4]*x[8]+0.07*x[4]*x[9]+1.43*x[4]*x[10]+0.93*x[4]*x[11]+0.05*x[5]*x[7]-0.07*x[5]*x[8]-0.45*x[5]*x[9]+1.31*x[5]*x[10]-0.19*x[5]*x[11]+1.27*x[6]*x[8]-0.96*x[6]*x[7]+0.08*x[6]*x[9]+1.39*x[6]*x[10]-1.49*x[6]*x[11]-0.67*x[2]+0.13*x[3]+0.19*x[4]+0.57*x[5]-0.55*x[6]+0.14*x[7]+0.82*x[8]+0.04*x[9]-0.12*x[10]-0.56*x[11] <= 73.45)
@NLconstraint(m, e20, 1.93*x[2]*x[7]-1.48*x[2]*x[8]+0.17*x[2]*x[9]-1.68*x[2]*x[10]-1.2*x[2]*x[11]+1.12*x[3]*x[8]-1.26*x[3]*x[7]+0.74*x[3]*x[9]+1.08*x[3]*x[10]+0.9*x[3]*x[11]+(-0.05*x[4]*x[7])-0.77*x[4]*x[8]-1.6*x[4]*x[9]+1.4*x[4]*x[10]-0.9*x[4]*x[11]+1.01*x[5]*x[7]+1.82*x[5]*x[8]+1.26*x[5]*x[9]+1.5*x[5]*x[10]+0.18*x[5]*x[11]+0.15*x[6]*x[8]-0.11*x[6]*x[7]-1.84*x[6]*x[9]-1.21*x[6]*x[10]+1.66*x[6]*x[11]+0.8*x[2]-0.12*x[3]+0.9*x[4]+0.02*x[5]-0.58*x[6]+0.47*x[7]+0.46*x[8]-0.44*x[9]+0.59*x[10]-0.8*x[11] <= 58.05)
@NLconstraint(m, e21, 0.42*x[2]*x[8]-1.58*x[2]*x[7]-1.17*x[2]*x[9]-0.41*x[2]*x[10]-0.4*x[2]*x[11]+1.66*x[3]*x[8]-1.49*x[3]*x[7]+1.52*x[3]*x[9]+1.89*x[3]*x[10]+1.91*x[3]*x[11]+1.2*x[4]*x[7]+0.97*x[4]*x[8]-0.65*x[4]*x[9]-0.5*x[4]*x[10]-0.03*x[4]*x[11]+1.39*x[5]*x[7]+0.9*x[5]*x[8]-1.47*x[5]*x[9]-0.88*x[5]*x[10]-1.55*x[5]*x[11]+1.46*x[6]*x[7]+0.13*x[6]*x[8]+0.4*x[6]*x[9]+0.45*x[6]*x[10]-1.71*x[6]*x[11]-0.82*x[2]-0.66*x[3]-0.87*x[4]-0.98*x[5]+0.01*x[6]-0.76*x[7]-0.4*x[8]+0.46*x[9]+0.27*x[10]-0.8*x[11] <= 100.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
