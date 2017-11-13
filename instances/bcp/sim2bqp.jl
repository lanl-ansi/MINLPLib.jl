using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)
setupperbound(x[2], 0.5)


# ----- Constraints ----- #
@constraint(m, e1, -( (x[2]-x[1])^2+x[2]+ (x[1]+x[2])^2)+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 
