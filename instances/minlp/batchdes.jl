using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, x[x_Idx])
set_lower_bound(x[17], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[10], 5.52146091786225)
set_upper_bound(x[10], 7.82404601085629)
set_lower_bound(x[11], 5.52146091786225)
set_upper_bound(x[11], 7.82404601085629)
set_lower_bound(x[12], 5.52146091786225)
set_upper_bound(x[12], 7.82404601085629)
set_lower_bound(x[13], 5.40367788220586)
set_upper_bound(x[13], 6.4377516497364)
set_lower_bound(x[14], 4.60517018598809)
set_upper_bound(x[14], 6.03228654162824)
set_lower_bound(x[15], 1.89711998488588)
set_upper_bound(x[15], 2.99573227355399)
set_lower_bound(x[16], 1.38629436111989)
set_upper_bound(x[16], 2.484906649788)
set_upper_bound(x[17], 1.09861228866811)
set_upper_bound(x[18], 1.09861228866811)
set_upper_bound(x[19], 1.09861228866811)
set_lower_bound(objvar, 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[10]-x[13] >= 0.693147180559945)
@constraint(m, e2, x[11]-x[13] >= 1.09861228866811)
@constraint(m, e3, x[12]-x[13] >= 1.38629436111989)
@constraint(m, e4, x[10]-x[14] >= 1.38629436111989)
@constraint(m, e5, x[11]-x[14] >= 1.79175946922805)
@constraint(m, e6, x[12]-x[14] >= 1.09861228866811)
@constraint(m, e7, x[15]+x[17] >= 2.07944154167984)
@constraint(m, e8, x[15]+x[18] >= 2.99573227355399)
@constraint(m, e9, x[15]+x[19] >= 1.38629436111989)
@constraint(m, e10, x[16]+x[17] >= 2.30258509299405)
@constraint(m, e11, x[16]+x[18] >= 2.484906649788)
@constraint(m, e12, x[16]+x[19] >= 1.09861228866811)
@NLconstraint(m, e13, 200000*exp(x[15]-x[13])+150000*exp(x[16]-x[14]) <= 6000.0)
@constraint(m, e14, -0.693147180559945*b[4]-1.09861228866811*b[7]+x[17] == 0.0)
@constraint(m, e15, -0.693147180559945*b[5]-1.09861228866811*b[8]+x[18] == 0.0)
@constraint(m, e16, -0.693147180559945*b[6]-1.09861228866811*b[9]+x[19] == 0.0)
@constraint(m, e17, b[1]+b[4]+b[7] == 1.0)
@constraint(m, e18, b[2]+b[5]+b[8] == 1.0)
@constraint(m, e19, b[3]+b[6]+b[9] == 1.0)
@NLconstraint(m, e20, -(250*exp(0.6*x[10]+x[17])+500*exp(0.6*x[11]+x[18])+340*exp(0.6*x[12]+x[19])) + objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
