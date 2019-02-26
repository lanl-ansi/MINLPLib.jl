using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  ((-0.171747132)+x[20])^2-x[1] <= 0.0)
@NLconstraint(m, e2,  ((-0.843266708)+x[20])^2-x[2] <= 0.0)
@NLconstraint(m, e3,  ((-0.550375356)+x[20])^2-x[3] <= 0.0)
@NLconstraint(m, e4,  ((-0.301137904)+x[20])^2-x[4] <= 0.0)
@NLconstraint(m, e5,  ((-0.292212117)+x[20])^2-x[5] <= 0.0)
@NLconstraint(m, e6,  ((-0.224052867)+x[20])^2-x[6] <= 0.0)
@NLconstraint(m, e7,  ((-0.349830504)+x[20])^2-x[7] <= 0.0)
@NLconstraint(m, e8,  ((-0.856270347)+x[20])^2-x[8] <= 0.0)
@NLconstraint(m, e9,  ((-0.067113723)+x[20])^2-x[9] <= 0.0)
@NLconstraint(m, e10,  ((-0.500210669)+x[20])^2-x[10] <= 0.0)
@NLconstraint(m, e11,  ((-0.998117627)+x[20])^2-x[11] <= 0.0)
@NLconstraint(m, e12,  ((-0.578733378)+x[20])^2-x[12] <= 0.0)
@NLconstraint(m, e13,  ((-0.991133039)+x[20])^2-x[13] <= 0.0)
@NLconstraint(m, e14,  ((-0.762250467)+x[20])^2-x[14] <= 0.0)
@NLconstraint(m, e15,  ((-0.130692483)+x[20])^2-x[15] <= 0.0)
@NLconstraint(m, e16,  ((-0.639718759)+x[20])^2-x[16] <= 0.0)
@NLconstraint(m, e17,  ((-0.159517864)+x[20])^2-x[17] <= 0.0)
@NLconstraint(m, e18,  ((-0.250080533)+x[20])^2-x[18] <= 0.0)
@NLconstraint(m, e19,  ((-0.668928609)+x[20])^2-x[19] <= 0.0)
@NLconstraint(m, e20, -(sqrt(1e-10+x[1])+sqrt(1e-10+x[2])+sqrt(1e-10+x[3])+sqrt(1e-10+x[4])+sqrt(1e-10+x[5])+sqrt(1e-10+x[6])+sqrt(1e-10+x[7])+sqrt(1e-10+x[8])+sqrt(1e-10+x[9])+sqrt(1e-10+x[10])+sqrt(1e-10+x[11])+sqrt(1e-10+x[12])+sqrt(1e-10+x[13])+sqrt(1e-10+x[14])+sqrt(1e-10+x[15])+sqrt(1e-10+x[16])+sqrt(1e-10+x[17])+sqrt(1e-10+x[18])+sqrt(1e-10+x[19]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.