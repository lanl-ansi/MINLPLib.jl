using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
b_Idx = Any[9, 10, 11]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_upper_bound(x[6], 5.0)
set_upper_bound(x[8], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -1.8*x[1]-7*x[5]-x[6]-1.2*x[7]+11*x[8]-3.5*b[9]-b[10]-1.5*b[11]+objvar == 0.0)
@NLconstraint(m, e2, -log(1+x[2])+x[6] == 0.0)
@NLconstraint(m, e3, -1.2*log(1+x[3])+x[7] == 0.0)
@constraint(m, e4, -0.9*x[4]+x[8] == 0.0)
@constraint(m, e5, -x[4]+x[5]+x[6]+x[7] == 0.0)
@constraint(m, e6, x[1]-x[2]-x[3] == 0.0)
@constraint(m, e7, x[4]-5*b[9] <= 0.0)
@constraint(m, e8, x[2]-5*b[10] <= 0.0)
@constraint(m, e9, x[3]-5*b[11] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
