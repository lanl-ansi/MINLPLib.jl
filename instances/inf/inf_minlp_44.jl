using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[25]
@variable(m, x[x_Idx])
i_Idx = Any[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
@variable(m, i[i_Idx] <= 100, Int)


# ----- Constraints ----- #
@constraint(m, e1, i[13] >= 0.0)
@constraint(m, e2, i[14] >= 0.0)
@constraint(m, e3, i[15] >= 0.0)
@constraint(m, e4, i[16] >= 0.0)
@constraint(m, e5, i[17] >= 0.0)
@constraint(m, e6, i[18] >= 0.0)
@constraint(m, e7, i[19] >= 0.0)
@constraint(m, e8, i[20] >= 0.0)
@constraint(m, e9, i[21] >= 0.0)
@constraint(m, e10, i[22] >= 0.0)
@constraint(m, e11, i[23] >= 0.0)
@constraint(m, e12, i[24] >= 0.0)
@constraint(m, e13, b[1]+b[7] <= 1.0)
@constraint(m, e14, b[2]+b[8] <= 1.0)
@constraint(m, e15, b[3]+b[9] <= 1.0)
@constraint(m, e16, b[4]+b[10] <= 1.0)
@constraint(m, e17, b[5]+b[11] <= 1.0)
@constraint(m, e18, b[6]+b[12] <= 1.0)
@NLconstraint(m, e19, i[13]*b[1] <= 5000.0)
@NLconstraint(m, e20, i[14]*b[2] <= 5000.0)
@NLconstraint(m, e21, i[15]*b[3] <= 5000.0)
@NLconstraint(m, e22, i[16]*b[4] <= 5000.0)
@NLconstraint(m, e23, i[17]*b[5] <= 5000.0)
@NLconstraint(m, e24, i[18]*b[6] <= 5000.0)
@constraint(m, e25, -7500*b[1]-7500*b[7]+i[13] <= 0.0)
@constraint(m, e26, -7500*b[2]-7500*b[8]+i[14] <= 0.0)
@constraint(m, e27, -7500*b[3]-7500*b[9]+i[15] <= 0.0)
@constraint(m, e28, -7500*b[4]-7500*b[10]+i[16] <= 0.0)
@constraint(m, e29, -7500*b[5]-7500*b[11]+i[17] <= 0.0)
@constraint(m, e30, -7500*b[6]-7500*b[12]+i[18] <= 0.0)
@constraint(m, e31, -2000*b[1]-2000*b[7]+i[13] >= 0.0)
@constraint(m, e32, -2000*b[2]-2000*b[8]+i[14] >= 0.0)
@constraint(m, e33, -2000*b[3]-2000*b[9]+i[15] >= 0.0)
@constraint(m, e34, -2000*b[4]-2000*b[10]+i[16] >= 0.0)
@constraint(m, e35, -2000*b[5]-2000*b[11]+i[17] >= 0.0)
@constraint(m, e36, -2000*b[6]-2000*b[12]+i[18] >= 0.0)
@constraint(m, e37, i[13]-i[19] == 3000.0)
@constraint(m, e38, i[14]+i[19]-i[20] == 6500.0)
@constraint(m, e39, i[15]+i[20]-i[21] == 7500.0)
@constraint(m, e40, i[16]+i[21]-i[22] == 7000.0)
@constraint(m, e41, i[17]+i[22]-i[23] == 6000.0)
@constraint(m, e42, i[18]+i[23]-i[24] == 6000.0)
@constraint(m, e43, i[24] >= 2000.0)
@constraint(m, e44, -100000*b[1]-100000*b[2]-100000*b[3]-100000*b[4]-100000*b[5]-100000*b[6]-180000*b[7]-180000*b[8]-180000*b[9]-180000*b[10]-180000*b[11]-180000*b[12]-2*i[19]-2*i[20]-2*i[21]-2*i[22]-2*i[23]-2*i[24]+x[25] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[25])

 
