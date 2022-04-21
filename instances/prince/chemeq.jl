using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.5e-6)
set_lower_bound(x[2], 1.5e-6)
set_lower_bound(x[3], 1.5e-6)
set_lower_bound(x[4], 1.5e-6)
set_lower_bound(x[5], 1.5e-6)
set_lower_bound(x[6], 1.5e-6)
set_lower_bound(x[7], 1.5e-6)
set_lower_bound(x[8], 1.5e-6)
set_lower_bound(x[9], 1.5e-6)
set_lower_bound(x[10], 1.5e-6)
set_lower_bound(x[11], 1.5e-6)
set_lower_bound(x[12], 1.5e-6)
set_lower_bound(x[13], 1.5e-6)
set_lower_bound(x[14], 1.5e-6)
set_lower_bound(x[15], 1.5e-6)
set_lower_bound(x[16], 1.5e-6)
set_lower_bound(x[17], 1.5e-6)
set_lower_bound(x[18], 1.5e-6)
set_lower_bound(x[19], 1.5e-6)
set_lower_bound(x[20], 1.5e-6)
set_lower_bound(x[21], 1.5e-6)
set_lower_bound(x[22], 1.5e-6)
set_lower_bound(x[23], 1.5e-6)
set_lower_bound(x[24], 1.5e-6)
set_lower_bound(x[25], 1.5e-6)
set_lower_bound(x[26], 1.5e-6)
set_lower_bound(x[27], 1.5e-6)
set_lower_bound(x[28], 1.5e-6)
set_lower_bound(x[29], 1.5e-6)
set_lower_bound(x[30], 1.5e-6)
set_lower_bound(x[31], 1.5e-6)
set_lower_bound(x[32], 1.5e-6)
set_lower_bound(x[33], 1.5e-6)
set_lower_bound(x[34], 1.5e-6)
set_lower_bound(x[35], 1.5e-6)
set_lower_bound(x[36], 1.5e-6)
set_lower_bound(x[37], 1.5e-6)
set_lower_bound(x[38], 1.5e-6)
set_lower_bound(x[39], 1.5e-6)
set_lower_bound(x[40], 1.5e-6)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[37]+2*x[38]+3*x[39]+4*x[40] == 0.6529581)
@constraint(m, e2, x[6]+x[7]+x[8]+x[10]+x[28]+x[29]+x[30]+x[31]+x[32] == 0.281941)
@constraint(m, e3, x[11]+x[12]+x[13] == 3.705233)
@constraint(m, e4, x[4]-x[10]-x[14]+x[15]+x[16]+x[17]+x[26]+x[27]+x[30]-x[31]-x[32] == 47.00022)
@constraint(m, e5, x[15]+x[18]+x[19]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32] == 47.02972)
@constraint(m, e6, x[20]+x[21] == 0.08005)
@constraint(m, e7, x[22]+x[23] == 0.08813)
@constraint(m, e8, x[24]+x[25] == 0.04829)
@constraint(m, e9, x[34] == 0.0155)
@constraint(m, e10, x[35] == 0.0211275)
@constraint(m, e11, x[36]+x[37]+x[38]+x[39]+x[40] == 0.0022725)
@constraint(m, e12, x[16]-x[18]-x[20]+x[22]+x[24]-x[28]-2*x[32]-x[34]-4*x[36]-3*x[37]-2*x[38]-x[39] == 0.0)
@constraint(m, e13, x[4]+x[9]+x[14]-x[37]-2*x[38]-3*x[39]-4*x[40] == 0.0)
@constraint(m, e14, x[5]+x[10]-4*x[14] == 0.0)
@NLconstraint(m, e15, -(log(x[1]/(x[1]+x[6]+x[11]+x[15]))*x[1]+(-10.94+log(x[2]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[2]+(10.45+log(x[3]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[3]+(-15.639+log(x[4]/(x[4]+x[9]+x[14])))*x[4]+log(x[5]/(x[5]+x[10]))*x[5]+(-7.69+log(x[6]/(x[1]+x[6]+x[11]+x[15])))*x[6]+log(x[7]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[7]+log(x[8]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[8]+log(x[9]/(x[4]+x[9]+x[14]))*x[9]+(11.959+log(x[10]/(x[5]+x[10])))*x[10]+(-11.52+log(x[11]/(x[1]+x[6]+x[11]+x[15])))*x[11]+log(x[12]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[12]+(-0.5+log(x[13]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[13]+(21.81+log(x[14]/(x[4]+x[9]+x[14])))*x[14]+(-36.6+log(x[15]/(x[1]+x[6]+x[11]+x[15])))*x[15]+log(x[16]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[16]+log(x[17]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[17]+log(x[18]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[18]+log(x[19]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[19]+log(x[20]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[20]+log(x[21]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[21]+log(x[22]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[22]+(2.2435+log(x[23]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[23]+(2.5966+log(x[24]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[24]+log(x[25]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[25]+(-39.39+log(x[26]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[26]+(-39.39+log(x[27]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[27]+(-21.35+log(x[28]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[28]+(-21.49+log(x[29]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[29]+(-32.84+log(x[30]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[30]+(-32.84+log(x[31]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[31]+(6.26+log(x[32]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34])))*x[32]+(6.12+log(x[33]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[33]+log(x[34]/(x[2]+x[7]+x[12]+x[16]+x[18]+x[20]+x[22]+x[24]+x[26]+x[28]+x[30]+x[32]+x[34]))*x[34]+log(x[35]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[35]+log(x[36]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]))*x[36]+(-1.9028+log(x[37]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[37]+(-2.8889+log(x[38]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[38]+(-3.3622+log(x[39]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[39]+(-7.4854+log(x[40]/(x[3]+x[8]+x[13]+x[17]+x[19]+x[21]+x[23]+x[25]+x[27]+x[29]+x[31]+x[33]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40])))*x[40])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 