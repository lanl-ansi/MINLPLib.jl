using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, 1e-5 <= x[x_Idx] <= 10)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 1 <= i[i_Idx] <= 10, Int)


# ----- Constraints ----- #
@constraint(m, e1, 1.29*i[1]+0.76*i[2]+i[3]+1.62*i[4]+1.07*i[5]+0.7*i[6]+1.88*i[7]+1.75*i[8]+1.1*i[9]+1.24*i[10]+1.17*i[11]+0.82*i[12]+1.06*i[13]+0.94*i[14]+0.46*i[15]+1.69*x[16]+0.39*x[17]+0.45*x[18]+0.34*x[19]+0.46*x[20]+1.86*x[21]+1.46*x[22]+0.98*x[23]+1.16*x[24]+0.47*x[25]+0.92*x[26]+1.43*x[27]+1.81*x[28]+1.78*x[29]+0.67*x[30]-objvar == 0.0)
@NLconstraint(m, e2, -0.2*i[1]^0.028*i[2]^0.041*i[3]^0.047*i[4]^0.022*i[5]^0.041*i[6]^0.026*i[7]^0.052*i[8]^0.051*i[9]^0.016*i[10]^0.038*i[11]^0.036*i[12]^0.033*i[13]^0.054*i[14]^0.016*i[15]^0.02*x[16]^0.007*x[17]^0.058*x[18]^0.04*x[19]^0.03*x[20]^0.039*x[21]^0.034*x[22]^0.04*x[23]^0.034*x[24]^0.044*x[25]^0.032*x[26]^0.061*x[27]^0.013*x[28]^0.007*x[29]^0.007*x[30]^0.004 <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
