using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, i[i_Idx], Int)
set_upper_bound(i[1], 14.0)
set_upper_bound(i[2], 14.0)
set_upper_bound(i[3], 14.0)
set_upper_bound(i[4], 14.0)
set_upper_bound(i[5], 14.0)
set_upper_bound(i[6], 14.0)
set_upper_bound(i[7], 14.0)
set_upper_bound(i[8], 14.0)
set_upper_bound(i[9], 14.0)
set_upper_bound(i[10], 14.0)
set_upper_bound(i[11], 14.0)
set_upper_bound(i[12], 14.0)
set_upper_bound(i[13], 14.0)
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 0.0)
set_upper_bound(i[15], 14.0)
set_upper_bound(i[16], 14.0)
set_upper_bound(i[17], 14.0)
set_upper_bound(i[18], 14.0)
set_upper_bound(i[19], 14.0)
set_lower_bound(x[20], 1.0)
set_upper_bound(x[20], 1000.0)
set_lower_bound(x[21], 1.0)
set_upper_bound(x[21], 1000.0)
set_lower_bound(x[22], 1.0)
set_upper_bound(x[22], 100.0)
set_lower_bound(x[23], 1.0)
set_upper_bound(x[23], 32.2)
set_lower_bound(x[24], 1.0)
set_upper_bound(x[24], 100.0)
set_lower_bound(x[25], 18.4)
set_upper_bound(x[25], 100.0)
set_lower_bound(x[26], 1.4)
set_upper_bound(x[26], 14.0)
set_lower_bound(x[27], 1.4)
set_upper_bound(x[27], 14.0)
set_lower_bound(x[28], 0.001)
set_upper_bound(x[28], 1.0)
set_lower_bound(x[29], 0.001)
set_upper_bound(x[29], 1.0)
set_lower_bound(x[30], 0.001)
set_upper_bound(x[30], 1.0)
set_lower_bound(x[31], 0.001)
set_upper_bound(x[31], 1.0)
set_lower_bound(x[32], 0.001)
set_upper_bound(x[32], 1.0)
set_lower_bound(x[33], 0.001)
set_upper_bound(x[33], 10.0)
set_lower_bound(x[34], 0.001)
set_upper_bound(x[34], 10.0)
set_lower_bound(x[35], -10.0)
set_upper_bound(x[35], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, 23.58*i[1]+22.88*i[2]+21.74*i[3]+18.25*i[4]-0.03*i[5]+38.13*i[6]+66.86*i[7]+93.84*i[8]+92.88*i[9]+76.34*i[10]+22.42*i[11]+31.22*i[12]+73.23*i[13]+50.17*i[14]+52.82*i[15]+11.74*i[16]+63.56*i[17]+68.78*i[18]+52.1*i[19]-x[20] == -198.2)
@NLconstraint(m, e2, -x[20]/(0.584+0.0136065*i[1]- (0.0141*i[1]+0.0189*i[2]+0.0164*i[3]+0.0067*i[4]+0.0111*i[5]+0.0105*i[6]+0.0133*i[7]+0.0068*i[8]+0.0741*i[9]+0.0204*i[10]+0.0168*i[11]+0.0098*i[12]+0.0243*i[13]+0.0295*i[14]+0.013*i[15]+0.0169*i[16]+0.0031*i[17]+0.0119*i[18]+0.0019*i[19])^2+0.0182385*i[2]+0.015826*i[3]+0.0064655*i[4]+0.0107115*i[5]+0.0101325*i[6]+0.0128345*i[7]+0.006562*i[8]+0.0715065*i[9]+0.02316*i[10]+0.016212*i[11]+0.009457*i[12]+0.0234495*i[13]+0.0284675*i[14]+0.012545*i[15]+0.0163085*i[16]+0.0029915*i[17]+0.0114835*i[18]+0.0018335*i[19])+x[21] == 0.0)
@NLconstraint(m, e3, -1/(0.113+0.014*i[1]+0.0096*i[2]+0.0044*i[3]-0.0011*i[4]+0.0089*i[5]+0.0081*i[6]-0.0025*i[7]+0.0066*i[8]-0.0048*i[9]-0.012*i[10]+0.0017*i[11]-0.0016*i[12]-0.0013*i[13]-0.0013*i[14]-0.005*i[15]-0.0042*i[16]-0.002*i[17]-0.0017*i[18]-0.0019*i[19])^2+x[22] == 0.0)
@constraint(m, e4, 8.8*i[1]+7.26*i[2]+5*i[3]+1.76*i[4]+4*i[5]+8.6*i[6]+9*i[7]+8.6*i[8]+10.7*i[9]+10.7*i[10]+8.4*i[11]+8.4*i[12]+14*i[13]+10.5*i[14]+10.5*i[15]+7.5*i[16]+10.7*i[17]+8*i[18]+8*i[19]-x[23] == 0.0)
@constraint(m, e5, 2.373*i[1]+2.226*i[2]+1.691*i[3]+0.636*i[4]-0.67*i[5]+4.532*i[6]+6.582*i[7]+9.52*i[8]+16.826*i[9]+12.499*i[10]+2.41*i[11]+4.682*i[12]+10.788*i[13]+6.436*i[14]+6.93*i[15]+1.896*i[16]+6.884*i[17]+6.817*i[18]+5.984*i[19]-x[24] == -15.3)
@NLconstraint(m, e6, -x[20]/x[21]+x[32] == 0.0)
@NLconstraint(m, e7, -272.04/x[21]+x[30] == 0.0)
@NLconstraint(m, e8, -316.48/x[21]+x[31] == 0.0)
@NLconstraint(m, e9, -x[32]*log(x[22])/(1-x[32])+x[33] == 0.0)
@constraint(m, e10, -0.4605*x[33]+x[34] == 0.4835)
@NLconstraint(m, e11, -(x[33]-(1+x[32])*x[34])/(3+x[32])/ (1-x[32])^2/x[34]+x[35] == 0.0)
@NLconstraint(m, e12, -exp(-x[34]*(1+x[35]*(3+x[30])* (1-x[30])^3- (x[30])^2)/x[30])+x[28] == 0.0)
@NLconstraint(m, e13, -exp(-x[34]*(1+x[35]*(3+x[31])* (1-x[31])^3- (x[31])^2)/x[31])+x[29] == 0.0)
@NLconstraint(m, e14, -x[28]*x[22]+x[26] == 0.0)
@NLconstraint(m, e15, -x[29]*x[22]+x[27] == 0.0)
@NLconstraint(m, e16, -x[24]*((1-x[30])/(1-x[32]))^0.38+x[25] == 0.0)
@constraint(m, e17, i[1]-i[3]-2*i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[13]-i[16]+i[17] == 2.0)
@constraint(m, e18, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+i[16]+i[17]+i[18]+i[19] >= 2.0)
@NLconstraint(m, e19, x[25]/x[23]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
