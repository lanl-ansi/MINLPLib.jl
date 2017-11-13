using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -( (x[1]-x[2]+x[3])^2+ (x[2]-x[1]+x[3])^2+ (x[1]+x[2]-x[3])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
