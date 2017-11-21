using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.0e-7)
setupperbound(x[1], 5.0)
setlowerbound(x[2], 1.0e-7)
setupperbound(x[2], 5.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -8.62* (x[2])^3/x[1] >= -1.0)
@NLconstraint(m, e2, -0.1*(0.44* (x[1])^3/ (x[2])^2+10/x[1]+0.592*x[1]/ (x[2])^3)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
