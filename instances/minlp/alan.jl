using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx] >= 0)
b_Idx = Any[6, 7, 8, 9]
@variable(m, b[b_Idx], Bin)

# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4] == 1.0)
@constraint(m, e2, 8*x[1]+9*x[2]+12*x[3]+7*x[4] == 10.0)
@NLconstraint(m, e3, x[1]*(4*x[1]+3*x[2]-x[3])+x[2]*(3*x[1]+6*x[2]+x[3])+x[3]*(x[2]-x[1]+10*x[3])-objvar == 0.0)
@constraint(m, e4, x[1]-b[6] <= 0.0)
@constraint(m, e5, x[2]-b[7] <= 0.0)
@constraint(m, e6, x[3]-b[8] <= 0.0)
@constraint(m, e7, x[4]-b[9] <= 0.0)
@constraint(m, e8, b[6]+b[7]+b[8]+b[9] <= 3.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
