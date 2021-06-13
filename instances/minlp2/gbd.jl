using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2]
@variable(m, x[x_Idx])
b_Idx = Any[3, 4, 5]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[2], 0.2)
set_upper_bound(x[2], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -5* (x[2])^2+objvar-b[3]-b[4]-b[5] == 0.0)
@constraint(m, e2, 3*x[2]-b[3]-b[4] <= 0.0)
@constraint(m, e3, -x[2]+0.1*b[4]+0.25*b[5] <= 0.0)
@constraint(m, e4, b[3]+b[4]+b[5] >= 2.0)
@constraint(m, e5, b[3]+b[4]+2*b[5] >= 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
