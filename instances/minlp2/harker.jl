using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[15]+x[16]+x[17]-x[18]-x[19]-x[20] == 0.0)
@constraint(m, e2, -x[1]-x[2]+x[5]+x[8]-x[15]+x[18] == 0.0)
@constraint(m, e3, -x[3]+x[11]-x[16]+x[19] == 0.0)
@constraint(m, e4, -x[4]+x[12]-x[17]+x[20] == 0.0)
@constraint(m, e5, x[1]-x[5]-x[6]-x[7]+x[9]+x[13] == 0.0)
@constraint(m, e6, x[2]+x[6]-x[8]-x[9]-x[10]+x[14] == 0.0)
@constraint(m, e7, x[3]+x[4]+x[7]+x[10]-x[11]-x[12]-x[13]-x[14] == 0.0)
@NLconstraint(m, e8, -(19*x[15]-0.1* (x[15])^2-0.5* (x[18])^2-x[18]-0.005* (x[16])^2+27*x[16]-0.4* (x[19])^2-2*x[19]-0.15* (x[17])^2+30*x[17]-0.3* (x[20])^2-1.5*x[20]-(0.166666666666667* (x[1])^3+x[1]+0.0666666666666667* (x[2])^3+2*x[2]+0.1* (x[3])^3+3*x[3]+0.133333333333333* (x[4])^3+x[4]+0.1* (x[5])^3+2*x[5]+0.0333333333333333* (x[6])^3+x[6]+0.0333333333333333* (x[7])^3+x[7]+0.166666666666667* (x[8])^3+3*x[8]+0.0666666666666667* (x[9])^3+2*x[9]+0.333333333333333* (x[10])^3+x[10]+0.0833333333333333* (x[11])^3+2*x[11]+0.0666666666666667* (x[12])^3+2*x[12]+0.3* (x[13])^3+x[13]+0.266666666666667* (x[14])^3+3*x[14]))-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
