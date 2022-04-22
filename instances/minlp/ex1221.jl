using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, 0 <= x[x_Idx] <= 10)
b_Idx = Any[3, 4, 5]
@variable(m, b[b_Idx], Bin)

# ----- Constraints ----- #
@constraint(m, e1, -2*x[1]-3*x[2]-1.5*b[3]-2*b[4]+0.5*b[5]+objvar == 0.0)
@NLconstraint(m, e2,  (x[1])^2+b[3] == 1.25)
@NLconstraint(m, e3, x[2]^1.5+1.5*b[4] == 3.0)
@constraint(m, e4, x[1]+b[3] <= 1.6)
@constraint(m, e5, 1.333*x[2]+b[4] <= 3.0)
@constraint(m, e6, -b[3]-b[4]+b[5] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
