using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, -10 <= x[x_Idx] <= 5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt(abs(x[1]))* (sin(x[1]))^2+0.1*x[1])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
