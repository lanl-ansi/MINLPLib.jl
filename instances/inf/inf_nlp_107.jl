using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[7]+x[8]+x[9] == 0.7)
@constraint(m, e2, x[10]+x[11]+x[12] == -0.4)
@NLconstraint(m, e3, -((x[1]*x[1]-x[1]*x[1]*x[1])*x[7]+(x[2]*x[2]-x[2]*x[2]*x[2])*x[8]+(x[3]*x[3]-x[3]*x[3]*x[3])*x[9]+(x[4]*x[4]-x[4]*x[4]*x[4])*x[10]+(x[5]*x[5]-x[5]*x[5]*x[5])*x[11]+(x[6]*x[6]-x[6]*x[6]*x[6])*x[12])+x[13] == 0.0)
@NLconstraint(m, e4, -(x[4]*x[4]*x[10]-x[5]*x[5]*x[11]-x[6]*x[6]*x[12])+x[14] == 0.0)
@NLconstraint(m, e5, x[13]*x[14]+x[15] == 0.0)
@NLconstraint(m, e6, x[1]*x[7]+x[2]*x[8]+x[3]*x[9]+x[4]*x[10]+x[5]*x[11]+x[6]*x[12] == 0.7)


# ----- Objective ----- #
@objective(m, Min, x[15])

 
