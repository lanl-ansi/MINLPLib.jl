using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 387.9)
set_upper_bound(x[1], 387.9)
set_lower_bound(x[9], 85.3)
set_upper_bound(x[9], 85.3)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5*((-24.24375+0.0625*x[1])*(-387.9+x[1])+(-85.3+x[9])*(-85.3+x[9])+(-24.425578125+0.0625*x[2])*(-390.80925+x[2])+(-85.93975+x[10])*(-85.93975+x[10])+(-24.6087699609375+0.0625*x[3])*(-393.740319375+x[3])+(-86.584298125+x[11])*(-86.584298125+x[11])+(-24.7933357356445+0.0625*x[4])*(-396.693371770313+x[4])+(-87.2336803609375+x[12])*(-87.2336803609375+x[12])+(-24.9792857536619+0.0625*x[5])*(-399.66857205859+x[5])+(-87.8879329636445+x[13])*(-87.8879329636445+x[13])+(-25.1666303968143+0.0625*x[6])*(-402.666086349029+x[6])+(-88.5470924608719+x[14])*(-88.5470924608719+x[14])+(-25.3553801247904+0.0625*x[7])*(-405.686081996647+x[7])+(-89.2111956543284+x[15])*(-89.2111956543284+x[15])+(-2554.55454757264+6.25*x[8])*(-408.728727611622+x[8])+(-8988.02796217359+100*x[16])*(-89.8802796217359+x[16]))+0.5*((-110.5+x[17])*(-110.5+x[17])+(-65.3124+0.444*x[24])*(-147.1+x[24])+(-111.32875+x[18])*(-111.32875+x[18])+(-65.802243+0.444*x[25])*(-148.20325+x[25])+(-112.163715625+x[19])*(-112.163715625+x[19])+(-66.2957598225+0.444*x[26])*(-149.314774375+x[26])+(-113.004943492188+x[20])*(-113.004943492188+x[20])+(-66.7929780211688+0.444*x[27])*(-150.434635182813+x[27])+(-113.852480568379+x[21])*(-113.852480568379+x[21])+(-67.2939253563275+0.444*x[28])*(-151.562894946684+x[28])+(-114.706374172642+x[22])*(-114.706374172642+x[22])+(-67.7986297965+0.444*x[29])*(-152.699616658784+x[29])+(-115.566671978937+x[23])*(-115.566671978937+x[23])+(-68.3071195199738+0.444*x[30])*(-153.844863783725+x[30])))+objvar == 0.0)
@constraint(m, e2, -0.914*x[1]+x[2]+0.016*x[9]-0.305*x[17]-0.424*x[24] == -59.4)
@constraint(m, e3, -0.914*x[2]+x[3]+0.016*x[10]-0.305*x[18]-0.424*x[25] == -59.4)
@constraint(m, e4, -0.914*x[3]+x[4]+0.016*x[11]-0.305*x[19]-0.424*x[26] == -59.4)
@constraint(m, e5, -0.914*x[4]+x[5]+0.016*x[12]-0.305*x[20]-0.424*x[27] == -59.4)
@constraint(m, e6, -0.914*x[5]+x[6]+0.016*x[13]-0.305*x[21]-0.424*x[28] == -59.4)
@constraint(m, e7, -0.914*x[6]+x[7]+0.016*x[14]-0.305*x[22]-0.424*x[29] == -59.4)
@constraint(m, e8, -0.914*x[7]+x[8]+0.016*x[15]-0.305*x[23]-0.424*x[30] == -59.4)
@constraint(m, e9, -0.097*x[1]-0.424*x[9]+x[10]+0.101*x[17]-1.459*x[24] == -184.7)
@constraint(m, e10, -0.097*x[2]-0.424*x[10]+x[11]+0.101*x[18]-1.459*x[25] == -184.7)
@constraint(m, e11, -0.097*x[3]-0.424*x[11]+x[12]+0.101*x[19]-1.459*x[26] == -184.7)
@constraint(m, e12, -0.097*x[4]-0.424*x[12]+x[13]+0.101*x[20]-1.459*x[27] == -184.7)
@constraint(m, e13, -0.097*x[5]-0.424*x[13]+x[14]+0.101*x[21]-1.459*x[28] == -184.7)
@constraint(m, e14, -0.097*x[6]-0.424*x[14]+x[15]+0.101*x[22]-1.459*x[29] == -184.7)
@constraint(m, e15, -0.097*x[7]-0.424*x[15]+x[16]+0.101*x[23]-1.459*x[30] == -184.7)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 