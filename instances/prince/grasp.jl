using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 1.0e-5)
set_lower_bound(x[2], 1.0e-5)
set_lower_bound(x[3], 1.0e-5)
set_lower_bound(x[4], 1.0e-5)
set_lower_bound(x[5], 1.0e-5)
set_lower_bound(x[36], -1.0)
set_upper_bound(x[36], 1.0)
set_lower_bound(x[37], -1.0)
set_upper_bound(x[37], 1.0)
set_lower_bound(x[38], -1.0)
set_upper_bound(x[38], 1.0)
set_lower_bound(x[39], -1.0)
set_upper_bound(x[39], 1.0)
set_lower_bound(x[40], -1.0)
set_upper_bound(x[40], 1.0)
set_lower_bound(x[41], -1.0)
set_upper_bound(x[41], 1.0)
set_lower_bound(x[42], -1.0)
set_upper_bound(x[42], 1.0)
set_lower_bound(x[43], -1.0)
set_upper_bound(x[43], 1.0)
set_lower_bound(x[44], -1.0)
set_upper_bound(x[44], 1.0)
set_lower_bound(x[45], -1.0)
set_upper_bound(x[45], 1.0)
set_lower_bound(x[46], -1.0)
set_upper_bound(x[46], 1.0)
set_lower_bound(x[47], -1.0)
set_upper_bound(x[47], 1.0)
set_lower_bound(x[48], -1.0)
set_upper_bound(x[48], 1.0)
set_lower_bound(x[49], -1.0)
set_upper_bound(x[49], 1.0)
set_lower_bound(x[50], -1.0)
set_upper_bound(x[50], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+0.493101233652021*x[36]+0.770039499372672*x[41]-0.404833722380856*x[46] == 0.0)
@constraint(m, e2, x[2]-0.55062183431401*x[37]+0.635828267772141*x[42]-0.540867829953449*x[47] == 0.0)
@constraint(m, e3, x[3]-0.55062183431401*x[38]-0.635828267772141*x[43]-0.540867829953449*x[48] == 0.0)
@constraint(m, e4, x[4]+0.493101233652021*x[39]-0.770039499372672*x[44]-0.404833722380856*x[49] == 0.0)
@constraint(m, e5, x[5]+0.93334560620306*x[40]-1.75843224564379E-16*x[45]-0.358979079308869*x[50] == 0.0)
@constraint(m, e6, -0.493101233652021*x[1]+x[6]-x[36] == 0.0)
@constraint(m, e7, 0.55062183431401*x[2]+x[7]-x[37] == 0.0)
@constraint(m, e8, 0.55062183431401*x[3]+x[8]-x[38] == 0.0)
@constraint(m, e9, -0.493101233652021*x[4]+x[9]-x[39] == 0.0)
@constraint(m, e10, -0.93334560620306*x[5]+x[10]-x[40] == 0.0)
@constraint(m, e11, -0.770039499372672*x[1]+x[11]-x[41] == 0.0)
@constraint(m, e12, -0.635828267772141*x[2]+x[12]-x[42] == 0.0)
@constraint(m, e13, 0.635828267772141*x[3]+x[13]-x[43] == 0.0)
@constraint(m, e14, 0.770039499372672*x[4]+x[14]-x[44] == 0.0)
@constraint(m, e15, 1.75843224564379E-16*x[5]+x[15]-x[45] == 0.0)
@constraint(m, e16, 0.404833722380856*x[1]+x[16]-x[46] == 0.0)
@constraint(m, e17, 0.540867829953449*x[2]+x[17]-x[47] == 0.0)
@constraint(m, e18, 0.540867829953449*x[3]+x[18]-x[48] == 0.0)
@constraint(m, e19, 0.404833722380856*x[4]+x[19]-x[49] == 0.0)
@constraint(m, e20, 0.358979079308869*x[5]+x[20]-x[50] == 0.0)
@constraint(m, e21, x[21]+1.27541019662497*x[41]-0.951056516295154*x[46] == 0.0)
@constraint(m, e22, x[22]+0.604589803375032*x[42]-0.587785252292473*x[47] == 0.0)
@constraint(m, e23, x[23]+0.604589803375032*x[43]+0.587785252292473*x[48] == 0.0)
@constraint(m, e24, x[24]+1.27541019662497*x[44]+0.951056516295154*x[49] == 0.0)
@constraint(m, e25, x[25]+1.69*x[45]+2.44921270764475E-16*x[50] == 0.0)
@constraint(m, e26, x[26]-1.27541019662497*x[36]+0.609016994374947*x[46] == 0.0)
@constraint(m, e27, x[27]-0.604589803375032*x[37]-0.509016994374947*x[47] == 0.0)
@constraint(m, e28, x[28]-0.604589803375032*x[38]-0.509016994374948*x[48] == 0.0)
@constraint(m, e29, x[29]-1.27541019662497*x[39]+0.609016994374947*x[49] == 0.0)
@constraint(m, e30, x[30]-1.69*x[40]+1.3*x[50] == 0.0)
@constraint(m, e31, x[31]+0.951056516295154*x[36]-0.609016994374947*x[41] == 0.0)
@constraint(m, e32, x[32]+0.587785252292473*x[37]+0.509016994374947*x[42] == 0.0)
@constraint(m, e33, x[33]-0.587785252292473*x[38]+0.509016994374948*x[43] == 0.0)
@constraint(m, e34, x[34]-0.951056516295154*x[39]-0.609016994374947*x[44] == 0.0)
@constraint(m, e35, x[35]-2.44921270764475E-16*x[40]-1.3*x[45] == 0.0)
@constraint(m, e36, -x[1]+objvar >= 0.0)
@constraint(m, e37, -x[2]+objvar >= 0.0)
@constraint(m, e38, -x[3]+objvar >= 0.0)
@constraint(m, e39, -x[4]+objvar >= 0.0)
@constraint(m, e40, -x[5]+objvar >= 0.0)
@NLconstraint(m, e41, sqrt(sqrt( (x[6])^2+ (x[11])^2+ (x[16])^2))-sqrt(0.3*x[1]) <= 0.0)
@NLconstraint(m, e42, sqrt(sqrt( (x[7])^2+ (x[12])^2+ (x[17])^2))-sqrt(0.3*x[2]) <= 0.0)
@NLconstraint(m, e43, sqrt(sqrt( (x[8])^2+ (x[13])^2+ (x[18])^2))-sqrt(0.3*x[3]) <= 0.0)
@NLconstraint(m, e44, sqrt(sqrt( (x[9])^2+ (x[14])^2+ (x[19])^2))-sqrt(0.3*x[4]) <= 0.0)
@NLconstraint(m, e45, sqrt(sqrt( (x[10])^2+ (x[15])^2+ (x[20])^2))-sqrt(0.3*x[5]) <= 0.0)
@constraint(m, e46, x[36]+x[37]+x[38]+x[39]+x[40] == 0.0)
@constraint(m, e47, x[41]+x[42]+x[43]+x[44]+x[45] == 0.0)
@constraint(m, e48, x[46]+x[47]+x[48]+x[49]+x[50] == 1.0)
@constraint(m, e49, x[21]+x[22]+x[23]+x[24]+x[25] == 0.0)
@constraint(m, e50, x[26]+x[27]+x[28]+x[29]+x[30] == 0.0)
@constraint(m, e51, x[31]+x[32]+x[33]+x[34]+x[35] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
