using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, x[2]*(x[1]-x[3])+x[2]-x[13] == -1.0)
@NLconstraint(m, e2, x[3]*(x[2]-x[4])+x[3]-x[13] == -1.0)
@NLconstraint(m, e3, x[4]*(x[3]-x[5])+x[4]-x[13] == -1.0)
@NLconstraint(m, e4, x[5]*(x[4]-x[6])+x[5]-x[13] == -1.0)
@NLconstraint(m, e5, x[6]*(x[5]-x[7])+x[6]-x[13] == -1.0)
@NLconstraint(m, e6, x[7]*(x[6]-x[8])+x[7]-x[13] == -1.0)
@NLconstraint(m, e7, x[8]*(x[7]-x[9])+x[8]-x[13] == -1.0)
@NLconstraint(m, e8, x[9]*(x[8]-x[10])+x[9]-x[13] == -1.0)
@NLconstraint(m, e9, x[10]*(x[9]-x[11])+x[10]-x[13] == -1.0)
@NLconstraint(m, e10, x[11]*(x[10]-x[12])+x[11]-x[13] == -1.0)
@NLconstraint(m, e11, x[12]*(x[11]-x[13])+x[12]-x[13] == -1.0)
@NLconstraint(m, e12, x[13]*(x[12]-x[14])+x[13]-x[13] == -1.0)
@NLconstraint(m, e13, x[14]*(x[13]-x[15])+x[14]-x[13] == -1.0)
@NLconstraint(m, e14, x[15]*(x[14]-x[16])+x[15]-x[13] == -1.0)
@NLconstraint(m, e15, x[16]*(x[15]-x[17])+x[16]-x[13] == -1.0)
@NLconstraint(m, e16, x[17]*(x[16]-x[18])+x[17]-x[13] == -1.0)
@NLconstraint(m, e17, x[18]*(x[17]-x[19])+x[18]-x[13] == -1.0)
@NLconstraint(m, e18, x[19]*(x[18]-x[20])+x[19]-x[13] == -1.0)
@NLconstraint(m, e19, x[20]*(x[19]-x[21])+x[20]-x[13] == -1.0)
@NLconstraint(m, e20, x[21]*(x[20]-x[22])+x[21]-x[13] == -1.0)
@NLconstraint(m, e21, x[22]*(x[21]-x[23])+x[22]-x[13] == -1.0)
@NLconstraint(m, e22, x[23]*(x[22]-x[24])+x[23]-x[13] == -1.0)
@NLconstraint(m, e23, x[24]*(x[23]-x[25])+x[24]-x[13] == -1.0)
@NLconstraint(m, e24, x[1]-x[1]*x[2]-x[13] == -1.0)
@NLconstraint(m, e25, x[24]*x[25]+x[25]-x[13] == -1.0)
@constraint(m, e26, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
