using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[13], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[1], 2.89)
set_upper_bound(x[1], 32.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 6.8)
set_lower_bound(x[3], 1.2)
set_upper_bound(x[3], 2.8)
set_lower_bound(x[4], 0.6)
set_upper_bound(x[4], 7.4)
set_lower_bound(x[5], 0.6)
set_upper_bound(x[5], 3.4)
set_lower_bound(x[6], 0.8)
set_upper_bound(x[6], 7.2)
set_lower_bound(x[7], 0.8)
set_upper_bound(x[7], 3.2)
set_lower_bound(x[8], 1.7)
set_upper_bound(x[8], 6.3)
set_lower_bound(x[9], 1.7)
set_upper_bound(x[9], 2.3)
set_lower_bound(x[10], 0.5)
set_upper_bound(x[10], 7.5)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 3.5)
set_upper_bound(x[12], 8.0)
set_upper_bound(x[13], 4.0)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 32.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -17.530087007031)
@NLconstraint(m, e2, -x[12]*x[13]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 3.24)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 4.0)
@NLconstraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 8.41)
@NLconstraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 2.89)
@NLconstraint(m, e7, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.96)
@NLconstraint(m, e8, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 5.29)
@NLconstraint(m, e9, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.21)
@NLconstraint(m, e10, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 6.25)
@NLconstraint(m, e11, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.69)
@NLconstraint(m, e12, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 4.84)
@constraint(m, e13, x[2]-x[12] <= -1.2)
@constraint(m, e14, x[3]-x[13] <= -1.2)
@constraint(m, e15, x[4]-x[12] <= -0.6)
@constraint(m, e16, x[5]-x[13] <= -0.6)
@constraint(m, e17, x[6]-x[12] <= -0.8)
@constraint(m, e18, x[7]-x[13] <= -0.8)
@constraint(m, e19, x[8]-x[12] <= -1.7)
@constraint(m, e20, x[9]-x[13] <= -1.7)
@constraint(m, e21, x[10]-x[12] <= -0.5)
@constraint(m, e22, x[11]-x[13] <= -0.5)
@constraint(m, e23, x[2] <= 4.0)
@constraint(m, e24, x[3] <= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
