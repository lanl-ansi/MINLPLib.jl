using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81]
@variable(m, 0 <= x[x_Idx] <= 5)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, i[i_Idx] <= 5, Int)


# ----- Constraints ----- #
@constraint(m, e1, x[42]+x[43]+x[44]+x[45]+x[46]+x[47]+x[48]+x[49]+x[50]+x[51]+x[52]+x[53]+x[54]+x[55]+x[56]+x[57]+x[58]+x[59]+x[60]+x[61]+x[62]+x[63]+x[64]+x[65]+x[66]+x[67]+x[68]+x[69]+x[70]+x[71]+x[72]+x[73]+x[74]+x[75]+x[76]+x[77]+x[78]+x[79]+x[80]+x[81] <= 99.9999)
@constraint(m, e2, -0.64*i[1]-0.38*i[2]-0.19*i[3]-0.43*i[4]-0.48*i[5]-0.12*i[6]-0.59*i[7]-0.23*i[8]-0.38*i[9]-0.85*i[10]-0.25*i[11]-0.29*i[12]-0.62*i[13]-0.82*i[14]-0.27*i[15]-0.98*i[16]-0.73*i[17]-0.34*i[18]-0.58*i[19]-0.11*i[20]-0.91*x[21]-0.88*x[22]-0.82*x[23]-0.26*x[24]-0.02*x[25]-0.43*x[26]-0.31*x[27]-0.59*x[28]-0.16*x[29]-0.18*x[30]-0.42*x[31]-0.09*x[32]-0.6*x[33]-0.47*x[34]-0.7*x[35]-0.7*x[36]-0.64*x[37]-0.03*x[38]-0.07*x[39]-0.32*x[40]-objvar == 0.0)
@NLconstraint(m, e3,  (i[1])^2-x[42] <= 0.0)
@NLconstraint(m, e4,  (i[2])^2-x[43] <= 0.0)
@NLconstraint(m, e5,  (i[3])^2-x[44] <= 0.0)
@NLconstraint(m, e6,  (i[4])^2-x[45] <= 0.0)
@NLconstraint(m, e7,  (i[5])^2-x[46] <= 0.0)
@NLconstraint(m, e8,  (i[6])^2-x[47] <= 0.0)
@NLconstraint(m, e9,  (i[7])^2-x[48] <= 0.0)
@NLconstraint(m, e10,  (i[8])^2-x[49] <= 0.0)
@NLconstraint(m, e11,  (i[9])^2-x[50] <= 0.0)
@NLconstraint(m, e12,  (i[10])^2-x[51] <= 0.0)
@NLconstraint(m, e13,  (i[11])^2-x[52] <= 0.0)
@NLconstraint(m, e14,  (i[12])^2-x[53] <= 0.0)
@NLconstraint(m, e15,  (i[13])^2-x[54] <= 0.0)
@NLconstraint(m, e16,  (i[14])^2-x[55] <= 0.0)
@NLconstraint(m, e17,  (i[15])^2-x[56] <= 0.0)
@NLconstraint(m, e18,  (i[16])^2-x[57] <= 0.0)
@NLconstraint(m, e19,  (i[17])^2-x[58] <= 0.0)
@NLconstraint(m, e20,  (i[18])^2-x[59] <= 0.0)
@NLconstraint(m, e21,  (i[19])^2-x[60] <= 0.0)
@NLconstraint(m, e22,  (i[20])^2-x[61] <= 0.0)
@NLconstraint(m, e23,  (x[21])^2-x[62] <= 0.0)
@NLconstraint(m, e24,  (x[22])^2-x[63] <= 0.0)
@NLconstraint(m, e25,  (x[23])^2-x[64] <= 0.0)
@NLconstraint(m, e26,  (x[24])^2-x[65] <= 0.0)
@NLconstraint(m, e27,  (x[25])^2-x[66] <= 0.0)
@NLconstraint(m, e28,  (x[26])^2-x[67] <= 0.0)
@NLconstraint(m, e29,  (x[27])^2-x[68] <= 0.0)
@NLconstraint(m, e30,  (x[28])^2-x[69] <= 0.0)
@NLconstraint(m, e31,  (x[29])^2-x[70] <= 0.0)
@NLconstraint(m, e32,  (x[30])^2-x[71] <= 0.0)
@NLconstraint(m, e33,  (x[31])^2-x[72] <= 0.0)
@NLconstraint(m, e34,  (x[32])^2-x[73] <= 0.0)
@NLconstraint(m, e35,  (x[33])^2-x[74] <= 0.0)
@NLconstraint(m, e36,  (x[34])^2-x[75] <= 0.0)
@NLconstraint(m, e37,  (x[35])^2-x[76] <= 0.0)
@NLconstraint(m, e38,  (x[36])^2-x[77] <= 0.0)
@NLconstraint(m, e39,  (x[37])^2-x[78] <= 0.0)
@NLconstraint(m, e40,  (x[38])^2-x[79] <= 0.0)
@NLconstraint(m, e41,  (x[39])^2-x[80] <= 0.0)
@NLconstraint(m, e42,  (x[40])^2-x[81] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
