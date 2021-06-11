using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1000.0)
set_upper_bound(x[1], 1000.0)
set_lower_bound(x[5], 100.0)
set_lower_bound(x[6], 100.0)
set_lower_bound(x[7], 100.0)
set_lower_bound(x[8], 100.0)
set_upper_bound(x[8], 400.0)
set_lower_bound(x[9], 100.0)
set_upper_bound(x[9], 400.0)
set_lower_bound(x[10], 100.0)
set_upper_bound(x[10], 400.0)
set_lower_bound(x[11], 100.0)
set_upper_bound(x[11], 100.0)
set_lower_bound(x[25], 0.01)
set_lower_bound(x[26], 0.01)
set_lower_bound(x[27], 0.01)


# ----- Constraints ----- #
@NLconstraint(m, e1, -x[26]^0.944*x[25]*x[27]^0.891136-objvar == 0.0)
@NLconstraint(m, e2, -0.01* (0.5*x[5]^0.5+0.5*(1004.72366-x[8]-x[15])^0.5)^2+x[25] == 0.0)
@NLconstraint(m, e3, -0.01* (0.5*x[6]^0.5+0.5*(1004.72366-x[9]-x[16])^0.5)^2+x[26] == 0.0)
@NLconstraint(m, e4, -0.01* (0.5*x[7]^0.5+0.5*(1004.72366-x[10]-x[17])^0.5)^2+x[27] == 0.0)
@constraint(m, e5, -0.07*x[2]-x[8]+x[28] == 0.0)
@constraint(m, e6, -0.07*x[3]-x[9]+x[29] == 0.0)
@constraint(m, e7, -0.07*x[4]-x[10]+x[30] == 0.0)
@constraint(m, e8, x[22]-0.2*x[28] == 0.0)
@constraint(m, e9, x[23]-0.2*x[29] == 0.0)
@constraint(m, e10, x[24]-0.2*x[30] == 0.0)
@constraint(m, e11, x[5]+x[19]+x[22]-x[28] == 0.0)
@constraint(m, e12, x[6]+x[20]+x[23]-x[29] == 0.0)
@constraint(m, e13, x[7]+x[21]+x[24]-x[30] == 0.0)
@constraint(m, e14, x[1]-x[2]+x[11]-x[12]+x[19] == 0.0)
@constraint(m, e15, x[2]-x[3]+x[12]-x[13]+x[20] == 0.0)
@constraint(m, e16, x[3]-x[4]+x[13]-x[14]+x[21] == 0.0)
@NLconstraint(m, e17, x[15]*(x[12]-0.255905*x[5]) == 1.0)
@NLconstraint(m, e18, x[16]*(x[13]-0.255905*x[6]) == 1.0)
@NLconstraint(m, e19, x[17]*(x[14]-0.255905*x[7]) == 1.0)
@constraint(m, e20, x[4]+x[14] == 1100.0)
@constraint(m, e21, -0.25846405*x[5]+x[12] >= 0.0)
@constraint(m, e22, -0.25846405*x[6]+x[13] >= 0.0)
@constraint(m, e23, -0.25846405*x[7]+x[14] >= 0.0)
@constraint(m, e24, x[8]+x[15] <= 904.251294)
@constraint(m, e25, x[9]+x[16] <= 904.251294)
@constraint(m, e26, x[10]+x[17] <= 904.251294)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
