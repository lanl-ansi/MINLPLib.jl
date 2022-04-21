using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[2], 11.5)
set_upper_bound(x[2], 52.5)
set_lower_bound(x[3], 12.5)
set_upper_bound(x[3], 51.5)
set_lower_bound(x[4], 10.5)
set_upper_bound(x[4], 53.5)
set_lower_bound(x[5], 7.0)
set_upper_bound(x[5], 82.0)
set_lower_bound(x[6], 6.5)
set_upper_bound(x[6], 82.5)
set_lower_bound(x[7], 5.5)
set_upper_bound(x[7], 83.5)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-300*x[8]-240*x[9]-100*x[10]-300*x[11]-240*x[12]-100*x[13] == 0.0)
@constraint(m, e2, -x[2]+x[3]+x[8] >= 0.0)
@constraint(m, e3, x[2]-x[3]+x[8] >= 0.0)
@constraint(m, e4, -x[5]+x[6]+x[11] >= 0.0)
@constraint(m, e5, x[5]-x[6]+x[11] >= 0.0)
@constraint(m, e6, -x[3]+x[4]+x[10] >= 0.0)
@constraint(m, e7, x[3]-x[4]+x[10] >= 0.0)
@constraint(m, e8, -x[6]+x[7]+x[13] >= 0.0)
@constraint(m, e9, x[6]-x[7]+x[13] >= 0.0)
@constraint(m, e10, -x[2]+x[4]+x[9] >= 0.0)
@constraint(m, e11, x[2]-x[4]+x[9] >= 0.0)
@constraint(m, e12, -x[5]+x[7]+x[12] >= 0.0)
@constraint(m, e13, x[5]-x[7]+x[12] >= 0.0)
@constraint(m, e14, x[2]-x[3] <= -6.0)
@constraint(m, e15, -x[2]+x[3] <= -6.0)
@constraint(m, e16, x[5]-x[6] <= -5.5)
@constraint(m, e17, -x[5]+x[6] <= -5.5)
@constraint(m, e18, x[3]-x[4] <= -5.0)
@constraint(m, e19, -x[3]+x[4] <= -5.0)
@constraint(m, e20, x[6]-x[7] <= -4.0)
@constraint(m, e21, -x[6]+x[7] <= -4.0)
@constraint(m, e22, x[2]-x[4] <= -4.0)
@constraint(m, e23, -x[2]+x[4] <= -4.0)
@constraint(m, e24, x[5]-x[7] <= -4.5)
@constraint(m, e25, -x[5]+x[7] <= -4.5)
@NLconstraint(m, e26,  ((-17.5)+x[2])^2+ ((-7)+x[5])^2 <= 36.0)
@NLconstraint(m, e27,  ((-17.5)+x[2])^2+ ((-13)+x[5])^2 <= 36.0)
@NLconstraint(m, e28,  ((-12.5)+x[2])^2+ ((-7)+x[5])^2 <= 36.0)
@NLconstraint(m, e29,  ((-12.5)+x[2])^2+ ((-13)+x[5])^2 <= 36.0)
@NLconstraint(m, e30,  ((-52.5)+x[2])^2+ ((-77)+x[5])^2 <= 25.0)
@NLconstraint(m, e31,  ((-52.5)+x[2])^2+ ((-83)+x[5])^2 <= 25.0)
@NLconstraint(m, e32,  ((-47.5)+x[2])^2+ ((-77)+x[5])^2 <= 25.0)
@NLconstraint(m, e33,  ((-47.5)+x[2])^2+ ((-83)+x[5])^2 <= 25.0)
@NLconstraint(m, e34,  ((-18.5)+x[3])^2+ ((-7.5)+x[6])^2 <= 36.0)
@NLconstraint(m, e35,  ((-18.5)+x[3])^2+ ((-12.5)+x[6])^2 <= 36.0)
@NLconstraint(m, e36,  ((-11.5)+x[3])^2+ ((-7.5)+x[6])^2 <= 36.0)
@NLconstraint(m, e37,  ((-11.5)+x[3])^2+ ((-12.5)+x[6])^2 <= 36.0)
@NLconstraint(m, e38,  ((-53.5)+x[3])^2+ ((-77.5)+x[6])^2 <= 25.0)
@NLconstraint(m, e39,  ((-53.5)+x[3])^2+ ((-82.5)+x[6])^2 <= 25.0)
@NLconstraint(m, e40,  ((-46.5)+x[3])^2+ ((-77.5)+x[6])^2 <= 25.0)
@NLconstraint(m, e41,  ((-46.5)+x[3])^2+ ((-82.5)+x[6])^2 <= 25.0)
@NLconstraint(m, e42,  ((-16.5)+x[4])^2+ ((-8.5)+x[7])^2 <= 36.0)
@NLconstraint(m, e43,  ((-16.5)+x[4])^2+ ((-11.5)+x[7])^2 <= 36.0)
@NLconstraint(m, e44,  ((-13.5)+x[4])^2+ ((-8.5)+x[7])^2 <= 36.0)
@NLconstraint(m, e45,  ((-13.5)+x[4])^2+ ((-11.5)+x[7])^2 <= 36.0)
@NLconstraint(m, e46,  ((-51.5)+x[4])^2+ ((-78.5)+x[7])^2 <= 25.0)
@NLconstraint(m, e47,  ((-51.5)+x[4])^2+ ((-81.5)+x[7])^2 <= 25.0)
@NLconstraint(m, e48,  ((-48.5)+x[4])^2+ ((-78.5)+x[7])^2 <= 25.0)
@NLconstraint(m, e49,  ((-48.5)+x[4])^2+ ((-81.5)+x[7])^2 <= 25.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 