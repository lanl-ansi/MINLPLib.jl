using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 7.0)
set_upper_bound(x[2], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-2*x[2] <= 100.0)
@constraint(m, e2, -x[1]-2*x[2] <= 100.0)
@constraint(m, e3, -x[1]+2*x[2] >= 5.0)
@constraint(m, e4, -x[1]+2*x[2] <= 8.0)
@constraint(m, e5, x[1]+2*x[2] <= 12.0)
@constraint(m, e6, x[1]-x[3] == 0.0)
@constraint(m, e7, 2*x[1]-3*x[2]-x[4] == -13.0)
@constraint(m, e8, x[1]+x[2]-x[5] == 1.0)
@NLconstraint(m, e9, -x[4]*x[5]-x[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
