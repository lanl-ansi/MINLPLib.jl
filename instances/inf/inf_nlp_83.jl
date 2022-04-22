using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[1], 150.0)
set_upper_bound(x[1], 1500.0)
set_lower_bound(x[2], 150.0)
set_upper_bound(x[2], 1500.0)
set_lower_bound(x[3], 150.0)
set_upper_bound(x[3], 1500.0)
set_lower_bound(x[4], 150.0)
set_upper_bound(x[4], 1500.0)
set_lower_bound(x[5], 150.0)
set_upper_bound(x[5], 1500.0)
set_lower_bound(x[6], 150.0)
set_upper_bound(x[6], 1500.0)
set_upper_bound(x[7], 1000.0)
set_upper_bound(x[8], 1000.0)
set_upper_bound(x[9], 1000.0)
set_upper_bound(x[10], 1000.0)
set_upper_bound(x[11], 1000.0)
set_upper_bound(x[12], 1000.0)
set_lower_bound(x[13], 1000.0)
set_upper_bound(x[13], 1100.0)
set_lower_bound(x[14], 1000.0)
set_upper_bound(x[14], 1100.0)
set_lower_bound(x[15], 1000.0)
set_upper_bound(x[15], 1100.0)
set_lower_bound(x[16], 1000.0)
set_upper_bound(x[16], 1100.0)
set_lower_bound(x[17], 1000.0)
set_upper_bound(x[17], 1100.0)
set_lower_bound(x[18], 1000.0)
set_upper_bound(x[18], 1100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(12*(0.00184*x[1]*x[1]+9.2*x[1])+12*(0.00184*x[2]*x[2]+9.2*x[2])+12*(0.00184*x[3]*x[3]+9.2*x[3])+12*(0.00184*x[4]*x[4]+9.2*x[4])+12*(0.00184*x[5]*x[5]+9.2*x[5])+12*(0.00184*x[6]*x[6]+9.2*x[6]))+x[19] == 41400.0)
@constraint(m, e2, -x[1]-x[7]-x[13] == -1200.0)
@constraint(m, e3, -x[2]-x[8]-x[14] == -1500.0)
@constraint(m, e4, -x[3]-x[9]-x[15] == -1100.0)
@constraint(m, e5, -x[4]-x[10]-x[16] == -1800.0)
@constraint(m, e6, -x[5]-x[11]-x[17] == -950.0)
@constraint(m, e7, -x[6]-x[12]-x[18] == -1300.0)


# ----- Objective ----- #
@objective(m, Min, x[19])

 
