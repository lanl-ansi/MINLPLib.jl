using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
setupperbound(x[1], 0.0)
setupperbound(x[1], -1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(sqrt(1+ (x[1])^2+ (x[2]-x[3])^2)+sqrt(1+ (x[2])^2+ (x[3]-x[4])^2))+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])
m = m 		 # model get returned when including this script. 
