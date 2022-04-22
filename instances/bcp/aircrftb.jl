using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[8], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[8], 0.0)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 0.1)
set_lower_bound(x[6], -0.05)
set_upper_bound(x[6], -0.05)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((8.39*x[3]*x[4]-0.727*x[2]*x[3]-684.4*x[4]*x[5]+63.5*x[4]*x[2])-(3.933*x[1]-0.107*x[2]-0.126*x[3]+9.99*x[5]+45.83*x[7]+7.64*x[8]))^2+ ((0.949*x[1]*x[3]+0.173*x[1]*x[5])-(0.987*x[2]+22.95*x[4]+28.37*x[6]))^2+ ((-0.716*x[1]*x[2]-1.578*x[1]*x[4]+1.132*x[4]*x[2])-(-0.002*x[1]+0.235*x[3]-5.67*x[5]+0.921*x[7]+6.51*x[8]))^2+ (-x[1]*x[5]-(-x[2]+x[4]+0.168*x[6]))^2+ (x[1]*x[4]-(x[3]+0.196*x[5]+0.0071*x[7]))^2)+x[9] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[9])
