using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 1 <= i[i_Idx] <= 10, Int)
for j in 16:30
	set_lower_bound(x[j], 1e-5)
	set_upper_bound(x[j], 10)
end


# ----- Constraints ----- #
@constraint(m, e1, 1.29*i[1]+0.76*i[2]+i[3]+1.62*i[4]+1.07*i[5]+0.7*i[6]+1.88*i[7]+1.75*i[8]+1.1*i[9]+1.24*i[10]+1.17*i[11]+0.82*i[12]+1.06*i[13]+0.94*i[14]+0.46*i[15]+1.69*x[16]+0.39*x[17]+0.45*x[18]+0.34*x[19]+0.46*x[20]+1.86*x[21]+1.46*x[22]+0.98*x[23]+1.16*x[24]+0.47*x[25]+0.92*x[26]+1.43*x[27]+1.81*x[28]+1.78*x[29]+0.67*x[30]-objvar == 0.0)
@constraint(m, e2, x[32]+x[33]+x[34]+x[35]+x[36]+x[37]+x[38]+x[39]+x[40]+x[41]+x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61] <= -1.77195684190188)
@NLconstraint(m, e3, -0.028*log(i[1])-x[32] <= 0.0)
@NLconstraint(m, e4, -0.041*log(i[2])-x[33] <= 0.0)
@NLconstraint(m, e5, -0.047*log(i[3])-x[34] <= 0.0)
@NLconstraint(m, e6, -0.022*log(i[4])-x[35] <= 0.0)
@NLconstraint(m, e7, -0.041*log(i[5])-x[36] <= 0.0)
@NLconstraint(m, e8, -0.026*log(i[6])-x[37] <= 0.0)
@NLconstraint(m, e9, -0.052*log(i[7])-x[38] <= 0.0)
@NLconstraint(m, e10, -0.051*log(i[8])-x[39] <= 0.0)
@NLconstraint(m, e11, -0.016*log(i[9])-x[40] <= 0.0)
@NLconstraint(m, e12, -0.038*log(i[10])-x[41] <= 0.0)
@NLconstraint(m, e13, -0.036*log(i[11])-x[42] <= 0.0)
@NLconstraint(m, e14, -0.033*log(i[12])-x[43] <= 0.0)
@NLconstraint(m, e15, -0.054*log(i[13])-x[44] <= 0.0)
@NLconstraint(m, e16, -0.016*log(i[14])-x[45] <= 0.0)
@NLconstraint(m, e17, -0.02*log(i[15])-x[46] <= 0.0)
@NLconstraint(m, e18, -0.007*log(x[16])-x[47] <= 0.0)
@NLconstraint(m, e19, -0.058*log(x[17])-x[48] <= 0.0)
@NLconstraint(m, e20, -0.04*log(x[18])-x[49] <= 0.0)
@NLconstraint(m, e21, -0.03*log(x[19])-x[50] <= 0.0)
@NLconstraint(m, e22, -0.039*log(x[20])-x[51] <= 0.0)
@NLconstraint(m, e23, -0.034*log(x[21])-x[52] <= 0.0)
@NLconstraint(m, e24, -0.04*log(x[22])-x[53] <= 0.0)
@NLconstraint(m, e25, -0.034*log(x[23])-x[54] <= 0.0)
@NLconstraint(m, e26, -0.044*log(x[24])-x[55] <= 0.0)
@NLconstraint(m, e27, -0.032*log(x[25])-x[56] <= 0.0)
@NLconstraint(m, e28, -0.061*log(x[26])-x[57] <= 0.0)
@NLconstraint(m, e29, -0.013*log(x[27])-x[58] <= 0.0)
@NLconstraint(m, e30, -0.007*log(x[28])-x[59] <= 0.0)
@NLconstraint(m, e31, -0.007*log(x[29])-x[60] <= 0.0)
@NLconstraint(m, e32, -0.004*log(x[30])-x[61] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
