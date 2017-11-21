using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 3.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[7])^2+ ((-10)+x[8])^2- (x[1])^2 == 0.0)
@NLconstraint(m, e2,  ((-8)+x[9])^2+ ((-10)+x[10])^2- (x[1])^2 == 0.0)
@NLconstraint(m, e3,  ((-12)+x[11])^2+ ((-5)+x[12])^2- (x[1])^2 == 0.0)
@NLconstraint(m, e4,  ((-8)+x[13])^2+ (x[14])^2- (x[1])^2 == 0.0)
@NLconstraint(m, e5,  (x[15])^2+ (x[16])^2- (x[1])^2 == 0.0)
@NLconstraint(m, e6, -( ((-4)+x[17])^2+ ((-8)+x[18])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e7, -( ((-8)+x[19])^2+ ((-7)+x[20])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e8, -( ((-8)+x[21])^2+ ((-3)+x[22])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e9, -( ((-4)+x[23])^2+ ((-1)+x[24])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e10, -( ((-2)+x[25])^2+ ((-3)+x[26])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e11, -( ((-2)+x[27])^2+ ((-6)+x[28])^2- (x[1])^2) >= 0.0)
@NLconstraint(m, e12, (-(x[9]-x[7])*x[2])-x[7]+x[17] == 0.0)
@NLconstraint(m, e13, (-(x[10]-x[8])*x[2])-x[8]+x[18] == 0.0)
@NLconstraint(m, e14, (-(x[11]-x[9])*x[3])-x[9]+x[19] == 0.0)
@NLconstraint(m, e15, (-(x[12]-x[10])*x[3])-x[10]+x[20] == 0.0)
@NLconstraint(m, e16, (-(x[13]-x[11])*x[4])-x[11]+x[21] == 0.0)
@NLconstraint(m, e17, (-(x[14]-x[12])*x[4])-x[12]+x[22] == 0.0)
@NLconstraint(m, e18, (-(x[15]-x[13])*x[5])-x[13]+x[23] == 0.0)
@NLconstraint(m, e19, (-(x[16]-x[14])*x[5])-x[14]+x[24] == 0.0)
@NLconstraint(m, e20, (-(x[7]-x[15])*x[6])-x[15]+x[25] == 0.0)
@NLconstraint(m, e21, (-(x[8]-x[16])*x[6])-x[16]+x[26] == 0.0)
@NLconstraint(m, e22, (-(x[7]-x[15])*x[6])-x[15]+x[27] == 0.0)
@NLconstraint(m, e23, (-(x[8]-x[16])*x[6])-x[16]+x[28] == 0.0)
@constraint(m, e24, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
