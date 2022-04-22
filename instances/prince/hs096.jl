using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 0.31)
set_upper_bound(x[2], 0.046)
set_upper_bound(x[3], 0.068)
set_upper_bound(x[4], 0.042)
set_upper_bound(x[5], 0.028)
set_upper_bound(x[6], 0.0134)


# ----- Constraints ----- #
@NLconstraint(m, e1, 17.1*x[1]-169*x[1]*x[3]+204.2*x[3]-3580*x[3]*x[5]+623.4*x[5]-3810*x[4]*x[5]+212.3*x[4]-18500*x[4]*x[6]+1495.5*x[6]-24300*x[5]*x[6]+38.2*x[2] >= 4.97)
@NLconstraint(m, e2, 17.9*x[1]-139*x[1]*x[3]+113.9*x[3]-2450*x[4]*x[5]+169.7*x[4]+337.8*x[5]-16600*x[4]*x[6]+1385.2*x[6]-17200*x[5]*x[6]+36.8*x[2] >= -1.88)
@NLconstraint(m, e3, 26000*x[4]*x[5]-70*x[4]-819*x[5]-273*x[2] >= -69.08)
@NLconstraint(m, e4, 159.9*x[1]-14000*x[1]*x[6]+2198*x[6]-311*x[2]+587*x[4]+391*x[5] >= -118.02)
@constraint(m, e5, -4.3*x[1]-31.8*x[2]-63.3*x[3]-15.8*x[4]-68.5*x[5]-4.7*x[6]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
