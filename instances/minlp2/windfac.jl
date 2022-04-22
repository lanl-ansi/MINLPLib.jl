using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3, 4, 6, 7, 8, 9, 10, 11, 13, 14, 15]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 5]
@variable(m, i[i_Idx] >= 1, Int)
set_upper_bound(i[1], 10.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[5], 100.0)
set_lower_bound(x[15], 0.8)


# ----- Constraints ----- #
@constraint(m, e1, -12*i[1]+i[2] == 0.0)
@NLconstraint(m, e2, -12.566370616/i[2]+x[3] == 0.0)
@constraint(m, e3, -0.25*i[2]+x[4] == 0.0)
@constraint(m, e4, -x[4]+i[5] == -1.0)
@NLconstraint(m, e5, i[1]*sin(0.5*x[3])*x[6]-sin(0.5*i[1]*x[3]) == 0.0)
@NLconstraint(m, e6, -sin(1.570796327*i[5]/x[4])+x[9] == 0.0)
@NLconstraint(m, e7, -x[9]*x[6]+x[15] == 0.0)
@NLconstraint(m, e8, i[1]*sin(1.5*x[3])*x[7]-sin(1.5*i[1]*x[3]) == 0.0)
@NLconstraint(m, e9, -sin(4.712388981*i[5]/x[4])+x[10] == 0.0)
@NLconstraint(m, e10, -x[10]*x[7]+x[13] == 0.0)
@NLconstraint(m, e11, i[1]*sin(2.5*x[3])*x[8]-sin(2.5*i[1]*x[3]) == 0.0)
@NLconstraint(m, e12, -sin(7.853981635*i[5]/x[4])+x[11] == 0.0)
@NLconstraint(m, e13, -x[11]*x[8]+x[14] == 0.0)
@NLconstraint(m, e14, -(x[13]*x[13]+x[14]*x[14])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
