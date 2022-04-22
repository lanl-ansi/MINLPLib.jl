using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 62]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[3]*x[3]+0.5*(exp(x[2])+exp(-x[2]))+2*x[1]*x[1]*x[3]-2*x[3])+x[6]+objvar >= 0.0)
@NLconstraint(m, e2, -(x[6]*x[6]+0.5*(exp(x[5])+exp(-x[5]))+2*x[4]*x[4]*x[6]-2*x[6])-x[1]+x[9]+objvar >= 0.0)
@NLconstraint(m, e3, -(x[9]*x[9]+0.5*(exp(x[8])+exp(-x[8]))+2*x[7]*x[7]*x[9]-2*x[9])-x[4]+x[12]+objvar >= 0.0)
@NLconstraint(m, e4, -(x[12]*x[12]+0.5*(exp(x[11])+exp(-x[11]))+2*x[10]*x[10]*x[12]-2*x[12])-x[7]+x[15]+objvar >= 0.0)
@NLconstraint(m, e5, -(x[15]*x[15]+0.5*(exp(x[14])+exp(-x[14]))+2*x[13]*x[13]*x[15]-2*x[15])-x[10]+x[18]+objvar >= 0.0)
@NLconstraint(m, e6, -(x[18]*x[18]+0.5*(exp(x[17])+exp(-x[17]))+2*x[16]*x[16]*x[18]-2*x[18])-x[13]+x[21]+objvar >= 0.0)
@NLconstraint(m, e7, -(x[21]*x[21]+0.5*(exp(x[20])+exp(-x[20]))+2*x[19]*x[19]*x[21]-2*x[21])-x[16]+x[24]+objvar >= 0.0)
@NLconstraint(m, e8, -(x[24]*x[24]+0.5*(exp(x[23])+exp(-x[23]))+2*x[22]*x[22]*x[24]-2*x[24])-x[19]+x[27]+objvar >= 0.0)
@NLconstraint(m, e9, -(x[27]*x[27]+0.5*(exp(x[26])+exp(-x[26]))+2*x[25]*x[25]*x[27]-2*x[27])-x[22]+x[30]+objvar >= 0.0)
@NLconstraint(m, e10, -(x[30]*x[30]+0.5*(exp(x[29])+exp(-x[29]))+2*x[28]*x[28]*x[30]-2*x[30])-x[25]+x[33]+objvar >= 0.0)
@NLconstraint(m, e11, -(x[33]*x[33]+0.5*(exp(x[32])+exp(-x[32]))+2*x[31]*x[31]*x[33]-2*x[33])-x[28]+x[36]+objvar >= 0.0)
@NLconstraint(m, e12, -(x[36]*x[36]+0.5*(exp(x[35])+exp(-x[35]))+2*x[34]*x[34]*x[36]-2*x[36])-x[31]+x[39]+objvar >= 0.0)
@NLconstraint(m, e13, -(x[39]*x[39]+0.5*(exp(x[38])+exp(-x[38]))+2*x[37]*x[37]*x[39]-2*x[39])-x[34]+x[42]+objvar >= 0.0)
@NLconstraint(m, e14, -(x[42]*x[42]+0.5*(exp(x[41])+exp(-x[41]))+2*x[40]*x[40]*x[42]-2*x[42])-x[37]+x[45]+objvar >= 0.0)
@NLconstraint(m, e15, -(x[45]*x[45]+0.5*(exp(x[44])+exp(-x[44]))+2*x[43]*x[43]*x[45]-2*x[45])-x[40]+x[48]+objvar >= 0.0)
@NLconstraint(m, e16, -(x[48]*x[48]+0.5*(exp(x[47])+exp(-x[47]))+2*x[46]*x[46]*x[48]-2*x[48])-x[43]+x[51]+objvar >= 0.0)
@NLconstraint(m, e17, -(x[51]*x[51]+0.5*(exp(x[50])+exp(-x[50]))+2*x[49]*x[49]*x[51]-2*x[51])-x[46]+x[54]+objvar >= 0.0)
@NLconstraint(m, e18, -(x[54]*x[54]+0.5*(exp(x[53])+exp(-x[53]))+2*x[52]*x[52]*x[54]-2*x[54])-x[49]+x[57]+objvar >= 0.0)
@NLconstraint(m, e19, -(x[57]*x[57]+0.5*(exp(x[56])+exp(-x[56]))+2*x[55]*x[55]*x[57]-2*x[57])-x[52]+x[60]+objvar >= 0.0)
@NLconstraint(m, e20, -(x[60]*x[60]+0.5*(exp(x[59])+exp(-x[59]))+2*x[58]*x[58]*x[60]-2*x[60])-x[55]+objvar >= 0.0)
@constraint(m, e21, -objvar+x[62] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
