using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[3], 1.0)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], 0.0001)
set_lower_bound(x[5], 0.0001)
set_lower_bound(x[6], 0.0001)


# ----- Constraints ----- #
@constraint(m, e1, -x[3]-x[4]-x[5]-x[6]+x[11] == 0.0)
@constraint(m, e2, -6*x[3]+x[4]+4*x[5]+x[6]-x[12] == 0.0)
@constraint(m, e3, x[3]-3*x[4]+x[5]+x[6]-x[13] == 0.0)
#@constraint(m, e4, -(0.52*x[7]/x[3]+0.86*x[8]/x[3]+0.5*x[9]/x[3]+0.06*x[10]/x[3])+6*x[1]-x[2] =N= -5.0)
@NLconstraint(m, e5, -(0.4*x[7]/x[4]+0.1*x[8]/x[4]+0.2*x[9]/x[4]+0.25*x[10]/x[4])-x[1]+3*x[2]-x[14] == -5.0)
@NLconstraint(m, e6, -(0.04*x[7]/x[5]+0.02*x[8]/x[5]+0.2975*x[9]/x[5]+0.0025*x[10]/x[5])-4*x[1]-x[2]-x[15] == -40.0)
@NLconstraint(m, e7, -(0.04*x[7]/x[6]+0.02*x[8]/x[6]+0.0025*x[9]/x[6]+0.6875*x[10]/x[6])-x[1]-x[2]-x[16] == -40.0)
@constraint(m, e8, -5*x[3]+x[7] == 0.0)
@constraint(m, e9, -5*x[4]+x[8] == 0.0)
@constraint(m, e10, -40*x[5]+x[9] == 0.0)
@constraint(m, e11, -40*x[6]+x[10] == 0.0)
@NLconstraint(m, e12, x[12]*x[1] == 0.0)
@NLconstraint(m, e13, x[13]*x[2] == 0.0)
@NLconstraint(m, e14, x[14]*(-0.0001+x[4]) == 0.0)
@NLconstraint(m, e15, x[15]*(-0.0001+x[5]) == 0.0)
@NLconstraint(m, e16, x[16]*(-0.0001+x[6]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])

m = m 		 # model get returned when including this script. 
