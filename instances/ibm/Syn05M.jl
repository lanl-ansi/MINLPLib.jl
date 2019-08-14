using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
b_Idx = Any[17, 18, 19, 20, 21]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 10.0)
setupperbound(x[13], 7.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-5*x[8]+2*x[13]-200*x[14]-250*x[15]-300*x[16]+5*b[17]+8*b[18]+6*b[19]+10*b[20]+6*b[21] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@NLconstraint(m, e6, -log(1+x[3])+x[5]+b[17] <= 1.0)
@constraint(m, e7, x[3]-10*b[17] <= 0.0)
@constraint(m, e8, x[5]-2.39789527279837*b[17] <= 0.0)
@NLconstraint(m, e9, -1.2*log(1+x[4])+x[6]+b[18] <= 1.0)
@constraint(m, e10, x[4]-10*b[18] <= 0.0)
@constraint(m, e11, x[6]-2.87747432735804*b[18] <= 0.0)
@constraint(m, e12, -0.75*x[10]+x[14]+b[19] <= 1.0)
@constraint(m, e13, -0.75*x[10]+x[14]-b[19] >= -1.0)
@constraint(m, e14, x[10]-2.87747432735804*b[19] <= 0.0)
@constraint(m, e15, x[14]-2.15810574551853*b[19] <= 0.0)
@NLconstraint(m, e16, -1.5*log(1+x[11])+x[15]+b[20] <= 1.0)
@constraint(m, e17, x[11]-2.87747432735804*b[20] <= 0.0)
@constraint(m, e18, x[15]-2.03277599268042*b[20] <= 0.0)
@constraint(m, e19, -x[12]+x[16]+b[21] <= 1.0)
@constraint(m, e20, -x[12]+x[16]-b[21] >= -1.0)
@constraint(m, e21, -0.5*x[13]+x[16]+b[21] <= 1.0)
@constraint(m, e22, -0.5*x[13]+x[16]-b[21] >= -1.0)
@constraint(m, e23, x[12]-2.87747432735804*b[21] <= 0.0)
@constraint(m, e24, x[13]-7*b[21] <= 0.0)
@constraint(m, e25, x[16]-3.5*b[21] <= 0.0)
@constraint(m, e26, b[17]+b[18] == 1.0)
@constraint(m, e27, b[17]+b[18]-b[19] >= 0.0)
@constraint(m, e28, b[17]+b[18]-b[20] >= 0.0)
@constraint(m, e29, b[17]+b[18]-b[21] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, x[1])

m = m 		 # model get returned when including this script. 
