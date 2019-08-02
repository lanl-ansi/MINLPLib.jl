using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
@variable(m, 1e-5 <= x[x_Idx] <= 10)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 1 <= i[i_Idx] <= 10, Int)


# ----- Constraints ----- #
@constraint(m, e1, 1.5*i[1]+0.51*i[2]+1.01*i[3]+1.4*i[4]+1.78*i[5]+1.92*i[6]+1.09*i[7]+0.48*i[8]+0.67*i[9]+0.52*i[10]+1.68*x[11]+0.51*x[12]+1.63*x[13]+0.49*x[14]+1.86*x[15]+0.7*x[16]+0.39*x[17]+0.5*x[18]+1.23*x[19]+0.95*x[20]-objvar == 0.0)
@constraint(m, e2, x[21]+x[22]+x[23]+x[24]+x[25]+x[26]+x[27]+x[28]+x[29]+x[30]+x[31]+x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40] <= -1.6094379124341)
@NLconstraint(m, e3, -0.065*log(i[1])-x[21] <= 0.0)
@NLconstraint(m, e4, -0.004*log(i[2])-x[22] <= 0.0)
@NLconstraint(m, e5, -0.084*log(i[3])-x[23] <= 0.0)
@NLconstraint(m, e6, -0.093*log(i[4])-x[24] <= 0.0)
@NLconstraint(m, e7, -0.06*log(i[5])-x[25] <= 0.0)
@NLconstraint(m, e8, -0.075*log(i[6])-x[26] <= 0.0)
@NLconstraint(m, e9, -0.074*log(i[7])-x[27] <= 0.0)
@NLconstraint(m, e10, -0.039*log(i[8])-x[28] <= 0.0)
@NLconstraint(m, e11, -0.065*log(i[9])-x[29] <= 0.0)
@NLconstraint(m, e12, -0.017*log(i[10])-x[30] <= 0.0)
@NLconstraint(m, e13, -0.07*log(x[11])-x[31] <= 0.0)
@NLconstraint(m, e14, -0.03*log(x[12])-x[32] <= 0.0)
@NLconstraint(m, e15, -0.028*log(x[13])-x[33] <= 0.0)
@NLconstraint(m, e16, -0.005*log(x[14])-x[34] <= 0.0)
@NLconstraint(m, e17, -0.01*log(x[15])-x[35] <= 0.0)
@NLconstraint(m, e18, -0.082*log(x[16])-x[36] <= 0.0)
@NLconstraint(m, e19, -0.069*log(x[17])-x[37] <= 0.0)
@NLconstraint(m, e20, -0.032*log(x[18])-x[38] <= 0.0)
@NLconstraint(m, e21, -0.095*log(x[19])-x[39] <= 0.0)
@NLconstraint(m, e22, -0.003*log(x[20])-x[40] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
