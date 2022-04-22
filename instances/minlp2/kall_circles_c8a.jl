using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[20], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[1], 0.49)
set_upper_bound(x[1], 16.8)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 7.5)
set_lower_bound(x[3], 0.5)
set_upper_bound(x[3], 1.6)
set_lower_bound(x[4], 0.5)
set_upper_bound(x[4], 7.5)
set_lower_bound(x[5], 0.5)
set_upper_bound(x[5], 1.6)
set_lower_bound(x[6], 0.5)
set_upper_bound(x[6], 7.5)
set_lower_bound(x[7], 0.5)
set_upper_bound(x[7], 1.6)
set_lower_bound(x[8], 0.5)
set_upper_bound(x[8], 7.5)
set_lower_bound(x[9], 0.5)
set_upper_bound(x[9], 1.6)
set_lower_bound(x[10], 0.5)
set_upper_bound(x[10], 7.5)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 1.6)
set_lower_bound(x[12], 0.5)
set_upper_bound(x[12], 7.5)
set_lower_bound(x[13], 0.5)
set_upper_bound(x[13], 1.6)
set_lower_bound(x[14], 0.5)
set_upper_bound(x[14], 7.5)
set_lower_bound(x[15], 0.5)
set_upper_bound(x[15], 1.6)
set_lower_bound(x[16], 0.5)
set_upper_bound(x[16], 7.5)
set_lower_bound(x[17], 0.5)
set_upper_bound(x[17], 1.6)
set_lower_bound(x[18], 0.7)
set_upper_bound(x[18], 7.3)
set_lower_bound(x[19], 0.7)
set_upper_bound(x[19], 1.4)
set_upper_bound(x[20], 8.0)
set_upper_bound(x[21], 2.1)
set_lower_bound(objvar, 0.0)
set_upper_bound(objvar, 16.8)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -7.82256570743859)
@NLconstraint(m, e2, -x[20]*x[21]+x[1] == 0.0)
@NLconstraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 1.0)
@NLconstraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 1.0)
@NLconstraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 1.0)
@NLconstraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 1.0)
@NLconstraint(m, e7, (x[2]-x[12])*(x[2]-x[12])+(x[3]-x[13])*(x[3]-x[13]) >= 1.0)
@NLconstraint(m, e8, (x[2]-x[14])*(x[2]-x[14])+(x[3]-x[15])*(x[3]-x[15]) >= 1.0)
@NLconstraint(m, e9, (x[2]-x[16])*(x[2]-x[16])+(x[3]-x[17])*(x[3]-x[17]) >= 1.0)
@NLconstraint(m, e10, (x[2]-x[18])*(x[2]-x[18])+(x[3]-x[19])*(x[3]-x[19]) >= 1.44)
@NLconstraint(m, e11, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.0)
@NLconstraint(m, e12, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 1.0)
@NLconstraint(m, e13, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.0)
@NLconstraint(m, e14, (x[4]-x[12])*(x[4]-x[12])+(x[5]-x[13])*(x[5]-x[13]) >= 1.0)
@NLconstraint(m, e15, (x[4]-x[14])*(x[4]-x[14])+(x[5]-x[15])*(x[5]-x[15]) >= 1.0)
@NLconstraint(m, e16, (x[4]-x[16])*(x[4]-x[16])+(x[5]-x[17])*(x[5]-x[17]) >= 1.0)
@NLconstraint(m, e17, (x[4]-x[18])*(x[4]-x[18])+(x[5]-x[19])*(x[5]-x[19]) >= 1.44)
@NLconstraint(m, e18, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 1.0)
@NLconstraint(m, e19, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.0)
@NLconstraint(m, e20, (x[6]-x[12])*(x[6]-x[12])+(x[7]-x[13])*(x[7]-x[13]) >= 1.0)
@NLconstraint(m, e21, (x[6]-x[14])*(x[6]-x[14])+(x[7]-x[15])*(x[7]-x[15]) >= 1.0)
@NLconstraint(m, e22, (x[6]-x[16])*(x[6]-x[16])+(x[7]-x[17])*(x[7]-x[17]) >= 1.0)
@NLconstraint(m, e23, (x[6]-x[18])*(x[6]-x[18])+(x[7]-x[19])*(x[7]-x[19]) >= 1.44)
@NLconstraint(m, e24, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 1.0)
@NLconstraint(m, e25, (x[8]-x[12])*(x[8]-x[12])+(x[9]-x[13])*(x[9]-x[13]) >= 1.0)
@NLconstraint(m, e26, (x[8]-x[14])*(x[8]-x[14])+(x[9]-x[15])*(x[9]-x[15]) >= 1.0)
@NLconstraint(m, e27, (x[8]-x[16])*(x[8]-x[16])+(x[9]-x[17])*(x[9]-x[17]) >= 1.0)
@NLconstraint(m, e28, (x[8]-x[18])*(x[8]-x[18])+(x[9]-x[19])*(x[9]-x[19]) >= 1.44)
@NLconstraint(m, e29, (x[10]-x[12])*(x[10]-x[12])+(x[11]-x[13])*(x[11]-x[13]) >= 1.0)
@NLconstraint(m, e30, (x[10]-x[14])*(x[10]-x[14])+(x[11]-x[15])*(x[11]-x[15]) >= 1.0)
@NLconstraint(m, e31, (x[10]-x[16])*(x[10]-x[16])+(x[11]-x[17])*(x[11]-x[17]) >= 1.0)
@NLconstraint(m, e32, (x[10]-x[18])*(x[10]-x[18])+(x[11]-x[19])*(x[11]-x[19]) >= 1.44)
@NLconstraint(m, e33, (x[12]-x[14])*(x[12]-x[14])+(x[13]-x[15])*(x[13]-x[15]) >= 1.0)
@NLconstraint(m, e34, (x[12]-x[16])*(x[12]-x[16])+(x[13]-x[17])*(x[13]-x[17]) >= 1.0)
@NLconstraint(m, e35, (x[12]-x[18])*(x[12]-x[18])+(x[13]-x[19])*(x[13]-x[19]) >= 1.44)
@NLconstraint(m, e36, (x[14]-x[16])*(x[14]-x[16])+(x[15]-x[17])*(x[15]-x[17]) >= 1.0)
@NLconstraint(m, e37, (x[14]-x[18])*(x[14]-x[18])+(x[15]-x[19])*(x[15]-x[19]) >= 1.44)
@NLconstraint(m, e38, (x[16]-x[18])*(x[16]-x[18])+(x[17]-x[19])*(x[17]-x[19]) >= 1.44)
@constraint(m, e39, x[2]-x[20] <= -0.5)
@constraint(m, e40, x[3]-x[21] <= -0.5)
@constraint(m, e41, x[4]-x[20] <= -0.5)
@constraint(m, e42, x[5]-x[21] <= -0.5)
@constraint(m, e43, x[6]-x[20] <= -0.5)
@constraint(m, e44, x[7]-x[21] <= -0.5)
@constraint(m, e45, x[8]-x[20] <= -0.5)
@constraint(m, e46, x[9]-x[21] <= -0.5)
@constraint(m, e47, x[10]-x[20] <= -0.5)
@constraint(m, e48, x[11]-x[21] <= -0.5)
@constraint(m, e49, x[12]-x[20] <= -0.5)
@constraint(m, e50, x[13]-x[21] <= -0.5)
@constraint(m, e51, x[14]-x[20] <= -0.5)
@constraint(m, e52, x[15]-x[21] <= -0.5)
@constraint(m, e53, x[16]-x[20] <= -0.5)
@constraint(m, e54, x[17]-x[21] <= -0.5)
@constraint(m, e55, x[18]-x[20] <= -0.7)
@constraint(m, e56, x[19]-x[21] <= -0.7)
@constraint(m, e57, x[2] <= 4.0)
@constraint(m, e58, x[3] <= 1.05)
@constraint(m, e59, x[2]-x[4] <= 0.0)
@constraint(m, e60, x[2]-x[6] <= 0.0)
@constraint(m, e61, x[2]-x[8] <= 0.0)
@constraint(m, e62, x[2]-x[10] <= 0.0)
@constraint(m, e63, x[2]-x[12] <= 0.0)
@constraint(m, e64, x[2]-x[14] <= 0.0)
@constraint(m, e65, x[2]-x[16] <= 0.0)
@constraint(m, e66, x[4]-x[6] <= 0.0)
@constraint(m, e67, x[4]-x[8] <= 0.0)
@constraint(m, e68, x[4]-x[10] <= 0.0)
@constraint(m, e69, x[4]-x[12] <= 0.0)
@constraint(m, e70, x[4]-x[14] <= 0.0)
@constraint(m, e71, x[4]-x[16] <= 0.0)
@constraint(m, e72, x[6]-x[8] <= 0.0)
@constraint(m, e73, x[6]-x[10] <= 0.0)
@constraint(m, e74, x[6]-x[12] <= 0.0)
@constraint(m, e75, x[6]-x[14] <= 0.0)
@constraint(m, e76, x[6]-x[16] <= 0.0)
@constraint(m, e77, x[8]-x[10] <= 0.0)
@constraint(m, e78, x[8]-x[12] <= 0.0)
@constraint(m, e79, x[8]-x[14] <= 0.0)
@constraint(m, e80, x[8]-x[16] <= 0.0)
@constraint(m, e81, x[10]-x[12] <= 0.0)
@constraint(m, e82, x[10]-x[14] <= 0.0)
@constraint(m, e83, x[10]-x[16] <= 0.0)
@constraint(m, e84, x[12]-x[14] <= 0.0)
@constraint(m, e85, x[12]-x[16] <= 0.0)
@constraint(m, e86, x[14]-x[16] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
