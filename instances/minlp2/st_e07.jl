using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 300.0)
set_upper_bound(x[2], 300.0)
set_upper_bound(x[3], 100.0)
set_upper_bound(x[4], 200.0)
set_upper_bound(x[5], 100.0)
set_upper_bound(x[6], 300.0)
set_upper_bound(x[7], 100.0)
set_upper_bound(x[8], 200.0)
set_upper_bound(x[9], 200.0)
set_lower_bound(x[10], 1.0)
set_upper_bound(x[10], 3.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]-x[3]-x[4] == 0.0)
@constraint(m, e2, x[3]-x[5]+x[7] == 0.0)
@constraint(m, e3, x[4]+x[8]-x[9] == 0.0)
@constraint(m, e4, -x[6]+x[7]+x[8] == 0.0)
@NLconstraint(m, e5, x[10]*x[3]-2.5*x[5]+2*x[7] <= 0.0)
@NLconstraint(m, e6, x[10]*x[4]+2*x[8]-1.5*x[9] <= 0.0)
@NLconstraint(m, e7, -x[10]*(x[3]+x[4])+3*x[1]+x[2] == 0.0)
@constraint(m, e8, -6*x[1]-16*x[2]+9*x[5]-10*x[6]+15*x[9]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
