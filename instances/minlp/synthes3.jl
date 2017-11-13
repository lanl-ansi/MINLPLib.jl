using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
b_Idx = Any[10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, b[b_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setcategory(b[12], :Bin)
setlowerbound(x[3], 0.0)
setcategory(b[14], :Bin)
setcategory(b[15], :Bin)
setcategory(b[11], :Bin)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setcategory(b[16], :Bin)
setlowerbound(x[9], 0.0)
setcategory(b[10], :Bin)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setcategory(b[17], :Bin)
setcategory(b[13], :Bin)
setupperbound(x[1], 2.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 2.0)
setupperbound(x[5], 2.0)
setupperbound(x[6], 2.0)
setupperbound(x[7], 2.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-1.5*log(1+x[5]))-log(1+x[6])-x[8] <= 0.0)
@NLconstraint(m, e2, -log(1+x[3]+x[4]) <= 0.0)
@constraint(m, e3, -x[1]-x[2]+x[3]+2*x[4]+0.8*x[5]+0.8*x[6]-0.5*x[7]-x[8]-2*x[9] <= 0.0)
@constraint(m, e4, -x[1]-x[2]+2*x[4]+0.8*x[5]+0.8*x[6]-2*x[7]-x[8]-2*x[9] <= 0.0)
@constraint(m, e5, -2*x[4]-0.8*x[5]-0.8*x[6]+2*x[7]+x[8]+2*x[9] <= 0.0)
@constraint(m, e6, -0.8*x[5]-0.8*x[6]+x[8] <= 0.0)
@constraint(m, e7, -x[4]+x[7]+x[9] <= 0.0)
@constraint(m, e8, -0.4*x[5]-0.4*x[6]+1.5*x[8] <= 0.0)
@constraint(m, e9, 0.16*x[5]+0.16*x[6]-1.2*x[8] <= 0.0)
@constraint(m, e10, x[3]-0.8*x[4] <= 0.0)
@constraint(m, e11, -x[3]+0.4*x[4] <= 0.0)
@NLconstraint(m, e12, exp(x[1])-10*b[10] <= 1.0)
@NLconstraint(m, e13, exp(0.833333*x[2])-10*b[11] <= 1.0)
@constraint(m, e14, x[7]-10*b[12] <= 0.0)
@constraint(m, e15, 0.8*x[5]+0.8*x[6]-10*b[13] <= 0.0)
@constraint(m, e16, 2*x[4]-2*x[7]-2*x[9]-10*b[14] <= 0.0)
@constraint(m, e17, x[5]-10*b[15] <= 0.0)
@constraint(m, e18, x[6]-10*b[16] <= 0.0)
@constraint(m, e19, x[3]+x[4]-10*b[17] <= 0.0)
@constraint(m, e20, b[10]+b[11] == 1.0)
@constraint(m, e21, b[13]+b[14] <= 1.0)
@constraint(m, e22, -b[13]+b[15]+b[16] == 0.0)
@constraint(m, e23, b[12]-b[17] <= 0.0)
@NLconstraint(m, e24, -(exp(x[1])-10*x[1]+exp(0.833333*x[2])-15*x[2]-65*log(1+x[3]+x[4])+15*x[3]+80*x[4]-90*log(1+x[5])+25*x[5]-80*log(1+x[6])+35*x[6])+40*x[7]-15*x[8]+35*x[9]-5*b[10]-8*b[11]-6*b[12]-10*b[13]-6*b[14]-7*b[15]-4*b[16]-5*b[17]+objvar == 120.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
