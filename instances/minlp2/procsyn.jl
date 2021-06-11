using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[3], 10.0)
set_upper_bound(x[4], 10.0)
set_upper_bound(x[5], 10.0)
set_upper_bound(x[6], 10.0)
set_upper_bound(x[7], 10.0)
set_upper_bound(x[8], 10.0)
set_upper_bound(x[9], 10.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.05*( (x[1])^2+x[2]^3)+0.175*( (x[1])^2+x[2]^3)+0.025*( (x[1])^2+x[2]^3)+0.1*( (x[1])^2+x[2]^3)+0.35*( (x[1])^2+x[2]^3)+0.05*( (x[1])^2+x[2]^3)+0.05*( (x[1])^2+x[2]^3)+0.175*( (x[1])^2+x[2]^3)+0.025*( (x[1])^2+x[2]^3))-0.15*x[3]-0.525*x[4]-0.075*x[5]-0.3*x[6]-1.05*x[7]-0.15*x[8]-0.15*x[9]-0.525*x[10]-0.075*x[11]-0.1*x[12]-0.35*x[13]-0.05*x[14]-0.2*x[15]-0.7*x[16]-0.1*x[17]-0.1*x[18]-0.35*x[19]-0.05*x[20]+objvar == -3.2)
@constraint(m, e2, x[1]-2*x[3]-2*x[12] >= -1.0)
@constraint(m, e3, x[1]-2*x[4]-2*x[13] >= -1.0)
@constraint(m, e4, x[1]-2*x[5]-2*x[14] >= -1.0)
@constraint(m, e5, x[1]-2*x[6]-2*x[15] >= -3.0)
@constraint(m, e6, x[1]-2*x[7]-2*x[16] >= -3.0)
@constraint(m, e7, x[1]-2*x[8]-2*x[17] >= -3.0)
@constraint(m, e8, x[1]-2*x[9]-2*x[18] >= -5.0)
@constraint(m, e9, x[1]-2*x[10]-2*x[19] >= -5.0)
@constraint(m, e10, x[1]-2*x[11]-2*x[20] >= -5.0)
@NLconstraint(m, e11, -(1/x[3]+ (x[12])^2)+x[2] >= 2.5)
@NLconstraint(m, e12, -(1/x[4]+ (x[13])^2)+x[2] >= 6.5)
@NLconstraint(m, e13, -(1/x[5]+ (x[14])^2)+x[2] >= 10.5)
@NLconstraint(m, e14, -(1/x[6]+ (x[15])^2)+x[2] >= 3.5)
@NLconstraint(m, e15, -(1/x[7]+ (x[16])^2)+x[2] >= 7.5)
@NLconstraint(m, e16, -(1/x[8]+ (x[17])^2)+x[2] >= 11.5)
@NLconstraint(m, e17, -(1/x[9]+ (x[18])^2)+x[2] >= 4.5)
@NLconstraint(m, e18, -(1/x[10]+ (x[19])^2)+x[2] >= 8.5)
@NLconstraint(m, e19, -(1/x[11]+ (x[20])^2)+x[2] >= 12.5)
@NLconstraint(m, e20,  (x[3])^2+2*x[12] <= 30.0)
@NLconstraint(m, e21,  (x[4])^2+2*x[13] <= 30.0)
@NLconstraint(m, e22,  (x[5])^2+2*x[14] <= 30.0)
@NLconstraint(m, e23,  (x[6])^2+2*x[15] <= 30.0)
@NLconstraint(m, e24,  (x[7])^2+2*x[16] <= 30.0)
@NLconstraint(m, e25,  (x[8])^2+2*x[17] <= 30.0)
@NLconstraint(m, e26,  (x[9])^2+2*x[18] <= 30.0)
@NLconstraint(m, e27,  (x[10])^2+2*x[19] <= 30.0)
@NLconstraint(m, e28,  (x[11])^2+2*x[20] <= 30.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
