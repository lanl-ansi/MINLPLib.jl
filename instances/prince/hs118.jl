using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[1], 8.0)
set_upper_bound(x[1], 21.0)
set_lower_bound(x[2], 43.0)
set_upper_bound(x[2], 57.0)
set_lower_bound(x[3], 3.0)
set_upper_bound(x[3], 16.0)
set_upper_bound(x[4], 90.0)
set_upper_bound(x[5], 120.0)
set_upper_bound(x[6], 60.0)
set_upper_bound(x[7], 90.0)
set_upper_bound(x[8], 120.0)
set_upper_bound(x[9], 60.0)
set_upper_bound(x[10], 90.0)
set_upper_bound(x[11], 120.0)
set_upper_bound(x[12], 60.0)
set_upper_bound(x[13], 90.0)
set_upper_bound(x[14], 120.0)
set_upper_bound(x[15], 60.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[4] <= 6.0)
@constraint(m, e2, -x[2]+x[5] <= 7.0)
@constraint(m, e3, -x[3]+x[6] <= 6.0)
@constraint(m, e4, -x[4]+x[7] <= 6.0)
@constraint(m, e5, -x[5]+x[8] <= 7.0)
@constraint(m, e6, -x[6]+x[9] <= 6.0)
@constraint(m, e7, -x[7]+x[10] <= 6.0)
@constraint(m, e8, -x[8]+x[11] <= 7.0)
@constraint(m, e9, -x[9]+x[12] <= 6.0)
@constraint(m, e10, -x[10]+x[13] <= 6.0)
@constraint(m, e11, -x[11]+x[14] <= 7.0)
@constraint(m, e12, -x[12]+x[15] <= 6.0)
@constraint(m, e13, x[1]-x[4] <= 7.0)
@constraint(m, e14, x[2]-x[5] <= 7.0)
@constraint(m, e15, x[3]-x[6] <= 7.0)
@constraint(m, e16, x[4]-x[7] <= 7.0)
@constraint(m, e17, x[5]-x[8] <= 7.0)
@constraint(m, e18, x[6]-x[9] <= 7.0)
@constraint(m, e19, x[7]-x[10] <= 7.0)
@constraint(m, e20, x[8]-x[11] <= 7.0)
@constraint(m, e21, x[9]-x[12] <= 7.0)
@constraint(m, e22, x[10]-x[13] <= 7.0)
@constraint(m, e23, x[11]-x[14] <= 7.0)
@constraint(m, e24, x[12]-x[15] <= 7.0)
@constraint(m, e25, x[1]+x[2]+x[3] >= 60.0)
@constraint(m, e26, x[4]+x[5]+x[6] >= 50.0)
@constraint(m, e27, x[7]+x[8]+x[9] >= 70.0)
@constraint(m, e28, x[10]+x[11]+x[12] >= 85.0)
@constraint(m, e29, x[13]+x[14]+x[15] >= 100.0)
@NLconstraint(m, e30, -(0.0001* (x[1])^2+2.3*x[1]+0.0001* (x[2])^2+1.7*x[2]+0.00015* (x[3])^2+2.2*x[3]+0.0001* (x[4])^2+2.3*x[4]+0.0001* (x[5])^2+1.7*x[5]+0.00015* (x[6])^2+2.2*x[6]+0.0001* (x[7])^2+2.3*x[7]+0.0001* (x[8])^2+1.7*x[8]+0.00015* (x[9])^2+2.2*x[9]+0.0001* (x[10])^2+2.3*x[10]+0.0001* (x[11])^2+1.7*x[11]+0.00015* (x[12])^2+2.2*x[12]+0.0001* (x[13])^2+2.3*x[13]+0.0001* (x[14])^2+1.7*x[14]+0.00015* (x[15])^2+2.2*x[15])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
