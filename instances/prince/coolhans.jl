using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[10] == 0.0)
@constraint(m, e2, x[11] == 0.0)
@constraint(m, e3, x[12] == 0.0)
@NLconstraint(m, e4, -((1.3725e-7*x[1]+937.62*x[4]-42.207*x[7])*x[1]+(1.3725e-7*x[2]+937.62*x[5]-42.207*x[8])*x[4]+(1.3725e-7*x[3]+937.62*x[6]-42.207*x[9])*x[7])+x[13] == 0.0)
@NLconstraint(m, e5, -((1.3725e-7*x[1]+937.62*x[4]-42.207*x[7])*x[2]+(1.3725e-7*x[2]+937.62*x[5]-42.207*x[8])*x[5]+(1.3725e-7*x[3]+937.62*x[6]-42.207*x[9])*x[8])+x[14] == 0.0)
@NLconstraint(m, e6, -((1.3725e-7*x[1]+937.62*x[4]-42.207*x[7])*x[3]+(1.3725e-7*x[2]+937.62*x[5]-42.207*x[8])*x[6]+(1.3725e-7*x[3]+937.62*x[6]-42.207*x[9])*x[9])+x[15] == 0.0)
@constraint(m, e7, x[16] == 0.0)
@constraint(m, e8, x[17] == 0.0)
@constraint(m, e9, x[18] == 0.0)
@constraint(m, e10, -0.0060893*x[1]+44.292*x[4]-2.0011*x[7]+x[19] == 0.0)
@constraint(m, e11, -0.0060893*x[2]+44.292*x[5]-2.0011*x[8]+x[20] == 0.0)
@constraint(m, e12, -0.0060893*x[3]+44.292*x[6]-2.0011*x[9]+x[21] == 0.0)
@constraint(m, e13, -1.388E-7*x[1]+1886*x[4]-42.362*x[7]+x[22] == 0.0)
@constraint(m, e14, -1.388E-7*x[2]+1886*x[5]-42.362*x[8]+x[23] == 0.0)
@constraint(m, e15, -1.388E-7*x[3]+1886*x[6]-42.362*x[9]+x[24] == 0.0)
@constraint(m, e16, 1.3877E-7*x[1]-42.362*x[4]+2.0705*x[7]+x[25] == 0.0)
@constraint(m, e17, 1.3877E-7*x[2]-42.362*x[5]+2.0705*x[8]+x[26] == 0.0)
@constraint(m, e18, 1.3877E-7*x[3]-42.362*x[6]+2.0705*x[9]+x[27] == 0.0)
@constraint(m, e19, x[10]+x[19] == 0.0)
@constraint(m, e20, x[11]+x[20] == -44.792)
@constraint(m, e21, x[12]+x[21] == 0.0)
@constraint(m, e22, x[13]+x[22] == 0.0)
@constraint(m, e23, x[14]+x[23] == -948.21)
@constraint(m, e24, x[15]+x[24] == 0.0)
@constraint(m, e25, x[16]+x[25] == 0.0)
@constraint(m, e26, x[17]+x[26] == 42.684)
@constraint(m, e27, x[18]+x[27] == 0.0)
@constraint(m, e28, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.