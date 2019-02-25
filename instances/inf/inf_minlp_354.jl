using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2]
@variable(m, b[b_Idx])
x_Idx = Any[3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_binary(b[2])
set_binary(b[1])
set_upper_bound(x[4], 2.0)
set_upper_bound(x[5], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(113.902929*b[1]*x[4]+110.73895875*b[2]*x[5])+x[3] == 0.0)
@NLconstraint(m, e2, -(x[4]*b[1]+x[5]*b[2]) >= -2.6)
@NLconstraint(m, e3, -(x[4]*b[1]+x[5]*b[2]) <= 4.7)
@NLconstraint(m, e4, 113.902929*b[1]*x[4] <= 67.0)
@NLconstraint(m, e5, 113.902929*b[1]*x[4] >= 40.0)
@NLconstraint(m, e6, 110.73895875*b[2]*x[5] <= 67.0)
@NLconstraint(m, e7, 110.73895875*b[2]*x[5] >= 40.0)
@NLconstraint(m, e8, -16.4475829476*b[1]*x[4] >= -8.1748)
@NLconstraint(m, e9, -15.9907056435*b[2]*x[5] <= -8.1748)
@NLconstraint(m, e10, -15.9907056435*b[2]*x[5] >= -9.6748)
@constraint(m, e11, b[1]+b[2] <= 1.0)


# ----- Objective ----- #
@objective(m, Max, x[3])

m = m 		 # model get returned when including this script.