using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 0.1)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[8], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.107*x[2]-0.727*x[2]*x[3]+0.126*x[3]+8.39*x[3]*x[4]-684.4*x[4]*x[5]-9.99*x[5]+63.5*x[2]*x[4]-3.933*x[1]-45.83*x[7]-7.64*x[8] == 0.0)
@NLconstraint(m, e2, 0.949*x[1]*x[3]+0.173*x[1]*x[5]-0.987*x[2]-22.95*x[4]-28.37*x[6] == 0.0)
@NLconstraint(m, e3, 0.002*x[1]-0.716*x[1]*x[2]-1.578*x[1]*x[4]+1.132*x[2]*x[4]-0.235*x[3]+5.67*x[5]-0.921*x[7]-6.51*x[8] == 0.0)
@NLconstraint(m, e4, -x[1]*x[5]+x[2]-x[4]-1.168*x[6] == 0.0)
@NLconstraint(m, e5, x[1]*x[4]-x[3]-0.196*x[5]-0.0071*x[7] == 0.0)
@constraint(m, e6, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
