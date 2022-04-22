using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37]
@variable(m, x[x_Idx])
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_lower_bound(i[12], 0.0)
set_upper_bound(i[12], 100.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 100.0)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 100.0)
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 100.0)
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_lower_bound(i[15], 0.0)
set_upper_bound(i[15], 100.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(i[2], 1.0)
set_upper_bound(i[2], 1.0)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 0.0)
set_lower_bound(i[4], 1.0)
set_upper_bound(i[4], 1.0)
set_lower_bound(i[5], 1.0)
set_upper_bound(i[5], 1.0)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 0.0)
set_lower_bound(i[7], 1.0)
set_upper_bound(i[7], 1.0)
set_lower_bound(i[8], 1.0)
set_upper_bound(i[8], 1.0)
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 0.0)
set_lower_bound(i[10], 3.0)
set_upper_bound(i[10], 3.0)
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 0.0)
set_lower_bound(i[12], 2.0)
set_upper_bound(i[12], 2.0)
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 0.0)
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 0.0)
set_lower_bound(i[15], 3.0)
set_upper_bound(i[15], 3.0)
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 0.0)
set_upper_bound(x[17], 1000.0)
set_upper_bound(x[18], 1000.0)
set_upper_bound(x[19], 1000.0)
set_upper_bound(x[20], 1000.0)
set_upper_bound(x[21], 1000.0)
set_upper_bound(x[22], 1000.0)
set_lower_bound(x[23], -1000.0)
set_upper_bound(x[23], 1000.0)
set_lower_bound(x[24], -1000.0)
set_upper_bound(x[24], 1000.0)
set_lower_bound(x[25], -1000.0)
set_upper_bound(x[25], 1000.0)
set_lower_bound(x[26], -1000.0)
set_upper_bound(x[26], 1000.0)
set_lower_bound(x[27], -1000.0)
set_upper_bound(x[27], 1000.0)
set_lower_bound(x[28], -1000.0)
set_upper_bound(x[28], 1000.0)
set_lower_bound(x[29], -1000.0)
set_upper_bound(x[29], 1000.0)
set_lower_bound(x[30], -1000.0)
set_upper_bound(x[30], 1000.0)
set_lower_bound(x[31], -1000.0)
set_upper_bound(x[31], 1000.0)
set_lower_bound(x[32], -1000.0)
set_upper_bound(x[32], 1000.0)
set_lower_bound(x[33], -1000.0)
set_upper_bound(x[33], 1000.0)
set_lower_bound(x[34], -1000.0)
set_upper_bound(x[34], 1000.0)
set_lower_bound(x[35], -1000.0)
set_upper_bound(x[35], 1000.0)
set_lower_bound(x[36], -1000.0)
set_upper_bound(x[36], 1000.0)
set_lower_bound(x[37], -1000.0)
set_upper_bound(x[37], 1000.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-40*i[2]-38*i[3]-60*i[4]-20*i[5]-68*i[6]-20*i[7]-40*i[8]-31*i[9]-30*i[10]-59*i[11]-20*i[12]-48*i[13]-63*i[14]-30*i[15]-61*i[16] == -400.0)
@NLconstraint(m, e2, -500*i[2]*(x[17]-x[18])+x[23] == 0.0)
@NLconstraint(m, e3, -529.508*i[3]*(x[17]-x[19])+x[24] == 0.0)
@NLconstraint(m, e4, -333.333*i[4]*(x[17]-x[20])+x[25] == 0.0)
@NLconstraint(m, e5, -1000*i[5]*(x[17]-x[21])+x[26] == 0.0)
@NLconstraint(m, e6, -294.118*i[6]*(x[17]-x[22])+x[27] == 0.0)
@NLconstraint(m, e7, -1000*i[7]*(x[18]-x[19])+x[28] == 0.0)
@NLconstraint(m, e8, -500*i[8]*(x[18]-x[20])+x[29] == 0.0)
@NLconstraint(m, e9, -642.683*i[9]*(x[18]-x[21])+x[30] == 0.0)
@NLconstraint(m, e10, -661.307*i[10]*(x[18]-x[22])+x[31] == 0.0)
@NLconstraint(m, e11, -338.303*i[11]*(x[19]-x[20])+x[32] == 0.0)
@NLconstraint(m, e12, -1000*i[12]*(x[19]-x[21])+x[33] == 0.0)
@NLconstraint(m, e13, -416.667*i[13]*(x[19]-x[22])+x[34] == 0.0)
@NLconstraint(m, e14, -316.864*i[14]*(x[20]-x[21])+x[35] == 0.0)
@NLconstraint(m, e15, -661.307*i[15]*(x[20]-x[22])+x[36] == 0.0)
@NLconstraint(m, e16, -328.497*i[16]*(x[21]-x[22])+x[37] == 0.0)
@constraint(m, e17, x[23]+x[24]+x[25]+x[26]+x[27] == -30.0)
@constraint(m, e18, -x[23]+x[28]+x[29]+x[30]+x[31] == -240.0)
@constraint(m, e19, -x[24]-x[28]+x[32]+x[33]+x[34] == 125.0)
@constraint(m, e20, -x[25]-x[29]-x[32]+x[35]+x[36] == -160.0)
@constraint(m, e21, -x[26]-x[30]-x[33]-x[35]+x[37] == -240.0)
@constraint(m, e22, -x[27]-x[31]-x[34]-x[36]-x[37] == 545.0)
@constraint(m, e23, 100*i[2]+x[23] >= 0.0)
@constraint(m, e24, 100*i[3]+x[24] >= 0.0)
@constraint(m, e25, 80*i[4]+x[25] >= 0.0)
@constraint(m, e26, 100*i[5]+x[26] >= 0.0)
@constraint(m, e27, 70*i[6]+x[27] >= 0.0)
@constraint(m, e28, 100*i[7]+x[28] >= 0.0)
@constraint(m, e29, 100*i[8]+x[29] >= 0.0)
@constraint(m, e30, 100*i[9]+x[30] >= 0.0)
@constraint(m, e31, 100*i[10]+x[31] >= 0.0)
@constraint(m, e32, 82*i[11]+x[32] >= 0.0)
@constraint(m, e33, 100*i[12]+x[33] >= 0.0)
@constraint(m, e34, 100*i[13]+x[34] >= 0.0)
@constraint(m, e35, 75*i[14]+x[35] >= 0.0)
@constraint(m, e36, 100*i[15]+x[36] >= 0.0)
@constraint(m, e37, 78*i[16]+x[37] >= 0.0)
@constraint(m, e38, -100*i[2]+x[23] <= 0.0)
@constraint(m, e39, -100*i[3]+x[24] <= 0.0)
@constraint(m, e40, -80*i[4]+x[25] <= 0.0)
@constraint(m, e41, -100*i[5]+x[26] <= 0.0)
@constraint(m, e42, -70*i[6]+x[27] <= 0.0)
@constraint(m, e43, -100*i[7]+x[28] <= 0.0)
@constraint(m, e44, -100*i[8]+x[29] <= 0.0)
@constraint(m, e45, -100*i[9]+x[30] <= 0.0)
@constraint(m, e46, -100*i[10]+x[31] <= 0.0)
@constraint(m, e47, -82*i[11]+x[32] <= 0.0)
@constraint(m, e48, -100*i[12]+x[33] <= 0.0)
@constraint(m, e49, -100*i[13]+x[34] <= 0.0)
@constraint(m, e50, -75*i[14]+x[35] <= 0.0)
@constraint(m, e51, -100*i[15]+x[36] <= 0.0)
@constraint(m, e52, -78*i[16]+x[37] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

 
