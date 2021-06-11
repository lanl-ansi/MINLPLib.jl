using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27]
@variable(m, x[x_Idx])
b_Idx = Any[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[13], 0.0)
set_upper_bound(x[1], 29.0)
set_upper_bound(x[2], 29.0)
set_upper_bound(x[3], 29.0)
set_upper_bound(x[4], 29.0)
set_upper_bound(x[5], 29.0)
set_upper_bound(x[6], 29.0)
set_lower_bound(x[7], 1.0)
set_upper_bound(x[7], 40.0)
set_lower_bound(x[8], 1.0)
set_upper_bound(x[8], 50.0)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[9], 60.0)
set_lower_bound(x[10], 1.0)
set_upper_bound(x[10], 40.0)
set_lower_bound(x[11], 1.0)
set_upper_bound(x[11], 50.0)
set_lower_bound(x[12], 1.0)
set_upper_bound(x[12], 60.0)
set_upper_bound(x[13], 30.0)
set_upper_bound(x[14], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[13]-2*x[14]+x[27] == 0.0)
@constraint(m, e2, -x[1]-x[7]+x[13] >= 0.0)
@constraint(m, e3, -x[2]-x[8]+x[13] >= 0.0)
@constraint(m, e4, -x[3]-x[9]+x[13] >= 0.0)
@constraint(m, e5, -x[4]-x[10]+x[14] >= 0.0)
@constraint(m, e6, -x[5]-x[11]+x[14] >= 0.0)
@constraint(m, e7, -x[6]-x[12]+x[14] >= 0.0)
@NLconstraint(m, e8, 40/x[10]-x[7] <= 0.0)
@NLconstraint(m, e9, 50/x[11]-x[8] <= 0.0)
@NLconstraint(m, e10, 60/x[12]-x[9] <= 0.0)
@constraint(m, e11, x[1]-x[2]+x[7]+69*b[15] <= 69.0)
@constraint(m, e12, x[1]-x[3]+x[7]+69*b[16] <= 69.0)
@constraint(m, e13, x[2]-x[3]+x[8]+79*b[17] <= 79.0)
@constraint(m, e14, -x[1]+x[2]+x[8]+79*b[18] <= 79.0)
@constraint(m, e15, -x[1]+x[3]+x[9]+89*b[19] <= 89.0)
@constraint(m, e16, -x[2]+x[3]+x[9]+89*b[20] <= 89.0)
@constraint(m, e17, x[4]-x[5]+x[10]+69*b[21] <= 69.0)
@constraint(m, e18, x[4]-x[6]+x[10]+69*b[22] <= 69.0)
@constraint(m, e19, x[5]-x[6]+x[11]+79*b[23] <= 79.0)
@constraint(m, e20, -x[4]+x[5]+x[11]+79*b[24] <= 79.0)
@constraint(m, e21, -x[4]+x[6]+x[12]+89*b[25] <= 89.0)
@constraint(m, e22, -x[5]+x[6]+x[12]+89*b[26] <= 89.0)
@constraint(m, e23, b[15]+b[18]+b[21]+b[24] == 1.0)
@constraint(m, e24, b[16]+b[19]+b[22]+b[25] == 1.0)
@constraint(m, e25, b[17]+b[20]+b[23]+b[26] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[27])

m = m 		 # model get returned when including this script. 
