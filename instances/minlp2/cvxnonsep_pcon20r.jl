using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, 0 <= x[x_Idx] <= 5)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx] <= 5, Int)


# ----- Constraints ----- #
@constraint(m, e1, 0.53*i[1]+0.65*i[2]+0.49*i[3]+0.82*i[4]+0.88*i[5]+0.97*i[6]+0.53*i[7]+0.33*i[8]+0.11*i[9]+0.61*i[10]+0.78*x[11]+0.09*x[12]+0.27*x[13]+0.15*x[14]+0.28*x[15]+0.44*x[16]+0.53*x[17]+0.46*x[18]+0.88*x[19]+0.15*x[20]+objvar == 0.0)
@constraint(m, e2, x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40] <= 240.0)
@NLconstraint(m, e3, 2^(i[1]+i[2])-x[22] <= 0.0)
@NLconstraint(m, e4, 2^(i[2]+i[3])-x[23] <= 0.0)
@NLconstraint(m, e5, 2^(i[3]+i[4])-x[24] <= 0.0)
@NLconstraint(m, e6, 2^(i[4]+i[5])-x[25] <= 0.0)
@NLconstraint(m, e7, 2^(i[5]+i[6])-x[26] <= 0.0)
@NLconstraint(m, e8, 2^(i[6]+i[7])-x[27] <= 0.0)
@NLconstraint(m, e9, 2^(i[7]+i[8])-x[28] <= 0.0)
@NLconstraint(m, e10, 2^(i[8]+i[9])-x[29] <= 0.0)
@NLconstraint(m, e11, 2^(i[9]+i[10])-x[30] <= 0.0)
@NLconstraint(m, e12, 2^(i[10]+x[11])-x[31] <= 0.0)
@NLconstraint(m, e13, 2^(x[11]+x[12])-x[32] <= 0.0)
@NLconstraint(m, e14, 2^(x[12]+x[13])-x[33] <= 0.0)
@NLconstraint(m, e15, 2^(x[13]+x[14])-x[34] <= 0.0)
@NLconstraint(m, e16, 2^(x[14]+x[15])-x[35] <= 0.0)
@NLconstraint(m, e17, 2^(x[15]+x[16])-x[36] <= 0.0)
@NLconstraint(m, e18, 2^(x[16]+x[17])-x[37] <= 0.0)
@NLconstraint(m, e19, 2^(x[17]+x[18])-x[38] <= 0.0)
@NLconstraint(m, e20, 2^(x[18]+x[19])-x[39] <= 0.0)
@NLconstraint(m, e21, 2^(x[19]+x[20])-x[40] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
