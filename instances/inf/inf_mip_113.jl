using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 37, 38, 39, 40, 41]
@variable(m, x[x_Idx])
b_Idx = Any[31, 32, 33, 34, 35, 36]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[8]+x[37] == 0.0)
@constraint(m, e2, x[8] >= 3718.390414)
@constraint(m, e3, x[9] == 3000.0)
@constraint(m, e4, x[10] == 0.0)
@constraint(m, e5, x[11] == 0.0)
@constraint(m, e6, x[12] == 0.0)
@constraint(m, e7, x[13] == 0.000675999999998567)
@constraint(m, e8, x[14] == 661.60891)
@constraint(m, e9, -x[15]+x[41] == 150.4)
@constraint(m, e10, x[2]-0.23*x[5]-x[16]-5.7*x[38]-x[41] == -22.0)
@constraint(m, e11, x[3]-0.33*x[6]-x[17]-4.275*x[39]-x[41] == -32.0)
@constraint(m, e12, x[4]-0.53*x[7]-x[18]-2.85*x[40]-x[41] == -35.0)
@constraint(m, e13, 2.457*x[5]-x[19]+32.1*x[38] == -100.0)
@constraint(m, e14, 2.53*x[5]-x[20]+23.3*x[38] == -50.0)
@constraint(m, e15, 0.29*x[5]-x[21]+3.72*x[38] == -11.0)
@constraint(m, e16, 2.457*x[6]-x[22]+32.1*x[39] == -100.0)
@constraint(m, e17, 2.53*x[6]-x[23]+23.3*x[39] == -50.0)
@constraint(m, e18, 0.29*x[6]-x[24]+3.72*x[39] == -11.0)
@constraint(m, e19, 2.457*x[7]-x[25]+32.1*x[40] == -100.0)
@constraint(m, e20, 2.53*x[7]-x[26]+23.3*x[40] == -50.0)
@constraint(m, e21, 0.29*x[7]-x[27]+3.72*x[40] == -11.0)
@constraint(m, e22, x[1]-x[5]-x[28] == 0.0)
@constraint(m, e23, x[1]-x[6]-x[29] == 0.0)
@constraint(m, e24, x[1]-x[7]-x[30] == 0.0)
@constraint(m, e25, x[2]-10000*b[31] <= 0.0)
@constraint(m, e26, x[3]-10000*b[32] <= 0.0)
@constraint(m, e27, x[4]-10000*b[33] <= 0.0)
@constraint(m, e28, x[9]+10000*b[31] <= 10000.0)
@constraint(m, e29, x[10]+10000*b[32] <= 10000.0)
@constraint(m, e30, x[11]+10000*b[33] <= 10000.0)
@constraint(m, e31, x[5]-10000*b[34] <= 0.0)
@constraint(m, e32, x[6]-10000*b[35] <= 0.0)
@constraint(m, e33, x[7]-10000*b[36] <= 0.0)
@constraint(m, e34, x[12]+10000*b[34] <= 10000.0)
@constraint(m, e35, x[13]+10000*b[35] <= 10000.0)
@constraint(m, e36, x[14]+10000*b[36] <= 10000.0)
@constraint(m, e37, 6000*x[15] == 0.0)
@constraint(m, e38, 3000*x[17] == 0.0)
@constraint(m, e39, 3000*x[18] == 0.0)
@constraint(m, e40, 215.732*x[22] == 0.0)
@constraint(m, e41, 1586.02*x[24] == 0.0)
@constraint(m, e42, 366.953*x[26] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[37])

 
