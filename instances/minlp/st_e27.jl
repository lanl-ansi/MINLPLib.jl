using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[3, 4]
@variable(m, x[x_Idx] >= 0)
set_upper_bound(x[3], 6.0)
set_upper_bound(x[4], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[3]+3*x[4] <= 5.0)
@constraint(m, e2, 2*x[3]-x[4] <= 5.0)
@constraint(m, e3, -2*x[3]+x[4] <= 0.0)
@constraint(m, e4, x[3]-3*x[4] <= 0.0)
@constraint(m, e5, -6*b[1]+x[3] <= 0.0)
@constraint(m, e6, -5*b[2]+x[4] <= 0.0)
@NLconstraint(m, e7, -(4*x[3]- (x[3])^2- (x[4])^2+2*x[4])-2*b[1]-2*b[2]+objvar == 2.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
