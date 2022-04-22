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
@constraint(m, e1, -16*x[1]+2*x[2]+x[4] >= -40.0)
@constraint(m, e2, -2*x[2]+4*x[4]+2*x[5] >= -2.0)
@constraint(m, e3, -3.5*x[1]+2*x[3] >= -0.25)
@constraint(m, e4, -2*x[2]-4*x[4]-x[5] >= -4.0)
@constraint(m, e5, -9*x[2]-2*x[3]+x[4]-2.8*x[5] >= -4.0)
@constraint(m, e6, 2*x[1]-4*x[3] >= -1.0)
@constraint(m, e7, -x[1]-x[2]-x[3]-x[4]-x[5] >= -40.0)
@constraint(m, e8, -x[1]-2*x[2]-3*x[3]-2*x[4]-x[5] >= -60.0)
@constraint(m, e9, x[1]+2*x[2]+3*x[3]+4*x[4]+5*x[5] >= 5.0)
@constraint(m, e10, x[1]+x[2]+x[3]+x[4]+x[5] >= 1.0)
@NLconstraint(m, e11, -(30*x[1]*x[1]-20*x[2]*x[1]-10*x[3]*x[1]+32*x[4]*x[1]-10*x[5]*x[1]+39*x[2]*x[2]-20*x[1]*x[2]-6*x[3]*x[2]-31*x[4]*x[2]+32*x[5]*x[2]+(-10*x[1]*x[3])-6*x[2]*x[3]+10*x[3]*x[3]-6*x[4]*x[3]-10*x[5]*x[3]+32*x[1]*x[4]-31*x[2]*x[4]-6*x[3]*x[4]+39*x[4]*x[4]-20*x[5]*x[4]+32*x[2]*x[5]-10*x[1]*x[5]-10*x[3]*x[5]-20*x[4]*x[5]+30*x[5]*x[5]+4* (x[1])^3-15*x[1]+8* (x[2])^3-27*x[2]+10* (x[3])^3-36*x[3]+6* (x[4])^3-18*x[4]+2* (x[5])^3-12*x[5])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
