using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[1], 0.5)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*x[1]*x[2]-x[1]*x[1]-x[2]*x[2]-x[5]*x[5]+2*x[5]*x[6]-x[6]*x[6]+objvar <= 0.0)
@NLconstraint(m, e2, 2*x[1]*x[3]-x[1]*x[1]-x[3]*x[3]-x[5]*x[5]+2*x[5]*x[7]-x[7]*x[7]+objvar <= 0.0)
@NLconstraint(m, e3, 2*x[1]*x[4]-x[1]*x[1]-x[4]*x[4]-x[5]*x[5]+2*x[5]*x[8]-x[8]*x[8]+objvar <= 0.0)
@NLconstraint(m, e4, 2*x[2]*x[3]-x[2]*x[2]-x[3]*x[3]-x[6]*x[6]+2*x[6]*x[7]-x[7]*x[7]+objvar <= 0.0)
@NLconstraint(m, e5, 2*x[2]*x[4]-x[2]*x[2]-x[4]*x[4]-x[6]*x[6]+2*x[6]*x[8]-x[8]*x[8]+objvar <= 0.0)
@NLconstraint(m, e6, 2*x[3]*x[4]-x[3]*x[3]-x[4]*x[4]-x[7]*x[7]+2*x[7]*x[8]-x[8]*x[8]+objvar <= 0.0)
@constraint(m, e7, -x[5]+x[6] <= 0.0)
@constraint(m, e8, -x[1]+x[2] <= 0.0)
@constraint(m, e9, -x[2]+x[3] <= 0.0)
@constraint(m, e10, -x[3]+x[4] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

 
