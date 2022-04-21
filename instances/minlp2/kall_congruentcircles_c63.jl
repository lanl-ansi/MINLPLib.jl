using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[15], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[1], 0.25)
set_upper_bound(x[1], 15.2)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 7.5)
set_lower_bound(x[3], 0.5)
set_upper_bound(x[3], 1.4)
set_lower_bound(x[4], 0.5)
set_upper_bound(x[4], 7.5)
set_lower_bound(x[5], 0.5)
set_upper_bound(x[5], 1.4)
set_lower_bound(x[6], 0.5)
set_upper_bound(x[6], 7.5)
set_lower_bound(x[7], 0.5)
set_upper_bound(x[7], 1.4)
set_lower_bound(x[8], 0.5)
set_upper_bound(x[8], 7.5)
set_lower_bound(x[9], 0.5)
set_upper_bound(x[9], 1.4)
set_lower_bound(x[10], 0.5)
set_upper_bound(x[10], 7.5)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 1.4)
set_lower_bound(x[12], 0.5)
set_upper_bound(x[12], 7.5)
set_lower_bound(x[13], 0.5)
set_upper_bound(x[13], 1.4)
set_upper_bound(x[14], 8.0)
set_upper_bound(x[15], 1.9)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 15.2)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -4.71238898038469)
@NLconstraint(m, e2, -x[14]*x[15]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 1.0)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 1.0)
@NLconstraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 1.0)
@NLconstraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 1.0)
@NLconstraint(m, e7, (x[2]-x[12])*(x[2]-x[12])+(x[3]-x[13])*(x[3]-x[13]) >= 1.0)
@NLconstraint(m, e8, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.0)
@NLconstraint(m, e9, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 1.0)
@NLconstraint(m, e10, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.0)
@NLconstraint(m, e11, (x[4]-x[12])*(x[4]-x[12])+(x[5]-x[13])*(x[5]-x[13]) >= 1.0)
@NLconstraint(m, e12, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 1.0)
@NLconstraint(m, e13, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.0)
@NLconstraint(m, e14, (x[6]-x[12])*(x[6]-x[12])+(x[7]-x[13])*(x[7]-x[13]) >= 1.0)
@NLconstraint(m, e15, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 1.0)
@NLconstraint(m, e16, (x[8]-x[12])*(x[8]-x[12])+(x[9]-x[13])*(x[9]-x[13]) >= 1.0)
@NLconstraint(m, e17, (x[10]-x[12])*(x[10]-x[12])+(x[11]-x[13])*(x[11]-x[13]) >= 1.0)
@constraint(m, e18, x[2]-x[14] <= -0.5)
@constraint(m, e19, x[3]-x[15] <= -0.5)
@constraint(m, e20, x[4]-x[14] <= -0.5)
@constraint(m, e21, x[5]-x[15] <= -0.5)
@constraint(m, e22, x[6]-x[14] <= -0.5)
@constraint(m, e23, x[7]-x[15] <= -0.5)
@constraint(m, e24, x[8]-x[14] <= -0.5)
@constraint(m, e25, x[9]-x[15] <= -0.5)
@constraint(m, e26, x[10]-x[14] <= -0.5)
@constraint(m, e27, x[11]-x[15] <= -0.5)
@constraint(m, e28, x[12]-x[14] <= -0.5)
@constraint(m, e29, x[13]-x[15] <= -0.5)
@constraint(m, e30, x[2] <= 4.0)
@constraint(m, e31, x[3] <= 0.95)
@constraint(m, e32, x[2]-x[4] <= 0.0)
@constraint(m, e33, x[2]-x[6] <= 0.0)
@constraint(m, e34, x[2]-x[8] <= 0.0)
@constraint(m, e35, x[2]-x[10] <= 0.0)
@constraint(m, e36, x[2]-x[12] <= 0.0)
@constraint(m, e37, x[4]-x[6] <= 0.0)
@constraint(m, e38, x[4]-x[8] <= 0.0)
@constraint(m, e39, x[4]-x[10] <= 0.0)
@constraint(m, e40, x[4]-x[12] <= 0.0)
@constraint(m, e41, x[6]-x[8] <= 0.0)
@constraint(m, e42, x[6]-x[10] <= 0.0)
@constraint(m, e43, x[6]-x[12] <= 0.0)
@constraint(m, e44, x[8]-x[10] <= 0.0)
@constraint(m, e45, x[8]-x[12] <= 0.0)
@constraint(m, e46, x[10]-x[12] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 