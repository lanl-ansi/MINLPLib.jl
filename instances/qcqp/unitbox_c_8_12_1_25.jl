using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.48*x[2]*x[6]-1.85*x[2]*x[8]-0.51*x[2]*x[9]+(-0.99*x[3]*x[6])-0.42*x[3]*x[7]-0.47*x[3]*x[8]-0.2*x[3]*x[9]+1.71*x[4]*x[8]-0.9*x[2]+0.01*x[3]-0.15*x[4]-0.61*x[6]-0.72*x[7]+0.07*x[8]-0.33*x[9])+x[1] == 0.0)
@NLconstraint(m, e2, 1.41*x[2]*x[6]+1.72*x[2]*x[7]+1.57*x[2]*x[9]-0.88*x[3]*x[7]+1.78*x[4]*x[6]+(-1.08*x[5]*x[6])-1.43*x[5]*x[7]+1.75*x[5]*x[9]-0.18*x[2]+0.77*x[3]-0.5*x[4]-0.55*x[5]+0.58*x[6]-0.61*x[7]+0.21*x[9]-0.17*x[8] <= 48.14)
@NLconstraint(m, e3, 0.56*x[3]*x[9]-1.83*x[3]*x[8]-1.25*x[2]*x[8]+(-1.4*x[4]*x[7])-0.31*x[4]*x[9]+0.93*x[5]*x[6]+0.24*x[5]*x[9]+0.88*x[2]+0.67*x[3]-0.37*x[4]-0.26*x[5]+0.39*x[6]-0.34*x[7]-0.13*x[8]-0.3*x[9] <= 22.3)
@NLconstraint(m, e4, 1.96*x[2]*x[9]-0.97*x[2]*x[7]+(-1.53*x[3]*x[6])-0.23*x[3]*x[8]+1.34*x[3]*x[9]+0.26*x[4]*x[6]-0.16*x[4]*x[9]+0.81*x[5]*x[9]+x[2]+0.01*x[3]+0.43*x[4]+0.14*x[5]+0.77*x[6]+0.57*x[7]-0.54*x[8]-0.09*x[9] <= 52.73)
@NLconstraint(m, e5, 1.88*x[2]*x[6]+1.05*x[2]*x[9]+(-1.95*x[3]*x[6])-1.06*x[3]*x[8]+1.24*x[4]*x[8]+0.79*x[5]*x[8]-0.29*x[5]*x[6]+0.77*x[5]*x[9]-0.75*x[2]+0.6*x[3]+0.84*x[4]+0.99*x[5]-0.71*x[6]-0.73*x[8]-0.86*x[9]-0.05*x[7] <= 75.04)
@NLconstraint(m, e6, (-0.75*x[2]*x[7])-1.13*x[2]*x[9]+0.12*x[3]*x[6]-1.47*x[3]*x[7]+1.3*x[4]*x[7]-1.22*x[4]*x[8]+1.51*x[5]*x[6]-1.83*x[5]*x[9]-0.84*x[2]+0.9*x[3]+0.25*x[4]-0.25*x[5]-0.15*x[6]+0.09*x[7]-0.4*x[8]-0.2*x[9] <= 76.59)
@NLconstraint(m, e7, 0.09*x[2]*x[6]+0.26*x[2]*x[7]+1.37*x[2]*x[8]+1.52*x[3]*x[7]-1.63*x[3]*x[8]+0.88*x[4]*x[7]-1.79*x[4]*x[8]+0.28*x[5]*x[7]-0.71*x[2]-0.83*x[3]+0.63*x[4]-0.21*x[5]+0.58*x[6]+0.41*x[7]-0.27*x[8]+0.23*x[9] <= 73.3)
@NLconstraint(m, e8, (-1.7*x[2]*x[7])-0.18*x[2]*x[8]+(-1.09*x[3]*x[8])-1.46*x[3]*x[9]-1.72*x[4]*x[6]+(-1.09*x[5]*x[7])-1.67*x[5]*x[8]-1.91*x[5]*x[9]+0.36*x[2]+0.67*x[3]+0.92*x[4]-0.33*x[5]-0.51*x[6]-0.14*x[7]-0.24*x[8]-0.43*x[9] <= 43.03)
@NLconstraint(m, e9, (-1.06*x[3]*x[8])-1.19*x[3]*x[9]-1.96*x[2]*x[9]+1.93*x[4]*x[6]-0.32*x[4]*x[7]+(-0.24*x[5]*x[7])-0.85*x[5]*x[8]-0.21*x[5]*x[9]-0.88*x[2]+0.79*x[3]-0.01*x[4]-0.08*x[5]+0.55*x[6]+0.66*x[7]+0.62*x[8]+0.78*x[9] <= 63.61)
@NLconstraint(m, e10, (-1.04*x[2]*x[7])-0.93*x[2]*x[9]+(-1.11*x[3]*x[7])-1.52*x[3]*x[8]+1.26*x[4]*x[8]-1.6*x[4]*x[6]-1.62*x[4]*x[9]+1.43*x[5]*x[6]+0.21*x[2]-0.75*x[3]+0.93*x[4]+0.88*x[5]+0.35*x[6]+0.67*x[7]+0.74*x[8]+0.92*x[9] <= 3.76)
@NLconstraint(m, e11, 0.69*x[2]*x[9]-0.39*x[2]*x[8]-0.75*x[3]*x[7]+0.31*x[4]*x[6]+0.56*x[4]*x[8]+1.84*x[4]*x[9]+0.38*x[5]*x[8]-0.67*x[5]*x[9]+0.26*x[2]+0.62*x[3]+0.17*x[4]-0.91*x[5]-0.88*x[6]+0.82*x[7]-0.94*x[8]-0.89*x[9] <= 4.92)
@NLconstraint(m, e12, 1.69*x[3]*x[6]+0.11*x[3]*x[8]+1.7*x[4]*x[9]-1.01*x[4]*x[7]+1.84*x[5]*x[6]-0.56*x[5]*x[7]-1.77*x[5]*x[9]-0.66*x[3]-0.89*x[4]+0.28*x[5]-0.91*x[6]-0.1*x[7]+0.69*x[8]-0.23*x[9]-0.99*x[2] <= 27.63)
@NLconstraint(m, e13, 0.78*x[3]*x[6]-1.8*x[3]*x[7]-0.6*x[3]*x[9]-1.52*x[2]*x[8]+1.48*x[4]*x[6]+0.6*x[4]*x[7]+0.16*x[5]*x[7]-0.31*x[5]*x[6]+0.89*x[2]+0.59*x[3]+0.58*x[4]+0.17*x[5]+0.57*x[6]+0.24*x[7]-0.31*x[8]+0.62*x[9] <= 81.92)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
