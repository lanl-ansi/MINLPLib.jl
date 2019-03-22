using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
UB = [10, 6]
@variable(m, 1 <= x[i in x_Idx] <= UB[i])
b_Idx = Any[3, 4, 5]
@variable(m, b[b_Idx], Bin)


# ----- Constraints ----- #
@NLconstraint(m, e1, 8*x[1]-2*x[1]^0.5* (x[2])^2+11*x[2]+2* (x[2])^2-2*x[2]^0.5 <= 39.0)
@constraint(m, e2, x[1]-x[2] <= 3.0)
@constraint(m, e3, 3*x[1]+2*x[2] <= 24.0)
@constraint(m, e4, x[2]-b[3]-2*b[4]-4*b[5] == 1.0)
@constraint(m, e5, b[4]+b[5] <= 1.0)
@constraint(m, e6, 5*x[1] - 3*x[2] + objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
