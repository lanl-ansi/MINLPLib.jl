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
@NLconstraint(m, e1, -(1.52*x[2]*x[3]-0.72*x[2]*x[4]+1.57*x[2]*x[5]+1.8*x[2]*x[6]+0.54*x[2]*x[7]+0.76*x[2]*x[8]+1.71*x[2]*x[9]+0.94*x[2]*x[10]+0.96*x[2]*x[11]+(-0.64*x[3]*x[4])-0.18*x[3]*x[5]+1.37*x[3]*x[6]+1.88*x[3]*x[7]-1.69*x[3]*x[8]+1.22*x[3]*x[9]+1.5*x[3]*x[10]-1.3*x[3]*x[11]+0.04*x[4]*x[5]-0.05*x[4]*x[6]-0.02*x[4]*x[7]-1.77*x[4]*x[8]-1.41*x[4]*x[9]-1.53*x[4]*x[10]+1.14*x[4]*x[11]+1.43*x[5]*x[7]-1.49*x[5]*x[6]+0.04*x[5]*x[8]-1.88*x[5]*x[9]-1.72*x[5]*x[10]-0.68*x[5]*x[11]+1.55*x[6]*x[7]+1.87*x[6]*x[8]+0.11*x[6]*x[9]-0.99*x[6]*x[10]+0.54*x[6]*x[11]+1.09*x[7]*x[8]-0.07*x[7]*x[9]-1.44*x[7]*x[10]-0.32*x[7]*x[11]+1.59*x[8]*x[10]-1.78*x[8]*x[9]+0.79*x[8]*x[11]+1.25*x[9]*x[10]+1.98*x[9]*x[11]-1.79*x[10]*x[11]+0.32*x[2]*x[2]-0.45*x[3]*x[3]+0.25*x[4]*x[4]+0.59*x[5]*x[5]+0.05*x[6]*x[6]-0.29*x[7]*x[7]-0.92*x[8]*x[8]+0.86*x[9]*x[9]-0.47*x[10]*x[10]-0.66*x[11]*x[11]+0.82*x[2]-0.48*x[4]+0.31*x[5]-0.43*x[6]-0.15*x[7]+0.75*x[8]+0.19*x[9]-0.45*x[10]-0.37*x[11])+x[1] == 0.0)
@NLconstraint(m, e2, 1.75*x[2]*x[3]+1.78*x[2]*x[4]-0.88*x[2]*x[5]+1.72*x[2]*x[6]+1.57*x[2]*x[7]+1.41*x[2]*x[8]-0.88*x[2]*x[9]+1.06*x[2]*x[10]+0.28*x[2]*x[11]+1.96*x[3]*x[4]-1.48*x[3]*x[5]-1.84*x[3]*x[6]+0.22*x[3]*x[7]-1.89*x[3]*x[8]-0.95*x[3]*x[9]+1.49*x[3]*x[10]-0.72*x[3]*x[11]+(-1.02*x[4]*x[5])-1.37*x[4]*x[6]+0.59*x[4]*x[7]+1.35*x[4]*x[8]-0.1*x[4]*x[9]+1.76*x[4]*x[10]+1.33*x[4]*x[11]+(-0.74*x[5]*x[6])-0.51*x[5]*x[7]+0.77*x[5]*x[8]-0.67*x[5]*x[9]-0.26*x[5]*x[10]-0.6*x[5]*x[11]+0.93*x[6]*x[9]-0.31*x[6]*x[8]+0.24*x[6]*x[10]-1.4*x[6]*x[11]+0.56*x[7]*x[8]-1.83*x[7]*x[9]-1.25*x[7]*x[10]-0.53*x[7]*x[11]+2*x[8]*x[9]-1.98*x[8]*x[10]+0.93*x[8]*x[11]+0.02*x[9]*x[10]+0.95*x[9]*x[11]+1.06*x[10]*x[11]+(-0.39*x[2]*x[2])-0.32*x[3]*x[3]-0.34*x[4]*x[4]+0.4*x[5]*x[5]+0.96*x[6]*x[6]+0.33*x[7]*x[7]-0.44*x[8]*x[8]-0.82*x[9]*x[9]-0.57*x[10]*x[10]+x[11]*x[11]-0.18*x[2]+0.77*x[3]-0.5*x[4]-0.55*x[5]+0.58*x[6]-0.61*x[7]-0.17*x[8]+0.21*x[9]-0.72*x[10]-0.54*x[11] <= 51.12)
@NLconstraint(m, e3, 0.81*x[2]*x[3]-0.97*x[2]*x[4]+1.34*x[2]*x[5]-1.53*x[2]*x[6]+1.42*x[2]*x[7]-1.22*x[2]*x[8]+0.93*x[2]*x[9]-1.79*x[2]*x[10]-1.95*x[2]*x[11]+0.2*x[3]*x[4]-0.59*x[3]*x[5]+0.91*x[3]*x[6]+0.63*x[3]*x[7]-0.24*x[3]*x[8]+0.08*x[3]*x[9]-0.79*x[3]*x[10]-1.82*x[3]*x[11]+0.75*x[4]*x[5]+0.66*x[4]*x[6]+0.09*x[4]*x[7]-1.49*x[4]*x[8]+1.19*x[4]*x[9]+1.67*x[4]*x[10]+1.99*x[4]*x[11]+(-1.43*x[5]*x[6])-0.1*x[5]*x[7]-1.46*x[5]*x[8]-1.73*x[5]*x[9]+1.24*x[5]*x[10]+1.88*x[5]*x[11]+0.77*x[6]*x[7]+1.05*x[6]*x[8]-0.29*x[6]*x[9]+0.79*x[6]*x[10]-1.95*x[6]*x[11]+1.31*x[7]*x[9]-1.06*x[7]*x[8]+1.39*x[7]*x[10]+1.7*x[7]*x[11]+(-0.62*x[8]*x[9])-1.12*x[8]*x[10]-0.18*x[8]*x[11]+0.99*x[9]*x[10]+0.26*x[9]*x[11]-1.47*x[10]*x[11]+0.64*x[3]*x[3]-0.46*x[2]*x[2]+0.49*x[4]*x[4]-0.71*x[5]*x[5]+0.91*x[6]*x[6]-0.33*x[7]*x[7]+0.5*x[8]*x[8]-0.84*x[9]*x[9]+0.9*x[10]*x[10]+0.25*x[11]*x[11]+0.43*x[2]+0.14*x[3]+0.77*x[4]+0.57*x[5]-0.54*x[6]-0.09*x[7]+0.13*x[8]+0.98*x[9]-0.12*x[10]-0.08*x[11] <= 38.2)
@NLconstraint(m, e4, 0.12*x[2]*x[3]+1.3*x[2]*x[4]-0.01*x[2]*x[5]-0.26*x[2]*x[6]+0.18*x[2]*x[7]-0.29*x[2]*x[8]-0.04*x[2]*x[9]+0.59*x[2]*x[10]-0.12*x[2]*x[11]+1.23*x[3]*x[4]-0.58*x[3]*x[5]+0.45*x[3]*x[6]+1.78*x[3]*x[7]+1.71*x[3]*x[8]-1.15*x[3]*x[9]+1.2*x[3]*x[10]-1.66*x[3]*x[11]+1.05*x[4]*x[5]-1.42*x[4]*x[6]-1.66*x[4]*x[7]+1.25*x[4]*x[8]-0.41*x[4]*x[9]+1.16*x[4]*x[10]+0.82*x[4]*x[11]+0.46*x[5]*x[7]-0.54*x[5]*x[6]-1.63*x[5]*x[8]+1.52*x[5]*x[9]-1.79*x[5]*x[10]+0.88*x[5]*x[11]+0.09*x[6]*x[7]+0.28*x[6]*x[8]+1.37*x[6]*x[9]+0.26*x[6]*x[10]-0.35*x[6]*x[11]+1.99*x[7]*x[8]+1.19*x[7]*x[9]-1.72*x[7]*x[10]+1.48*x[7]*x[11]+0.83*x[8]*x[9]-0.32*x[8]*x[10]+1.01*x[8]*x[11]+0.71*x[9]*x[10]+1.74*x[9]*x[11]+0.7*x[10]*x[11]+0.55*x[3]*x[3]-0.19*x[2]*x[2]+0.98*x[4]*x[4]-0.86*x[5]*x[5]+0.46*x[6]*x[6]+0.36*x[7]*x[7]+0.67*x[8]*x[8]+0.92*x[9]*x[9]-0.33*x[10]*x[10]-0.51*x[11]*x[11]-0.15*x[2]+0.09*x[3]-0.4*x[4]-0.2*x[5]-0.91*x[6]-0.38*x[7]-0.57*x[8]+0.75*x[9]-0.61*x[10]-0.73*x[11] <= 43.71)
@NLconstraint(m, e5, (-1.38*x[2]*x[3])-1.06*x[2]*x[4]-1.72*x[2]*x[5]-0.75*x[2]*x[6]-1.42*x[2]*x[7]+0.17*x[2]*x[8]-0.04*x[2]*x[9]-0.84*x[2]*x[10]+1.26*x[2]*x[11]+1.38*x[3]*x[4]+0.53*x[3]*x[5]+0.7*x[3]*x[6]-0.14*x[3]*x[7]+0.52*x[3]*x[8]-1.82*x[3]*x[9]-0.3*x[3]*x[10]-1.76*x[3]*x[11]+1.58*x[4]*x[5]-0.02*x[4]*x[6]-0.16*x[4]*x[7]+1.09*x[4]*x[8]+1.31*x[4]*x[9]+1.25*x[4]*x[10]+1.56*x[4]*x[11]+(-1.96*x[5]*x[6])-0.85*x[5]*x[7]-0.21*x[5]*x[8]-1.19*x[5]*x[9]-0.32*x[5]*x[10]-1.06*x[5]*x[11]+1.93*x[6]*x[7]-0.24*x[6]*x[8]+1.86*x[6]*x[9]-1.78*x[6]*x[10]-1.36*x[6]*x[11]+0.5*x[7]*x[8]+1.56*x[7]*x[9]-0.48*x[7]*x[10]-0.77*x[7]*x[11]+(-1.17*x[8]*x[9])-0.5*x[8]*x[10]-1.55*x[8]*x[11]+(-0.02*x[9]*x[10])-0.06*x[9]*x[11]+1.11*x[10]*x[11]+0.01*x[2]*x[2]-0.52*x[3]*x[3]+0.26*x[4]*x[4]+0.21*x[5]*x[5]-0.75*x[6]*x[6]+0.93*x[7]*x[7]+0.88*x[8]*x[8]+0.35*x[9]*x[9]+0.67*x[10]*x[10]+0.74*x[11]*x[11]-0.24*x[2]-0.43*x[3]-0.84*x[4]-0.96*x[5]-0.73*x[6]-0.85*x[7]-0.54*x[8]-0.86*x[9]-0.09*x[10]-0.55*x[11] <= 96.15)
@NLconstraint(m, e6, 1.76*x[2]*x[3]-0.57*x[2]*x[4]-1.99*x[2]*x[5]-0.1*x[2]*x[6]-1.7*x[2]*x[7]-1.07*x[2]*x[8]+1.7*x[2]*x[9]+1.98*x[2]*x[10]+1.85*x[2]*x[11]+0.22*x[3]*x[5]-1.99*x[3]*x[4]+1.32*x[3]*x[6]-1.02*x[3]*x[7]-1.89*x[3]*x[8]+0.53*x[3]*x[9]+1.24*x[3]*x[10]+0.34*x[3]*x[11]+(-1.82*x[4]*x[5])-1.77*x[4]*x[6]+1.64*x[4]*x[7]-1.89*x[4]*x[8]-1.77*x[4]*x[9]-0.75*x[4]*x[10]+0.56*x[4]*x[11]+0.38*x[5]*x[6]-0.67*x[5]*x[7]+1.84*x[5]*x[8]+0.69*x[5]*x[9]+0.31*x[5]*x[10]-0.39*x[5]*x[11]+(-0.08*x[6]*x[7])-1.39*x[6]*x[8]+0.1*x[6]*x[9]+0.72*x[6]*x[10]-1.89*x[6]*x[11]+0.98*x[7]*x[9]-0.84*x[7]*x[8]+0.14*x[7]*x[10]+0.61*x[7]*x[11]+1.18*x[8]*x[10]-1.63*x[8]*x[9]+1.3*x[8]*x[11]+0.13*x[9]*x[10]+0.9*x[9]*x[11]+0.95*x[10]*x[11]+(-0.92*x[2]*x[2])-0.99*x[3]*x[3]-0.66*x[4]*x[4]-0.89*x[5]*x[5]+0.28*x[6]*x[6]-0.91*x[7]*x[7]-0.1*x[8]*x[8]+0.69*x[9]*x[9]-0.23*x[10]*x[10]-0.28*x[11]*x[11]+0.71*x[2]-0.52*x[3]-0.56*x[4]-0.81*x[5]+0.63*x[6]-0.76*x[7]-0.47*x[8]-0.8*x[9]-0.24*x[10]-0.92*x[11] <= 92.42)
@NLconstraint(m, e7, (-1.84*x[2]*x[3])-0.95*x[2]*x[4]+0.41*x[2]*x[5]-1.71*x[2]*x[6]+1.86*x[2]*x[7]+1.88*x[2]*x[8]-0.44*x[2]*x[9]+1.88*x[2]*x[10]+0.56*x[2]*x[11]+0.97*x[3]*x[5]-0.39*x[3]*x[4]-0.92*x[3]*x[6]+1.77*x[3]*x[7]+1.18*x[3]*x[8]+1.16*x[3]*x[9]+0.34*x[3]*x[10]+1.14*x[3]*x[11]+0.48*x[4]*x[5]-0.62*x[4]*x[6]+1.24*x[4]*x[7]+0.78*x[4]*x[8]+0.6*x[4]*x[9]+1.48*x[4]*x[10]-0.31*x[4]*x[11]+(-1.8*x[5]*x[6])-0.6*x[5]*x[7]+0.16*x[5]*x[8]-1.52*x[5]*x[9]+1.96*x[5]*x[10]-0.07*x[5]*x[11]+1.76*x[6]*x[8]-1.27*x[6]*x[7]+0.16*x[6]*x[9]+0.69*x[6]*x[10]-0.04*x[6]*x[11]+0.6*x[7]*x[8]-1.31*x[7]*x[9]+1.18*x[7]*x[10]+1.39*x[7]*x[11]+0.14*x[8]*x[9]-1.42*x[8]*x[10]+0.17*x[8]*x[11]+1.27*x[9]*x[11]-1.47*x[9]*x[10]-1.79*x[10]*x[11]+0.01*x[2]*x[2]-0.15*x[3]*x[3]-0.61*x[5]*x[5]-0.72*x[6]*x[6]+0.07*x[7]*x[7]-0.33*x[8]*x[8]-0.1*x[9]*x[9]-0.26*x[10]*x[10]+0.86*x[11]*x[11]-0.88*x[2]-0.51*x[3]+0.85*x[5]+0.92*x[6]+0.05*x[7]-0.15*x[8]+0.2*x[9]-0.01*x[10]+0.34*x[11] <= 4.71)
@NLconstraint(m, e8, (-0.07*x[2]*x[3])-1.51*x[2]*x[4]+0.28*x[2]*x[5]-0.7*x[2]*x[6]-0.42*x[2]*x[7]-0.66*x[2]*x[8]-0.68*x[2]*x[9]-1.57*x[2]*x[10]+1.77*x[2]*x[11]+(-1.75*x[3]*x[4])-1.35*x[3]*x[5]-1.67*x[3]*x[6]+1.77*x[3]*x[7]-1.7*x[3]*x[8]+1.64*x[3]*x[9]+1.67*x[3]*x[10]+1.85*x[3]*x[11]+1.55*x[4]*x[6]-0.78*x[4]*x[5]+1.9*x[4]*x[7]+1.2*x[4]*x[8]-1.02*x[4]*x[9]-0.83*x[4]*x[10]+1.33*x[4]*x[11]+(-1.85*x[5]*x[6])-1.31*x[5]*x[7]+1.9*x[5]*x[8]+1.84*x[5]*x[9]-1.86*x[5]*x[10]-0.98*x[5]*x[11]+0.37*x[6]*x[7]-1.24*x[6]*x[8]-0.6*x[6]*x[9]+1.55*x[6]*x[10]+0.64*x[7]*x[8]-1.77*x[7]*x[9]+0.81*x[7]*x[10]+0.84*x[7]*x[11]+0.55*x[8]*x[9]+1.01*x[8]*x[10]-0.43*x[8]*x[11]+1.6*x[9]*x[10]+1.28*x[9]*x[11]+0.25*x[10]*x[11]+0.25*x[2]*x[2]+0.36*x[3]*x[3]-0.18*x[4]*x[4]-0.86*x[5]*x[5]-0.55*x[6]*x[6]-0.02*x[7]*x[7]+0.81*x[8]*x[8]-0.21*x[9]*x[9]+0.26*x[10]*x[10]-0.73*x[11]*x[11]-0.5*x[2]-0.23*x[3]+0.24*x[4]-0.21*x[5]+0.73*x[6]+0.16*x[7]+0.05*x[8]+0.45*x[9]+0.79*x[10]+0.82*x[11] <= 47.78)
@NLconstraint(m, e9, 1.96*x[2]*x[3]-0.61*x[2]*x[4]-1.34*x[2]*x[5]+0.74*x[2]*x[6]-0.01*x[2]*x[7]+0.61*x[2]*x[8]+1.8*x[2]*x[9]-0.64*x[2]*x[10]+0.12*x[2]*x[11]+0.98*x[3]*x[4]+0.96*x[3]*x[5]+0.5*x[3]*x[6]+0.87*x[3]*x[7]+1.48*x[3]*x[8]-0.71*x[3]*x[9]+1.76*x[3]*x[10]-1.46*x[3]*x[11]+0.83*x[4]*x[5]+1.01*x[4]*x[6]+1.79*x[4]*x[7]+1.77*x[4]*x[8]-1.98*x[4]*x[9]+0.11*x[4]*x[10]+0.02*x[4]*x[11]+(-1.82*x[5]*x[6])-0.97*x[5]*x[7]+0.94*x[5]*x[8]-1.07*x[5]*x[9]-1.68*x[5]*x[10]+0.14*x[5]*x[11]+0.02*x[6]*x[7]+0.84*x[6]*x[8]-1.47*x[6]*x[9]-0.23*x[6]*x[10]-0.33*x[6]*x[11]+(-1.96*x[7]*x[8])-0.69*x[7]*x[9]+1.85*x[7]*x[10]+1.23*x[7]*x[11]+0.59*x[8]*x[9]+1.11*x[8]*x[10]+1.13*x[8]*x[11]+1.45*x[9]*x[11]-0.45*x[9]*x[10]+1.68*x[10]*x[11]+(-0.38*x[2]*x[2])-0.06*x[3]*x[3]-0.19*x[4]*x[4]-0.15*x[5]*x[5]+0.35*x[6]*x[6]-0.49*x[7]*x[7]-0.32*x[8]*x[8]+0.83*x[9]*x[9]+0.85*x[10]*x[10]+0.88*x[11]*x[11]-0.17*x[2]+0.61*x[3]-0.07*x[4]+0.47*x[5]+0.2*x[6]+0.19*x[7]+0.5*x[8]-0.87*x[9]+0.79*x[10]-0.34*x[11] <= 16.77)
@NLconstraint(m, e10, 1.88*x[2]*x[3]+0.16*x[2]*x[4]+0.82*x[2]*x[5]-0.3*x[2]*x[6]+0.09*x[2]*x[7]+0.02*x[2]*x[8]-1.11*x[2]*x[9]-0.09*x[2]*x[10]-1.56*x[2]*x[11]+0.72*x[3]*x[5]-0.95*x[3]*x[4]-0.37*x[3]*x[6]+1.02*x[3]*x[7]+0.64*x[3]*x[8]+1.24*x[3]*x[9]+1.67*x[3]*x[10]+1.38*x[3]*x[11]+0.08*x[4]*x[5]-0.41*x[4]*x[6]+0.67*x[4]*x[7]+1.12*x[4]*x[8]-1.03*x[4]*x[9]+1.32*x[4]*x[10]+0.96*x[4]*x[11]+(-0.21*x[5]*x[6])-1.98*x[5]*x[7]+0.08*x[5]*x[8]-0.97*x[5]*x[9]+1.31*x[5]*x[10]-0.18*x[5]*x[11]+1.91*x[6]*x[8]-1.34*x[6]*x[7]-1.6*x[6]*x[9]-0.37*x[6]*x[10]-1.55*x[6]*x[11]+1.55*x[7]*x[8]+1.97*x[7]*x[9]-0.06*x[7]*x[10]-1.76*x[7]*x[11]+(-1.88*x[8]*x[9])-1.69*x[8]*x[10]-1.97*x[8]*x[11]+1.68*x[9]*x[11]-1.42*x[9]*x[10]-0.86*x[10]*x[11]+(-0.31*x[2]*x[2])-0.34*x[3]*x[3]-0.12*x[4]*x[4]-0.75*x[5]*x[5]+0.95*x[6]*x[6]-0.93*x[7]*x[7]+0.19*x[8]*x[8]+0.63*x[9]*x[9]+0.95*x[10]*x[10]+0.42*x[11]*x[11]-0.47*x[2]+0.35*x[3]-0.23*x[4]-0.05*x[5]+0.14*x[6]+0.53*x[7]+0.67*x[8]+0.68*x[9]-0.69*x[10]+0.18*x[11] <= 75.85)
@NLconstraint(m, e11, 0.49*x[2]*x[3]-0.97*x[2]*x[4]-1.39*x[2]*x[5]-1.17*x[2]*x[6]-1.89*x[2]*x[7]-0.44*x[2]*x[8]+1.62*x[2]*x[9]+1.72*x[2]*x[10]-1.34*x[2]*x[11]+0.25*x[3]*x[4]+0.38*x[3]*x[5]+1.15*x[3]*x[6]-1.11*x[3]*x[7]+0.27*x[3]*x[8]+1.64*x[3]*x[9]+0.08*x[3]*x[10]-0.23*x[3]*x[11]+(-1.12*x[4]*x[5])-1.92*x[4]*x[6]+0.48*x[4]*x[7]-0.39*x[4]*x[8]-1.63*x[4]*x[9]-0.97*x[4]*x[10]-1.09*x[4]*x[11]+(-1.12*x[5]*x[6])-0.19*x[5]*x[7]-1.96*x[5]*x[8]+0.52*x[5]*x[9]+0.31*x[5]*x[10]+0.63*x[5]*x[11]+0.07*x[6]*x[7]+1.43*x[6]*x[8]+0.93*x[6]*x[9]+0.05*x[6]*x[10]-0.07*x[6]*x[11]+1.31*x[7]*x[9]-0.45*x[7]*x[8]-0.19*x[7]*x[10]-0.96*x[7]*x[11]+1.27*x[8]*x[9]+0.08*x[8]*x[10]+1.39*x[8]*x[11]+0.93*x[9]*x[11]-1.49*x[9]*x[10]+1.61*x[10]*x[11]+0.9*x[3]*x[3]-0.12*x[2]*x[2]+0.02*x[4]*x[4]-0.58*x[5]*x[5]+0.47*x[6]*x[6]+0.46*x[7]*x[7]-0.44*x[8]*x[8]+0.59*x[9]*x[9]-0.8*x[10]*x[10]+0.96*x[11]*x[11]-0.66*x[2]+0.71*x[3]+0.07*x[4]-0.67*x[5]+0.75*x[6]+0.68*x[7]-0.39*x[8]-0.89*x[9]-0.27*x[10]-0.3*x[11] <= 13.86)
@NLconstraint(m, e12, 1.4*x[2]*x[4]-1.6*x[2]*x[3]-0.9*x[2]*x[5]+1.01*x[2]*x[6]+1.82*x[2]*x[7]+1.26*x[2]*x[8]+1.5*x[2]*x[9]+0.18*x[2]*x[10]-0.11*x[2]*x[11]+0.15*x[3]*x[4]-1.84*x[3]*x[5]-1.21*x[3]*x[6]+1.66*x[3]*x[7]+0.31*x[3]*x[8]-1.64*x[3]*x[9]-1.32*x[3]*x[10]-1.74*x[3]*x[11]+0.02*x[4]*x[6]-1.96*x[4]*x[5]-1.52*x[4]*x[7]-0.8*x[4]*x[8]+0.91*x[4]*x[9]+0.54*x[4]*x[10]-1.6*x[4]*x[11]+0.42*x[5]*x[7]-1.58*x[5]*x[6]-1.17*x[5]*x[8]-0.41*x[5]*x[9]-0.4*x[5]*x[10]-1.49*x[5]*x[11]+1.66*x[6]*x[7]+1.52*x[6]*x[8]+1.89*x[6]*x[9]+1.91*x[6]*x[10]+1.2*x[6]*x[11]+0.97*x[7]*x[8]-0.65*x[7]*x[9]-0.5*x[7]*x[10]-0.03*x[7]*x[11]+1.39*x[8]*x[9]+0.9*x[8]*x[10]-1.47*x[8]*x[11]+(-0.88*x[9]*x[10])-1.55*x[9]*x[11]+1.46*x[10]*x[11]+0.06*x[2]*x[2]+0.2*x[3]*x[3]+0.23*x[4]*x[4]-0.85*x[5]*x[5]+x[6]*x[6]+0.51*x[7]*x[7]+0.84*x[8]*x[8]-0.19*x[9]*x[9]-0.06*x[10]*x[10]+0.31*x[11]*x[11]+0.09*x[2]-0.84*x[3]-0.6*x[4]-0.63*x[5]+0.56*x[6]+0.37*x[7]+0.54*x[8]+0.45*x[9]-0.02*x[10]-0.38*x[11] <= 12.33)
@NLconstraint(m, e13, 1.79*x[2]*x[3]+1.94*x[2]*x[4]-1.46*x[2]*x[5]-1.29*x[2]*x[6]+1.2*x[2]*x[7]+0.44*x[2]*x[8]+1.25*x[2]*x[9]+x[2]*x[10]-1.8*x[2]*x[11]+0.78*x[3]*x[4]-0.58*x[3]*x[5]+1.68*x[3]*x[6]+1.39*x[3]*x[7]-1.62*x[3]*x[8]-0.5*x[3]*x[9]+1.11*x[3]*x[10]-1.72*x[3]*x[11]+1.53*x[4]*x[6]-1.31*x[4]*x[5]+1.58*x[4]*x[7]+1.55*x[4]*x[8]+1.54*x[4]*x[9]+0.56*x[4]*x[10]-1.47*x[4]*x[11]+1.21*x[5]*x[7]-0.17*x[5]*x[6]-0.49*x[5]*x[8]-0.38*x[5]*x[9]-0.6*x[5]*x[10]+1.53*x[5]*x[11]+0.82*x[6]*x[7]-1.83*x[6]*x[8]-1.06*x[6]*x[9]+1.09*x[6]*x[10]+1.74*x[6]*x[11]+0.81*x[7]*x[8]-0.05*x[7]*x[9]+0.32*x[7]*x[10]+1.56*x[7]*x[11]+0.74*x[8]*x[10]-0.59*x[8]*x[9]-1.69*x[8]*x[11]+1.51*x[9]*x[10]-1.21*x[9]*x[11]-1.58*x[10]*x[11]+(-0.75*x[2]*x[2])-0.05*x[3]*x[3]+0.66*x[4]*x[4]-0.73*x[5]*x[5]+0.59*x[6]*x[6]+0.8*x[7]*x[7]-0.49*x[8]*x[8]-0.26*x[9]*x[9]+0.56*x[10]*x[10]+0.31*x[11]*x[11]-0.67*x[2]+0.55*x[3]+0.41*x[4]-0.92*x[5]-0.08*x[6]+0.48*x[7]-0.41*x[8]-0.47*x[9]-0.15*x[10]+0.4*x[11] <= 3.71)
@NLconstraint(m, e14, 1.31*x[2]*x[3]-0.44*x[2]*x[4]-0.66*x[2]*x[5]-0.75*x[2]*x[6]-1.75*x[2]*x[7]-0.63*x[2]*x[8]+1.36*x[2]*x[9]-1.14*x[2]*x[10]-1.88*x[2]*x[11]+(-1.94*x[3]*x[4])-1.74*x[3]*x[5]+1.34*x[3]*x[6]-0.19*x[3]*x[7]-1.59*x[3]*x[8]-0.44*x[3]*x[9]-0.2*x[3]*x[10]+1.85*x[3]*x[11]+1.62*x[4]*x[5]-1.98*x[4]*x[6]+1.09*x[4]*x[7]-0.21*x[4]*x[8]-1.52*x[4]*x[9]-0.69*x[4]*x[10]-1.41*x[4]*x[11]+(-1.24*x[5]*x[6])-0.26*x[5]*x[7]-1.2*x[5]*x[8]+0.34*x[5]*x[9]-0.78*x[5]*x[10]+0.83*x[5]*x[11]+1.82*x[6]*x[7]+0.9*x[6]*x[8]-1.55*x[6]*x[9]+0.11*x[6]*x[10]-1.14*x[6]*x[11]+(-0.59*x[7]*x[8])-1.33*x[7]*x[9]+0.66*x[7]*x[10]-1.78*x[7]*x[11]+1.95*x[8]*x[9]+0.98*x[8]*x[10]+1.34*x[8]*x[11]+0.87*x[9]*x[11]-0.9*x[9]*x[10]-1.22*x[10]*x[11]+0.45*x[2]*x[2]+0.94*x[3]*x[3]-0.89*x[4]*x[4]+0.01*x[5]*x[5]-0.73*x[6]*x[6]-0.23*x[7]*x[7]+0.11*x[8]*x[8]+0.67*x[9]*x[9]-0.34*x[10]*x[10]+0.82*x[11]*x[11]-0.99*x[2]-0.82*x[3]+0.24*x[4]+0.32*x[5]+0.13*x[6]-0.55*x[7]-0.92*x[8]-0.33*x[9]-0.73*x[10]+0.46*x[11] <= 39.07)
@NLconstraint(m, e15, 0.85*x[2]*x[3]+1.56*x[2]*x[4]+0.88*x[2]*x[5]-0.74*x[2]*x[6]-1.74*x[2]*x[7]+1.14*x[2]*x[8]+1.61*x[2]*x[9]-1.68*x[2]*x[10]+1.29*x[2]*x[11]+1.2*x[3]*x[5]-1.36*x[3]*x[4]+1.19*x[3]*x[6]+1.67*x[3]*x[7]-0.42*x[3]*x[8]+1.47*x[3]*x[9]-0.7*x[3]*x[10]+1.34*x[3]*x[11]+1.78*x[4]*x[5]-1.08*x[4]*x[6]+1.54*x[4]*x[7]+1.79*x[4]*x[8]-1.04*x[4]*x[9]-1.75*x[4]*x[10]+1.32*x[4]*x[11]+1.42*x[5]*x[6]+1.87*x[5]*x[7]+0.28*x[5]*x[8]+1.52*x[5]*x[9]+1.32*x[5]*x[10]-1.79*x[5]*x[11]+1.1*x[6]*x[8]-1.15*x[6]*x[7]+0.05*x[6]*x[9]+0.18*x[6]*x[10]-0.58*x[6]*x[11]+1.3*x[7]*x[8]-0.89*x[7]*x[9]+1.45*x[7]*x[10]-x[7]*x[11]+1.56*x[8]*x[9]+1.83*x[8]*x[10]-0.93*x[8]*x[11]+1.23*x[9]*x[11]-0.77*x[9]*x[10]-1.99*x[10]*x[11]+(-0.44*x[2]*x[2])-0.16*x[3]*x[3]+0.61*x[4]*x[4]+0.96*x[5]*x[5]-0.11*x[6]*x[6]-0.5*x[7]*x[7]-0.62*x[8]*x[8]-0.22*x[9]*x[9]-0.29*x[10]*x[10]-0.14*x[11]*x[11]+0.21*x[2]-0.31*x[3]-0.14*x[4]+0.88*x[5]-0.21*x[6]-0.6*x[7]+0.35*x[8]+0.86*x[9]+0.09*x[10]-0.33*x[11] <= 47.95)
@NLconstraint(m, e16, 0.67*x[2]*x[3]-0.6*x[2]*x[4]-1.58*x[2]*x[5]+1.64*x[2]*x[6]-1.26*x[2]*x[7]+1.35*x[2]*x[8]-0.83*x[2]*x[9]+1.76*x[2]*x[10]+0.1*x[2]*x[11]+(-0.01*x[3]*x[4])-0.97*x[3]*x[5]+1.18*x[3]*x[6]-1.6*x[3]*x[7]+1.43*x[3]*x[8]+0.15*x[3]*x[9]+1.17*x[3]*x[10]+0.25*x[3]*x[11]+0.84*x[4]*x[5]-1.12*x[4]*x[6]+0.94*x[4]*x[7]+0.24*x[4]*x[8]+0.36*x[4]*x[9]+0.67*x[4]*x[10]-1.12*x[4]*x[11]+0.35*x[5]*x[6]-1.42*x[5]*x[7]-0.21*x[5]*x[8]+1.86*x[5]*x[9]+1.22*x[5]*x[10]+1.84*x[5]*x[11]+0.59*x[6]*x[8]-1.26*x[6]*x[7]-1.37*x[6]*x[9]-0.22*x[6]*x[10]-0.95*x[6]*x[11]+(-0.4*x[7]*x[8])-1.43*x[7]*x[9]-0.35*x[7]*x[10]-0.28*x[7]*x[11]+0.75*x[8]*x[9]+0.08*x[8]*x[10]-1.86*x[8]*x[11]+1.72*x[9]*x[11]-1.34*x[9]*x[10]+1.17*x[10]*x[11]+0.18*x[2]*x[2]-0.96*x[3]*x[3]-0.02*x[4]*x[4]+0.57*x[5]*x[5]-0.23*x[6]*x[6]+0.6*x[7]*x[7]+0.93*x[8]*x[8]+0.34*x[9]*x[9]+0.96*x[10]*x[10]+0.81*x[11]*x[11]+0.01*x[2]+0.62*x[3]+0.53*x[4]-0.47*x[5]+0.41*x[6]+0.98*x[7]-0.88*x[8]-0.71*x[9]+0.18*x[10]-0.01*x[11] <= 62.01)
@NLconstraint(m, e17, 0.4*x[2]*x[4]-1.72*x[2]*x[3]-0.14*x[2]*x[5]+1.78*x[2]*x[6]-0.36*x[2]*x[7]-0.65*x[2]*x[8]+0.49*x[2]*x[9]+0.84*x[2]*x[10]+1.04*x[2]*x[11]+0.29*x[3]*x[4]+0.61*x[3]*x[5]-1.3*x[3]*x[6]-x[3]*x[7]-0.73*x[3]*x[8]+0.08*x[3]*x[9]-1.11*x[3]*x[10]-0.7*x[3]*x[11]+0.99*x[4]*x[5]-1.88*x[4]*x[6]-0.15*x[4]*x[7]-0.77*x[4]*x[8]+1.07*x[4]*x[9]+1.63*x[4]*x[10]+0.39*x[4]*x[11]+(-0.33*x[5]*x[6])-0.62*x[5]*x[7]+1.8*x[5]*x[8]-0.64*x[5]*x[9]+0.1*x[5]*x[10]+1.46*x[5]*x[11]+(-1.04*x[6]*x[7])-1.49*x[6]*x[8]+1.63*x[6]*x[9]-0.91*x[6]*x[10]+1.01*x[6]*x[11]+1.06*x[7]*x[9]-0.77*x[7]*x[8]-0.54*x[7]*x[10]-1.67*x[7]*x[11]+(-0.48*x[8]*x[9])-0.3*x[8]*x[10]-1.62*x[8]*x[11]+(-1.02*x[9]*x[10])-0.51*x[9]*x[11]+1.68*x[10]*x[11]+(-0.99*x[2]*x[2])-0.6*x[3]*x[3]-0.64*x[4]*x[4]+0.48*x[5]*x[5]+0.18*x[6]*x[6]+0.94*x[7]*x[7]+0.67*x[8]*x[8]-0.81*x[9]*x[9]+0.09*x[10]*x[10]+0.73*x[11]*x[11]-0.42*x[2]-0.46*x[3]-0.72*x[4]+0.14*x[5]-0.6*x[6]-0.63*x[7]+0.13*x[8]+0.23*x[9]+0.19*x[10]-0.8*x[11] <= 31.91)
@NLconstraint(m, e18, 0.81*x[2]*x[4]-1.39*x[2]*x[3]+1.14*x[2]*x[5]+0.8*x[2]*x[6]+0.07*x[2]*x[7]+0.72*x[2]*x[8]-0.91*x[2]*x[9]-0.72*x[2]*x[10]-0.57*x[2]*x[11]+0.23*x[3]*x[4]-1.81*x[3]*x[5]+1.75*x[3]*x[6]-0.64*x[3]*x[7]-0.89*x[3]*x[8]+1.01*x[3]*x[9]+0.29*x[3]*x[10]+1.18*x[3]*x[11]+0.28*x[4]*x[5]+0.93*x[4]*x[6]-0.75*x[4]*x[7]-1.24*x[4]*x[8]+1.06*x[4]*x[9]-2*x[4]*x[10]+0.43*x[4]*x[11]+0.32*x[5]*x[7]-0.41*x[5]*x[6]+0.39*x[5]*x[8]+0.4*x[5]*x[9]-0.92*x[5]*x[10]-1.27*x[5]*x[11]+1.45*x[6]*x[8]-0.25*x[6]*x[7]+0.07*x[6]*x[9]+0.77*x[6]*x[10]+1.7*x[6]*x[11]+1.14*x[7]*x[9]-1.42*x[7]*x[8]+0.01*x[7]*x[10]+0.65*x[7]*x[11]+1.13*x[8]*x[9]-0.55*x[8]*x[10]+0.11*x[8]*x[11]+1.76*x[9]*x[11]-0.9*x[9]*x[10]-0.32*x[10]*x[11]+0.05*x[2]*x[2]+0.38*x[3]*x[3]-0.48*x[4]*x[4]-0.23*x[5]*x[5]+0.84*x[6]*x[6]-0.11*x[7]*x[7]+0.23*x[8]*x[8]-0.37*x[9]*x[9]-0.42*x[10]*x[10]-0.78*x[11]*x[11]-0.09*x[2]+0.95*x[3]-0.07*x[4]-0.24*x[5]+0.92*x[6]-0.77*x[7]+0.31*x[8]-x[9]-0.84*x[10]-0.1*x[11] <= 57.4)
@NLconstraint(m, e19, 0.85*x[2]*x[3]-1.88*x[2]*x[4]+0.59*x[2]*x[5]+1.12*x[2]*x[6]-0.68*x[2]*x[7]+1.96*x[2]*x[8]-0.79*x[2]*x[9]-0.71*x[2]*x[10]-0.11*x[2]*x[11]+1.73*x[3]*x[4]-1.88*x[3]*x[5]-1.93*x[3]*x[6]-0.12*x[3]*x[7]+0.15*x[3]*x[8]-0.21*x[3]*x[9]+0.42*x[3]*x[10]+1.06*x[3]*x[11]+(-0.65*x[4]*x[5])-0.81*x[4]*x[6]-0.61*x[4]*x[7]-0.9*x[4]*x[8]+1.57*x[4]*x[9]+0.41*x[4]*x[10]+0.24*x[4]*x[11]+0.74*x[5]*x[7]-0.02*x[5]*x[6]+1.56*x[5]*x[8]+0.2*x[5]*x[9]+0.95*x[5]*x[10]-0.79*x[5]*x[11]+(-1.84*x[6]*x[7])-1.05*x[6]*x[8]-0.77*x[6]*x[9]-0.57*x[6]*x[10]-0.3*x[6]*x[11]+1.04*x[7]*x[8]-1.86*x[7]*x[9]-0.14*x[7]*x[10]+0.06*x[7]*x[11]+0.57*x[8]*x[9]+0.48*x[8]*x[10]-1.85*x[8]*x[11]+0.98*x[9]*x[10]+0.37*x[9]*x[11]-1.14*x[10]*x[11]+0.31*x[3]*x[3]-0.04*x[2]*x[2]-0.68*x[4]*x[4]-0.44*x[5]*x[5]-0.54*x[6]*x[6]-0.32*x[7]*x[7]+0.95*x[8]*x[8]-0.82*x[9]*x[9]+0.59*x[10]*x[10]+0.56*x[11]*x[11]+0.1*x[2]-0.33*x[3]+0.58*x[4]+0.94*x[5]+0.45*x[6]+0.39*x[7]+0.17*x[8]-0.82*x[9]-x[10]-0.66*x[11] <= 24.75)
@NLconstraint(m, e20, (-0.44*x[2]*x[3])-1.35*x[2]*x[4]+1.64*x[2]*x[5]-0.1*x[2]*x[6]+1.82*x[2]*x[7]+0.69*x[2]*x[8]-0.53*x[2]*x[9]+0.53*x[2]*x[10]-1.25*x[2]*x[11]+0.07*x[3]*x[4]+1.46*x[3]*x[5]-1.82*x[3]*x[6]+0.06*x[3]*x[7]-0.74*x[3]*x[8]-1.16*x[3]*x[9]+1.28*x[3]*x[10]+1.73*x[3]*x[11]+(-1.61*x[4]*x[5])-1.02*x[4]*x[6]-0.84*x[4]*x[7]-1.54*x[4]*x[8]+1.97*x[4]*x[9]+1.98*x[4]*x[10]-0.14*x[4]*x[11]+1.35*x[5]*x[7]-1.2*x[5]*x[6]+0.72*x[5]*x[8]+1.22*x[5]*x[9]-1.23*x[5]*x[10]-0.79*x[5]*x[11]+0.25*x[6]*x[7]-0.06*x[6]*x[8]-0.11*x[6]*x[9]+0.87*x[6]*x[10]+1.05*x[6]*x[11]+1.17*x[7]*x[9]-1.08*x[7]*x[8]+1.34*x[7]*x[10]+1.99*x[7]*x[11]+0.63*x[8]*x[10]-0.94*x[8]*x[9]-1.54*x[8]*x[11]+1.12*x[9]*x[10]+1.87*x[9]*x[11]+1.8*x[10]*x[11]+0.02*x[2]*x[2]-0.06*x[3]*x[3]-0.82*x[4]*x[4]-0.65*x[5]*x[5]-0.34*x[6]*x[6]+0.02*x[7]*x[7]+0.68*x[8]*x[8]+0.35*x[9]*x[9]-0.65*x[10]*x[10]+0.96*x[11]*x[11]-0.11*x[2]-0.09*x[3]-0.66*x[4]-0.71*x[5]+0.69*x[6]-0.88*x[7]-0.34*x[8]+0.65*x[9]+0.28*x[10]+0.42*x[11] <= 76.41)
@NLconstraint(m, e21, 1.32*x[2]*x[3]-1.45*x[2]*x[4]+0.56*x[2]*x[5]-0.87*x[2]*x[6]-1.63*x[2]*x[7]+1.12*x[2]*x[8]-0.59*x[2]*x[9]+1.9*x[2]*x[10]+1.09*x[2]*x[11]+0.67*x[3]*x[4]+0.73*x[3]*x[5]-1.86*x[3]*x[6]+0.94*x[3]*x[7]+1.9*x[3]*x[8]+1.78*x[3]*x[9]-0.23*x[3]*x[10]-0.29*x[3]*x[11]+0.02*x[4]*x[5]-1.86*x[4]*x[6]-0.84*x[4]*x[7]-1.35*x[4]*x[8]+1.86*x[4]*x[9]+0.24*x[4]*x[10]+1.23*x[4]*x[11]+0.63*x[5]*x[7]-1.51*x[5]*x[6]-0.14*x[5]*x[8]-1.12*x[5]*x[9]+1.37*x[5]*x[10]-0.32*x[5]*x[11]+(-0.21*x[6]*x[7])-1.46*x[6]*x[8]+0.42*x[6]*x[9]-1.92*x[6]*x[10]-1.24*x[6]*x[11]+0.19*x[7]*x[9]-x[7]*x[8]-1.02*x[7]*x[10]-0.35*x[7]*x[11]+0.06*x[8]*x[10]-1.35*x[8]*x[9]-1.75*x[8]*x[11]+0.33*x[9]*x[10]-1.05*x[9]*x[11]-1.97*x[10]*x[11]+0.57*x[2]*x[2]+0.81*x[3]*x[3]+0.14*x[4]*x[4]+0.29*x[5]*x[5]-0.23*x[6]*x[6]-0.5*x[7]*x[7]-0.06*x[8]*x[8]+0.36*x[9]*x[9]+0.21*x[10]*x[10]-0.91*x[11]*x[11]-0.51*x[2]-0.44*x[3]+0.07*x[4]-0.76*x[5]-0.07*x[6]-0.05*x[7]+0.59*x[8]+0.24*x[9]-0.2*x[10]+0.6*x[11] <= 17.85)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
