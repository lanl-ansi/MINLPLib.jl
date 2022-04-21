using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[2], 0.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -sqrt( (x[3]-x[1])^2+ (x[4]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e2, -sqrt( (x[5]-x[1])^2+ (x[6]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e3, -sqrt( (x[5]-x[3])^2+ (x[6]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e4, -sqrt( (x[7]-x[1])^2+ (x[8]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e5, -sqrt( (x[7]-x[3])^2+ (x[8]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e6, -sqrt( (x[7]-x[5])^2+ (x[8]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e7, -sqrt( (x[9]-x[1])^2+ (x[10]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e8, -sqrt( (x[9]-x[3])^2+ (x[10]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e9, -sqrt( (x[9]-x[5])^2+ (x[10]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e10, -sqrt( (x[9]-x[7])^2+ (x[10]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e11, -sqrt( (x[11]-x[1])^2+ (x[12]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e12, -sqrt( (x[11]-x[3])^2+ (x[12]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e13, -sqrt( (x[11]-x[5])^2+ (x[12]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e14, -sqrt( (x[11]-x[7])^2+ (x[12]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e15, -sqrt( (x[11]-x[9])^2+ (x[12]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e16, -sqrt( (x[13]-x[1])^2+ (x[14]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e17, -sqrt( (x[13]-x[3])^2+ (x[14]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e18, -sqrt( (x[13]-x[5])^2+ (x[14]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e19, -sqrt( (x[13]-x[7])^2+ (x[14]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e20, -sqrt( (x[13]-x[9])^2+ (x[14]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e21, -sqrt( (x[13]-x[11])^2+ (x[14]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e22, -sqrt( (x[15]-x[1])^2+ (x[16]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e23, -sqrt( (x[15]-x[3])^2+ (x[16]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e24, -sqrt( (x[15]-x[5])^2+ (x[16]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e25, -sqrt( (x[15]-x[7])^2+ (x[16]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e26, -sqrt( (x[15]-x[9])^2+ (x[16]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e27, -sqrt( (x[15]-x[11])^2+ (x[16]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e28, -sqrt( (x[15]-x[13])^2+ (x[16]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e29, -sqrt( (x[17]-x[1])^2+ (x[18]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e30, -sqrt( (x[17]-x[3])^2+ (x[18]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e31, -sqrt( (x[17]-x[5])^2+ (x[18]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e32, -sqrt( (x[17]-x[7])^2+ (x[18]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e33, -sqrt( (x[17]-x[9])^2+ (x[18]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e34, -sqrt( (x[17]-x[11])^2+ (x[18]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e35, -sqrt( (x[17]-x[13])^2+ (x[18]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e36, -sqrt( (x[17]-x[15])^2+ (x[18]-x[16])^2)-objvar <= 0.0)
@NLconstraint(m, e37, -sqrt( (x[19]-x[1])^2+ (x[20]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e38, -sqrt( (x[19]-x[3])^2+ (x[20]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e39, -sqrt( (x[19]-x[5])^2+ (x[20]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e40, -sqrt( (x[19]-x[7])^2+ (x[20]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e41, -sqrt( (x[19]-x[9])^2+ (x[20]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e42, -sqrt( (x[19]-x[11])^2+ (x[20]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e43, -sqrt( (x[19]-x[13])^2+ (x[20]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e44, -sqrt( (x[19]-x[15])^2+ (x[20]-x[16])^2)-objvar <= 0.0)
@NLconstraint(m, e45, -sqrt( (x[19]-x[17])^2+ (x[20]-x[18])^2)-objvar <= 0.0)
@NLconstraint(m, e46, -sqrt( (x[21]-x[1])^2+ (x[22]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e47, -sqrt( (x[21]-x[3])^2+ (x[22]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e48, -sqrt( (x[21]-x[5])^2+ (x[22]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e49, -sqrt( (x[21]-x[7])^2+ (x[22]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e50, -sqrt( (x[21]-x[9])^2+ (x[22]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e51, -sqrt( (x[21]-x[11])^2+ (x[22]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e52, -sqrt( (x[21]-x[13])^2+ (x[22]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e53, -sqrt( (x[21]-x[15])^2+ (x[22]-x[16])^2)-objvar <= 0.0)
@NLconstraint(m, e54, -sqrt( (x[21]-x[17])^2+ (x[22]-x[18])^2)-objvar <= 0.0)
@NLconstraint(m, e55, -sqrt( (x[21]-x[19])^2+ (x[22]-x[20])^2)-objvar <= 0.0)
@NLconstraint(m, e56, -sqrt( (x[23]-x[1])^2+ (x[24]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e57, -sqrt( (x[23]-x[3])^2+ (x[24]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e58, -sqrt( (x[23]-x[5])^2+ (x[24]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e59, -sqrt( (x[23]-x[7])^2+ (x[24]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e60, -sqrt( (x[23]-x[9])^2+ (x[24]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e61, -sqrt( (x[23]-x[11])^2+ (x[24]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e62, -sqrt( (x[23]-x[13])^2+ (x[24]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e63, -sqrt( (x[23]-x[15])^2+ (x[24]-x[16])^2)-objvar <= 0.0)
@NLconstraint(m, e64, -sqrt( (x[23]-x[17])^2+ (x[24]-x[18])^2)-objvar <= 0.0)
@NLconstraint(m, e65, -sqrt( (x[23]-x[19])^2+ (x[24]-x[20])^2)-objvar <= 0.0)
@NLconstraint(m, e66, -sqrt( (x[23]-x[21])^2+ (x[24]-x[22])^2)-objvar <= 0.0)
@NLconstraint(m, e67, -sqrt( (x[25]-x[1])^2+ (x[26]-x[2])^2)-objvar <= 0.0)
@NLconstraint(m, e68, -sqrt( (x[25]-x[3])^2+ (x[26]-x[4])^2)-objvar <= 0.0)
@NLconstraint(m, e69, -sqrt( (x[25]-x[5])^2+ (x[26]-x[6])^2)-objvar <= 0.0)
@NLconstraint(m, e70, -sqrt( (x[25]-x[7])^2+ (x[26]-x[8])^2)-objvar <= 0.0)
@NLconstraint(m, e71, -sqrt( (x[25]-x[9])^2+ (x[26]-x[10])^2)-objvar <= 0.0)
@NLconstraint(m, e72, -sqrt( (x[25]-x[11])^2+ (x[26]-x[12])^2)-objvar <= 0.0)
@NLconstraint(m, e73, -sqrt( (x[25]-x[13])^2+ (x[26]-x[14])^2)-objvar <= 0.0)
@NLconstraint(m, e74, -sqrt( (x[25]-x[15])^2+ (x[26]-x[16])^2)-objvar <= 0.0)
@NLconstraint(m, e75, -sqrt( (x[25]-x[17])^2+ (x[26]-x[18])^2)-objvar <= 0.0)
@NLconstraint(m, e76, -sqrt( (x[25]-x[19])^2+ (x[26]-x[20])^2)-objvar <= 0.0)
@NLconstraint(m, e77, -sqrt( (x[25]-x[21])^2+ (x[26]-x[22])^2)-objvar <= 0.0)
@NLconstraint(m, e78, -sqrt( (x[25]-x[23])^2+ (x[26]-x[24])^2)-objvar <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 