using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt(1e-8+ ((-0.171747132)+x[1])^2)+sqrt(1e-8+ ((-0.843266708)+x[1])^2)+sqrt(1e-8+ ((-0.550375356)+x[1])^2)+sqrt(1e-8+ ((-0.301137904)+x[1])^2)+sqrt(1e-8+ ((-0.292212117)+x[1])^2)+sqrt(1e-8+ ((-0.224052867)+x[1])^2)+sqrt(1e-8+ ((-0.349830504)+x[1])^2)+sqrt(1e-8+ ((-0.856270347)+x[1])^2)+sqrt(1e-8+ ((-0.067113723)+x[1])^2)+sqrt(1e-8+ ((-0.500210669)+x[1])^2)+sqrt(1e-8+ ((-0.998117627)+x[1])^2)+sqrt(1e-8+ ((-0.578733378)+x[1])^2)+sqrt(1e-8+ ((-0.991133039)+x[1])^2)+sqrt(1e-8+ ((-0.762250467)+x[1])^2)+sqrt(1e-8+ ((-0.130692483)+x[1])^2)+sqrt(1e-8+ ((-0.639718759)+x[1])^2)+sqrt(1e-8+ ((-0.159517864)+x[1])^2)+sqrt(1e-8+ ((-0.250080533)+x[1])^2)+sqrt(1e-8+ ((-0.668928609)+x[1])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.