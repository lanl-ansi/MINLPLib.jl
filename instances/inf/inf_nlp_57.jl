using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, x[x_Idx])
set_lower_bound(x[2], -5.0)
set_upper_bound(x[2], 5.0)
set_lower_bound(x[3], -5.0)
set_upper_bound(x[3], 5.0)
set_lower_bound(x[4], -5.0)
set_upper_bound(x[4], 5.0)
set_lower_bound(x[5], -5.0)
set_upper_bound(x[5], 5.0)
set_lower_bound(x[6], -5.0)
set_upper_bound(x[6], 5.0)
set_lower_bound(x[7], -5.0)
set_upper_bound(x[7], 5.0)
set_lower_bound(x[8], -5.0)
set_upper_bound(x[8], 5.0)
set_lower_bound(x[9], -5.0)
set_upper_bound(x[9], 5.0)
set_lower_bound(x[18], -8.0)
set_upper_bound(x[18], 8.0)
set_lower_bound(x[19], -8.0)
set_upper_bound(x[19], 8.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.1*( (x[3])^2-2*x[3])-3.2247*x[3])-4.1394*x[2]+1.1678*x[4]-0.2532*x[5]-0.1*x[18] == 0.0)
@NLconstraint(m, e2, -(0.1*( (x[4])^2-2*x[4])-0.7753*x[4])+1.7394*x[2]-3.5678*x[3]+1.0532*x[5]-0.1*x[18] == 0.0)
@NLconstraint(m, e3, -(0.1*( (x[5])^2-2*x[5])-5*x[5])-3*x[2]+5.532*x[3]-7.532*x[4]-0.1*x[18] == 0.0)
@NLconstraint(m, e4, -(0.1*( (x[7])^2-2*x[7])-3.2247*x[7])-4.1394*x[6]+1.1678*x[8]-0.2532*x[9]-0.1*x[19] == 0.0)
@NLconstraint(m, e5, -(0.1*( (x[8])^2-2*x[8])-0.7753*x[8])+1.7394*x[6]-3.5678*x[7]+1.0532*x[9]-0.1*x[19] == 0.0)
@NLconstraint(m, e6, -(0.1*( (x[9])^2-2*x[9])-5*x[9])-3*x[6]+5.532*x[7]-7.532*x[8]-0.1*x[19] == 0.0)
@NLconstraint(m, e7, -(0.1*(-(2-2*x[3])*x[11]-x[3])-3.2247*x[11])-4.1394*x[10]+1.1678*x[12]-0.2532*x[13] == 0.0)
@NLconstraint(m, e8, -(0.1*(-(2-2*x[4])*x[12]-x[4])-0.7753*x[12])+1.7394*x[10]-3.5678*x[11]+1.0532*x[13] == 0.0)
@NLconstraint(m, e9, -(0.1*(-(2-2*x[5])*x[13]-x[5])-5*x[13])-3*x[10]+5.532*x[11]-7.532*x[12] == 0.0)
@NLconstraint(m, e10, -(0.1*(-(2-2*x[7])*x[15]-x[7])-3.2247*x[15])-4.1394*x[14]+1.1678*x[16]-0.2532*x[17] == 0.0)
@NLconstraint(m, e11, -(0.1*(-(2-2*x[8])*x[16]-x[8])-0.7753*x[16])+1.7394*x[14]-3.5678*x[15]+1.0532*x[17] == 0.0)
@NLconstraint(m, e12, -(0.1*(-(2-2*x[9])*x[17]-x[9])-5*x[17])-3*x[14]+5.532*x[15]-7.532*x[16] == 0.0)
@constraint(m, e13, -x[2] == 4.0)
@constraint(m, e14, -x[10] == 0.0)
@constraint(m, e15, -x[5]+x[6] == 0.0)
@constraint(m, e16, -x[9] == 0.0)
@constraint(m, e17, -x[13]+x[14] == 0.0)
@constraint(m, e18, -x[17] == 0.0)
@NLconstraint(m, e19, -( (x[13])^2+ (x[17])^2)+x[1] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script.