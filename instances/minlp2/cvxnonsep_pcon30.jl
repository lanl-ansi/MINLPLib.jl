using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, 0 <= x[x_Idx] <= 5)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, 0 <= i[i_Idx] <= 5, Int)

# ----- Constraints ----- #
@constraint(m, e1, 0.52*i[1]+0.94*i[2]+0.64*i[3]+0.96*i[4]+0.24*i[5]+0.68*i[6]+0.29*i[7]+0.67*i[8]+0.7*i[9]+0.07*i[10]+0.25*i[11]+0.22*i[12]+0.67*i[13]+0.84*i[14]+0.34*i[15]+0.78*x[16]+0.68*x[17]+0.01*x[18]+0.6*x[19]+0.39*x[20]+0.92*x[21]+0.1*x[22]+0.46*x[23]+0.77*x[24]+0.32*x[25]+0.78*x[26]+0.37*x[27]+0.78*x[28]+0.47*x[29]+0.04*x[30]+objvar == 0.0)
@NLconstraint(m, e2,  (2^(i[1]+i[2])+2^(i[2]+i[3])+2^(i[3]+i[4])+2^(i[4]+i[5])+2^(i[5]+i[6])+2^(i[6]+i[7])+2^(i[7]+i[8])+2^(i[8]+i[9])+2^(i[9]+i[10])+2^(i[10]+i[11])+2^(i[11]+i[12])+2^(i[12]+i[13])+2^(i[13]+i[14])+2^(i[14]+i[15])+2^(i[15]+x[16])+2^(x[16]+x[17])+2^(x[17]+x[18])+2^(x[18]+x[19])+2^(x[19]+x[20])+2^(x[20]+x[21])+2^(x[21]+x[22])+2^(x[22]+x[23])+2^(x[23]+x[24])+2^(x[24]+x[25])+2^(x[25]+x[26])+2^(x[26]+x[27])+2^(x[27]+x[28])+2^(x[28]+x[29])+2^(x[29]+x[30]))^2 <= 129600.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
