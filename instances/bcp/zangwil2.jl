using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -0.0666666666666667*(16* (x[1])^2-56*x[1]+16* (x[2])^2-256*x[2]-8*x[1]*x[2])+x[3] == 66.0666666666667)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 
