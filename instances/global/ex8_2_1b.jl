using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 6.21460809842219)
set_upper_bound(x[2], 8.41183267575841)
set_lower_bound(x[3], 6.21460809842219)
set_upper_bound(x[3], 8.41183267575841)
set_lower_bound(x[4], 6.21460809842219)
set_upper_bound(x[4], 8.41183267575841)
set_lower_bound(x[5], 160.0)
set_upper_bound(x[5], 163.752806164)
set_lower_bound(x[6], 160.0)
set_upper_bound(x[6], 163.752806164)
set_lower_bound(x[7], 160.0)
set_upper_bound(x[7], 163.752806164)
set_lower_bound(x[8], 160.0)
set_upper_bound(x[8], 163.752806164)
set_lower_bound(x[9], 160.0)
set_upper_bound(x[9], 163.752806164)
set_lower_bound(x[10], 160.0)
set_upper_bound(x[10], 178.461227596)
set_lower_bound(x[11], 160.0)
set_upper_bound(x[11], 178.461227596)
set_lower_bound(x[12], 160.0)
set_upper_bound(x[12], 178.461227596)
set_lower_bound(x[13], 160.0)
set_upper_bound(x[13], 178.461227596)
set_lower_bound(x[14], 160.0)
set_upper_bound(x[14], 178.461227596)
set_lower_bound(x[15], 160.0)
set_upper_bound(x[15], 200.0)
set_lower_bound(x[16], 160.0)
set_upper_bound(x[16], 200.0)
set_lower_bound(x[17], 160.0)
set_upper_bound(x[17], 200.0)
set_lower_bound(x[18], 160.0)
set_upper_bound(x[18], 200.0)
set_lower_bound(x[19], 160.0)
set_upper_bound(x[19], 200.0)
set_lower_bound(x[20], 160.0)
set_upper_bound(x[20], 221.538772404)
set_lower_bound(x[21], 160.0)
set_upper_bound(x[21], 221.538772404)
set_lower_bound(x[22], 160.0)
set_upper_bound(x[22], 221.538772404)
set_lower_bound(x[23], 160.0)
set_upper_bound(x[23], 221.538772404)
set_lower_bound(x[24], 160.0)
set_upper_bound(x[24], 221.538772404)
set_lower_bound(x[25], 160.0)
set_upper_bound(x[25], 236.247193836)
set_lower_bound(x[26], 160.0)
set_upper_bound(x[26], 236.247193836)
set_lower_bound(x[27], 160.0)
set_upper_bound(x[27], 236.247193836)
set_lower_bound(x[28], 160.0)
set_upper_bound(x[28], 236.247193836)
set_lower_bound(x[29], 160.0)
set_upper_bound(x[29], 236.247193836)
set_lower_bound(x[30], 60.0)
set_upper_bound(x[30], 63.752806164)
set_lower_bound(x[31], 60.0)
set_upper_bound(x[31], 78.461227596)
set_lower_bound(x[32], 60.0)
set_upper_bound(x[32], 100.0)
set_lower_bound(x[33], 60.0)
set_upper_bound(x[33], 121.538772404)
set_lower_bound(x[34], 60.0)
set_upper_bound(x[34], 136.247193836)
set_lower_bound(x[35], 60.0)
set_upper_bound(x[35], 63.752806164)
set_lower_bound(x[36], 60.0)
set_upper_bound(x[36], 78.461227596)
set_lower_bound(x[37], 60.0)
set_upper_bound(x[37], 100.0)
set_lower_bound(x[38], 60.0)
set_upper_bound(x[38], 121.538772404)
set_lower_bound(x[39], 60.0)
set_upper_bound(x[39], 136.247193836)
set_lower_bound(x[40], 60.0)
set_upper_bound(x[40], 63.752806164)
set_lower_bound(x[41], 60.0)
set_upper_bound(x[41], 78.461227596)
set_lower_bound(x[42], 60.0)
set_upper_bound(x[42], 100.0)
set_lower_bound(x[43], 60.0)
set_upper_bound(x[43], 121.538772404)
set_lower_bound(x[44], 60.0)
set_upper_bound(x[44], 136.247193836)
set_lower_bound(x[45], 60.0)
set_upper_bound(x[45], 63.752806164)
set_lower_bound(x[46], 60.0)
set_upper_bound(x[46], 78.461227596)
set_lower_bound(x[47], 60.0)
set_upper_bound(x[47], 100.0)
set_lower_bound(x[48], 60.0)
set_upper_bound(x[48], 121.538772404)
set_lower_bound(x[49], 60.0)
set_upper_bound(x[49], 136.247193836)
set_lower_bound(x[50], 60.0)
set_upper_bound(x[50], 63.752806164)
set_lower_bound(x[51], 60.0)
set_upper_bound(x[51], 78.461227596)
set_lower_bound(x[52], 60.0)
set_upper_bound(x[52], 100.0)
set_lower_bound(x[53], 60.0)
set_upper_bound(x[53], 121.538772404)
set_lower_bound(x[54], 60.0)
set_upper_bound(x[54], 136.247193836)
set_lower_bound(x[55], 4.8283137373023)
set_upper_bound(x[55], 7.02553831463852)
set_lower_bound(x[56], 4.42284862919414)
set_upper_bound(x[56], 6.62007320653036)
set_lower_bound(x[57], 0.0177777777777778)
set_upper_bound(x[57], 0.16)
set_lower_bound(x[58], 0.0213333333333333)
set_upper_bound(x[58], 0.192)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.3*(10*exp(0.6*x[2])+10*exp(0.6*x[3])+10*exp(0.6*x[4]))+objvar+1.54711033913716E-6*x[5]+0.000219040316990534*x[6]+0.00264813118267794*x[7]+0.000219040316990534*x[8]+1.54711033913716E-6*x[9]+0.000219040316990533*x[10]+0.0310117896917886*x[11]+0.374923157717238*x[12]+0.0310117896917886*x[13]+0.000219040316990532*x[14]+0.00264813118267793*x[15]+0.374923157717237*x[16]+4.5327075795914*x[17]+0.374923157717237*x[18]+0.00264813118267791*x[19]+0.000219040316990532*x[20]+0.0310117896917884*x[21]+0.374923157717236*x[22]+0.0310117896917884*x[23]+0.000219040316990531*x[24]+1.54711033913713E-6*x[25]+0.000219040316990529*x[26]+0.00264813118267789*x[27]+0.000219040316990529*x[28]+1.54711033913712E-6*x[29]+1.9690495225382E-6*x[30]+0.000278778585260679*x[31]+0.00337034877795374*x[32]+0.000278778585260679*x[33]+1.9690495225382E-6*x[34]+0.000278778585260679*x[35]+0.0394695505168218*x[36]+0.477174928003758*x[37]+0.0394695505168218*x[38]+0.000278778585260677*x[39]+0.00337034877795372*x[40]+0.477174928003756*x[41]+5.7689005558436*x[42]+0.477174928003756*x[43]+0.00337034877795371*x[44]+0.000278778585260677*x[45]+0.0394695505168216*x[46]+0.477174928003755*x[47]+0.0394695505168216*x[48]+0.000278778585260676*x[49]+1.96904952253816E-6*x[50]+0.000278778585260674*x[51]+0.00337034877795367*x[52]+0.000278778585260674*x[53]+1.96904952253816E-6*x[54] == 0.0)
@constraint(m, e2, x[2]-x[55] >= 0.693147180559945)
@constraint(m, e3, x[3]-x[55] >= 1.09861228866811)
@constraint(m, e4, x[4]-x[55] >= 1.38629436111989)
@constraint(m, e5, x[2]-x[56] >= 1.38629436111989)
@constraint(m, e6, x[3]-x[56] >= 1.79175946922805)
@constraint(m, e7, x[4]-x[56] >= 1.09861228866811)
@NLconstraint(m, e8, x[5]*x[57]+x[30]*x[58] <= 8.0)
@NLconstraint(m, e9, x[6]*x[57]+x[31]*x[58] <= 8.0)
@NLconstraint(m, e10, x[7]*x[57]+x[32]*x[58] <= 8.0)
@NLconstraint(m, e11, x[8]*x[57]+x[33]*x[58] <= 8.0)
@NLconstraint(m, e12, x[9]*x[57]+x[34]*x[58] <= 8.0)
@NLconstraint(m, e13, x[10]*x[57]+x[35]*x[58] <= 8.0)
@NLconstraint(m, e14, x[11]*x[57]+x[36]*x[58] <= 8.0)
@NLconstraint(m, e15, x[12]*x[57]+x[37]*x[58] <= 8.0)
@NLconstraint(m, e16, x[13]*x[57]+x[38]*x[58] <= 8.0)
@NLconstraint(m, e17, x[14]*x[57]+x[39]*x[58] <= 8.0)
@NLconstraint(m, e18, x[15]*x[57]+x[40]*x[58] <= 8.0)
@NLconstraint(m, e19, x[16]*x[57]+x[41]*x[58] <= 8.0)
@NLconstraint(m, e20, x[17]*x[57]+x[42]*x[58] <= 8.0)
@NLconstraint(m, e21, x[18]*x[57]+x[43]*x[58] <= 8.0)
@NLconstraint(m, e22, x[19]*x[57]+x[44]*x[58] <= 8.0)
@NLconstraint(m, e23, x[20]*x[57]+x[45]*x[58] <= 8.0)
@NLconstraint(m, e24, x[21]*x[57]+x[46]*x[58] <= 8.0)
@NLconstraint(m, e25, x[22]*x[57]+x[47]*x[58] <= 8.0)
@NLconstraint(m, e26, x[23]*x[57]+x[48]*x[58] <= 8.0)
@NLconstraint(m, e27, x[24]*x[57]+x[49]*x[58] <= 8.0)
@NLconstraint(m, e28, x[25]*x[57]+x[50]*x[58] <= 8.0)
@NLconstraint(m, e29, x[26]*x[57]+x[51]*x[58] <= 8.0)
@NLconstraint(m, e30, x[27]*x[57]+x[52]*x[58] <= 8.0)
@NLconstraint(m, e31, x[28]*x[57]+x[53]*x[58] <= 8.0)
@NLconstraint(m, e32, x[29]*x[57]+x[54]*x[58] <= 8.0)
@NLconstraint(m, e33, -exp(2.99573227355399-x[55])+x[57] == 0.0)
@NLconstraint(m, e34, -exp(2.77258872223978-x[56])+x[58] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
