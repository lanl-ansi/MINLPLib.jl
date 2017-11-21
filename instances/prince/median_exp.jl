using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp( ((-0.171747132)+x[20])^2-x[1]) <= 1.0)
@NLconstraint(m, e2, exp( ((-0.843266708)+x[20])^2-x[2]) <= 1.0)
@NLconstraint(m, e3, exp( ((-0.550375356)+x[20])^2-x[3]) <= 1.0)
@NLconstraint(m, e4, exp( ((-0.301137904)+x[20])^2-x[4]) <= 1.0)
@NLconstraint(m, e5, exp( ((-0.292212117)+x[20])^2-x[5]) <= 1.0)
@NLconstraint(m, e6, exp( ((-0.224052867)+x[20])^2-x[6]) <= 1.0)
@NLconstraint(m, e7, exp( ((-0.349830504)+x[20])^2-x[7]) <= 1.0)
@NLconstraint(m, e8, exp( ((-0.856270347)+x[20])^2-x[8]) <= 1.0)
@NLconstraint(m, e9, exp( ((-0.067113723)+x[20])^2-x[9]) <= 1.0)
@NLconstraint(m, e10, exp( ((-0.500210669)+x[20])^2-x[10]) <= 1.0)
@NLconstraint(m, e11, exp( ((-0.998117627)+x[20])^2-x[11]) <= 1.0)
@NLconstraint(m, e12, exp( ((-0.578733378)+x[20])^2-x[12]) <= 1.0)
@NLconstraint(m, e13, exp( ((-0.991133039)+x[20])^2-x[13]) <= 1.0)
@NLconstraint(m, e14, exp( ((-0.762250467)+x[20])^2-x[14]) <= 1.0)
@NLconstraint(m, e15, exp( ((-0.130692483)+x[20])^2-x[15]) <= 1.0)
@NLconstraint(m, e16, exp( ((-0.639718759)+x[20])^2-x[16]) <= 1.0)
@NLconstraint(m, e17, exp( ((-0.159517864)+x[20])^2-x[17]) <= 1.0)
@NLconstraint(m, e18, exp( ((-0.250080533)+x[20])^2-x[18]) <= 1.0)
@NLconstraint(m, e19, exp( ((-0.668928609)+x[20])^2-x[19]) <= 1.0)
@NLconstraint(m, e20, -(sqrt(1e-10+x[1])+sqrt(1e-10+x[2])+sqrt(1e-10+x[3])+sqrt(1e-10+x[4])+sqrt(1e-10+x[5])+sqrt(1e-10+x[6])+sqrt(1e-10+x[7])+sqrt(1e-10+x[8])+sqrt(1e-10+x[9])+sqrt(1e-10+x[10])+sqrt(1e-10+x[11])+sqrt(1e-10+x[12])+sqrt(1e-10+x[13])+sqrt(1e-10+x[14])+sqrt(1e-10+x[15])+sqrt(1e-10+x[16])+sqrt(1e-10+x[17])+sqrt(1e-10+x[18])+sqrt(1e-10+x[19]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
