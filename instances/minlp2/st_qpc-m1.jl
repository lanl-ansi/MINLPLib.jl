using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+2*x[3]+x[4]+x[5] >= 10.0)
@constraint(m, e2, 2*x[1]+3*x[2]+x[5] >= 8.0)
@constraint(m, e3, x[2]+4*x[3]-x[4]+2*x[5] >= 12.0)
@constraint(m, e4, 8*x[1]-x[2]-x[3]+6*x[4] >= 20.0)
@constraint(m, e5, -2*x[1]-x[2]-3*x[3]-x[4]-x[5] >= -30.0)
@NLconstraint(m, e6, -(10*x[1]-0.34*x[1]*x[1]-0.28*x[1]*x[2]+10*x[2]-0.22*x[1]*x[3]+10*x[3]-0.24*x[1]*x[4]+10*x[4]-0.51*x[1]*x[5]+10*x[5]-0.28*x[2]*x[1]-0.34*x[2]*x[2]-0.23*x[2]*x[3]-0.24*x[2]*x[4]-0.45*x[2]*x[5]-0.22*x[3]*x[1]-0.23*x[3]*x[2]-0.35*x[3]*x[3]-0.22*x[3]*x[4]-0.34*x[3]*x[5]-0.24*x[4]*x[1]-0.24*x[4]*x[2]-0.22*x[4]*x[3]-0.2*x[4]*x[4]-0.38*x[4]*x[5]-0.51*x[5]*x[1]-0.45*x[5]*x[2]-0.34*x[5]*x[3]-0.38*x[5]*x[4]-0.99*x[5]*x[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.