using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_upper_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[8], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[1]-x[2])^2+ (x[7]-x[8])^2 <= 1.0)
@NLconstraint(m, e2,  (x[1]-x[3])^2+ (x[7]-x[9])^2 <= 1.0)
@NLconstraint(m, e3,  (x[1]-x[4])^2+ (x[7]-x[10])^2 <= 1.0)
@NLconstraint(m, e4,  (x[1]-x[5])^2+ (x[7]-x[11])^2 <= 1.0)
@NLconstraint(m, e5,  (x[1]-x[6])^2+ (x[7]-x[12])^2 <= 1.0)
@NLconstraint(m, e6,  (x[2]-x[3])^2+ (x[8]-x[9])^2 <= 1.0)
@NLconstraint(m, e7,  (x[2]-x[4])^2+ (x[8]-x[10])^2 <= 1.0)
@NLconstraint(m, e8,  (x[2]-x[5])^2+ (x[8]-x[11])^2 <= 1.0)
@NLconstraint(m, e9,  (x[2]-x[6])^2+ (x[8]-x[12])^2 <= 1.0)
@NLconstraint(m, e10,  (x[3]-x[4])^2+ (x[9]-x[10])^2 <= 1.0)
@NLconstraint(m, e11,  (x[3]-x[5])^2+ (x[9]-x[11])^2 <= 1.0)
@NLconstraint(m, e12,  (x[3]-x[6])^2+ (x[9]-x[12])^2 <= 1.0)
@NLconstraint(m, e13,  (x[4]-x[5])^2+ (x[10]-x[11])^2 <= 1.0)
@NLconstraint(m, e14,  (x[4]-x[6])^2+ (x[10]-x[12])^2 <= 1.0)
@NLconstraint(m, e15,  (x[5]-x[6])^2+ (x[11]-x[12])^2 <= 1.0)
@constraint(m, e16, -x[13]-x[14]-x[15]-x[16]-x[17]-x[18]-objvar == 0.0)
@NLconstraint(m, e17, -0.5*(x[1]*x[8]-x[7]*x[2])+x[13] == 0.0)
@NLconstraint(m, e18, -0.5*(x[2]*x[9]-x[8]*x[3])+x[14] == 0.0)
@NLconstraint(m, e19, -0.5*(x[3]*x[10]-x[9]*x[4])+x[15] == 0.0)
@NLconstraint(m, e20, -0.5*(x[4]*x[11]-x[10]*x[5])+x[16] == 0.0)
@NLconstraint(m, e21, -0.5*(x[5]*x[12]-x[11]*x[6])+x[17] == 0.0)
@NLconstraint(m, e22, -0.5*(x[6]*x[7]-x[12]*x[1])+x[18] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.