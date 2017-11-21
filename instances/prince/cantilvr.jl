using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0e-6)
setlowerbound(x[2], 1.0e-6)
setlowerbound(x[3], 1.0e-6)
setlowerbound(x[4], 1.0e-6)
setlowerbound(x[5], 1.0e-6)


# ----- Constraints ----- #
@NLconstraint(m, e1, 61/ (x[1])^3+37/ (x[2])^3+19/ (x[3])^3+7/ (x[4])^3+1/ (x[5])^3 <= 1.0)
@constraint(m, e2, -0.0624*x[1]-0.0624*x[2]-0.0624*x[3]-0.0624*x[4]-0.0624*x[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
