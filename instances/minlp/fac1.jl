using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
b_Idx = Any[17, 18, 19, 20, 21, 22]
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
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 300.0)
setupperbound(x[2], 300.0)
setupperbound(x[3], 300.0)
setupperbound(x[4], 300.0)
setupperbound(x[5], 300.0)
setupperbound(x[6], 300.0)
setupperbound(x[7], 300.0)
setupperbound(x[8], 300.0)
setupperbound(x[9], 300.0)
setupperbound(x[10], 300.0)
setupperbound(x[11], 300.0)
setupperbound(x[12], 300.0)
setupperbound(x[13], 300.0)
setupperbound(x[14], 300.0)
setupperbound(x[15], 300.0)
setupperbound(x[16], 300.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(50*(x[1]+x[2]+x[3]+x[4]+x[9]+x[10]+x[11]+x[12])^2.5+70*(x[5]+x[6]+x[7]+x[8]+x[13]+x[14]+x[15]+x[16])^2.5+10*x[1]+15*x[2]+20*x[3]+10*x[4]+5*x[5]+5*x[6]+30*x[7]+10*x[8]+25*x[9]+20*x[10]+15*x[11]+20*x[12]+30*x[13]+10*x[14]+10*x[15]+30*x[16])-2000*b[21]-2500*b[22]+objvar == 0.0)
@constraint(m, e2, x[1]+x[3]+x[5]+x[7] <= 100.0)
@constraint(m, e3, x[2]+x[4]+x[6]+x[8] <= 200.0)
@constraint(m, e4, x[9]+x[11]+x[13]+x[15] <= 150.0)
@constraint(m, e5, x[10]+x[12]+x[14]+x[16] <= 120.0)
@constraint(m, e6, x[1]+x[9]-120*b[17] == 0.0)
@constraint(m, e7, x[2]+x[10]-140*b[17] == 0.0)
@constraint(m, e8, x[3]+x[11]-130*b[18] == 0.0)
@constraint(m, e9, x[4]+x[12]-180*b[18] == 0.0)
@constraint(m, e10, x[5]+x[13]-120*b[19] == 0.0)
@constraint(m, e11, x[6]+x[14]-140*b[19] == 0.0)
@constraint(m, e12, x[7]+x[15]-130*b[20] == 0.0)
@constraint(m, e13, x[8]+x[16]-180*b[20] == 0.0)
@constraint(m, e14, 260*b[17]+310*b[18]-2500*b[21] <= 0.0)
@constraint(m, e15, 260*b[19]+310*b[20]-3200*b[22] <= 0.0)
@constraint(m, e16, 260*b[17]+310*b[18]-50*b[21] >= 0.0)
@constraint(m, e17, 260*b[19]+310*b[20]-50*b[22] >= 0.0)
@constraint(m, e18, b[17]+b[19] == 1.0)
@constraint(m, e19, b[18]+b[20] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
