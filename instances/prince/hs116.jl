using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 0.1)
set_upper_bound(x[3], 1.0)
set_lower_bound(x[4], 0.0001)
set_upper_bound(x[4], 0.1)
set_lower_bound(x[5], 0.1)
set_upper_bound(x[5], 0.9)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 0.9)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 1000.0)
set_lower_bound(x[8], 0.1)
set_upper_bound(x[8], 1000.0)
set_lower_bound(x[9], 500.0)
set_upper_bound(x[9], 1000.0)
set_lower_bound(x[10], 0.1)
set_upper_bound(x[10], 500.0)
set_lower_bound(x[11], 1.0)
set_upper_bound(x[11], 150.0)
set_lower_bound(x[12], 0.0001)
set_upper_bound(x[12], 150.0)
set_lower_bound(x[13], 0.0001)
set_upper_bound(x[13], 150.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[2]+x[3] >= 0.0)
@constraint(m, e2, -x[1]+x[2] >= 0.0)
@constraint(m, e3, -0.002*x[7]+0.002*x[8] >= -1.0)
@constraint(m, e4, x[11]+x[12]+x[13] >= 50.0)
@NLconstraint(m, e5, 1.231059*x[3]*x[10]-1.262626*x[10]+x[13] >= 0.0)
@NLconstraint(m, e6, (-0.975*x[2]*x[5])-0.03475*x[2]+x[5]+0.00975* (x[2])^2 >= 0.0)
@NLconstraint(m, e7, (-0.975*x[3]*x[6])-0.03475*x[3]+x[6]+0.00975* (x[3])^2 >= 0.0)
@NLconstraint(m, e8, (-0.975*x[1]*x[4])-0.03475*x[1]+x[4]+0.00975* (x[1])^2 >= 0.0)
@NLconstraint(m, e9, 1.231059*x[2]*x[9]-1.262626*x[9]+x[12] >= 0.0)
@NLconstraint(m, e10, 1.231059*x[1]*x[8]-1.262626*x[8]+x[11] >= 0.0)
@NLconstraint(m, e11, x[5]*x[7]-x[1]*x[8]-x[4]*x[7]+x[4]*x[8] >= 0.0)
@NLconstraint(m, e12, (-0.002*(x[2]*x[9]+x[5]*x[8]-x[1]*x[8]-x[6]*x[9]))-x[5]-x[6] >= -1.0)
@NLconstraint(m, e13, x[2]*x[9]-x[3]*x[10]-x[6]*x[9]-500*x[2]+500*x[6]+x[2]*x[10] >= 0.0)
@NLconstraint(m, e14, x[2]-0.002*(x[2]*x[10]-x[3]*x[10]) >= 0.9)
@constraint(m, e15, x[11]+x[12]+x[13] <= 250.0)
@constraint(m, e16, -x[11]-x[12]-x[13]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
