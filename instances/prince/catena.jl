using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)
set_lower_bound(x[12], 6.6)
set_upper_bound(x[12], 6.6)
set_lower_bound(x[13], 0.0)
set_upper_bound(x[13], 0.0)
set_lower_bound(x[25], 0.0)
set_upper_bound(x[25], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[2]-x[1])^2+ (x[14]-x[13])^2+ (x[26]-x[25])^2 == 1.0)
@NLconstraint(m, e2,  (x[3]-x[2])^2+ (x[15]-x[14])^2+ (x[27]-x[26])^2 == 1.0)
@NLconstraint(m, e3,  (x[4]-x[3])^2+ (x[16]-x[15])^2+ (x[28]-x[27])^2 == 1.0)
@NLconstraint(m, e4,  (x[5]-x[4])^2+ (x[17]-x[16])^2+ (x[29]-x[28])^2 == 1.0)
@NLconstraint(m, e5,  (x[6]-x[5])^2+ (x[18]-x[17])^2+ (x[30]-x[29])^2 == 1.0)
@NLconstraint(m, e6,  (x[7]-x[6])^2+ (x[19]-x[18])^2+ (x[31]-x[30])^2 == 1.0)
@NLconstraint(m, e7,  (x[8]-x[7])^2+ (x[20]-x[19])^2+ (x[32]-x[31])^2 == 1.0)
@NLconstraint(m, e8,  (x[9]-x[8])^2+ (x[21]-x[20])^2+ (x[33]-x[32])^2 == 1.0)
@NLconstraint(m, e9,  (x[10]-x[9])^2+ (x[22]-x[21])^2+ (x[34]-x[33])^2 == 1.0)
@NLconstraint(m, e10,  (x[11]-x[10])^2+ (x[23]-x[22])^2+ (x[35]-x[34])^2 == 1.0)
@NLconstraint(m, e11,  (x[12]-x[11])^2+ (x[24]-x[23])^2+ (x[36]-x[35])^2 == 1.0)
@constraint(m, e12, -222.954545454545*x[13]-445.909090909091*x[14]-445.909090909091*x[15]-445.909090909091*x[16]-445.909090909091*x[17]-445.909090909091*x[18]-445.909090909091*x[19]-445.909090909091*x[20]-445.909090909091*x[21]-445.909090909091*x[22]-445.909090909091*x[23]-222.954545454545*x[24]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.