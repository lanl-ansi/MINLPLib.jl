using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 25, 26, 27, 34, 35, 36]
@variable(m, x[x_Idx])
b_Idx = Any[19, 20, 21, 22, 23, 24, 28, 29, 30, 31, 32, 33, 37, 38, 39]
@variable(m, b[b_Idx], Bin)
set_lower_bound(x[36], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[34], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[35], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 80.0)
set_upper_bound(x[2], 25.0)
set_upper_bound(x[3], 45.0)
set_upper_bound(x[4], 2950.0)
set_upper_bound(x[5], 2950.0)
set_upper_bound(x[6], 2950.0)
set_upper_bound(x[7], 400.0)
set_upper_bound(x[8], 400.0)
set_upper_bound(x[9], 400.0)
set_upper_bound(x[10], 350.0)
set_upper_bound(x[11], 350.0)
set_upper_bound(x[12], 350.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 3.0)
set_upper_bound(x[17], 3.0)
set_upper_bound(x[18], 3.0)
set_upper_bound(x[25], 3.0)
set_upper_bound(x[26], 3.0)
set_upper_bound(x[27], 3.0)
set_upper_bound(x[34], 1.0)
set_upper_bound(x[35], 1.0)
set_upper_bound(x[36], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((6329.03+1800*x[1])*x[16]*x[25]*x[34]+(2489.31+1800*x[2])*x[17]*x[26]*x[35]+(3270.27+1800*x[3])*x[18]*x[27]*x[36])+objvar == 0.0)
@NLconstraint(m, e2, (-19.9* (0.000338983050847458*x[4])^3)-0.161* (0.000338983050847458*x[4])^2*x[10]+1.90169491525424e-7*x[4]* (x[10])^2+x[1] == 0.0)
@NLconstraint(m, e3, (-1.21* (0.000338983050847458*x[5])^3)-0.0644* (0.000338983050847458*x[5])^2*x[11]+1.91186440677966e-7*x[5]* (x[11])^2+x[2] == 0.0)
@NLconstraint(m, e4, (-6.52* (0.000338983050847458*x[6])^3)-0.102* (0.000338983050847458*x[6])^2*x[12]+7.86440677966102e-8*x[6]* (x[12])^2+x[3] == 0.0)
@NLconstraint(m, e5, (-0.00023593220338983*x[4]*x[10])-629* (0.000338983050847458*x[4])^2+0.0116* (x[10])^2+x[7] == 0.0)
@NLconstraint(m, e6, (-0.001*x[5]*x[11])-215* (0.000338983050847458*x[5])^2+0.115* (x[11])^2+x[8] == 0.0)
@NLconstraint(m, e7, (-0.000179661016949153*x[6]*x[12])-361* (0.000338983050847458*x[6])^2+0.00946* (x[12])^2+x[9] == 0.0)
@constraint(m, e8, x[13]+x[14]+x[15] == 1.0)
@NLconstraint(m, e9, 0.00285714285714286*x[10]*x[16]-x[13] == 0.0)
@NLconstraint(m, e10, 0.00285714285714286*x[11]*x[17]-x[14] == 0.0)
@NLconstraint(m, e11, 0.00285714285714286*x[12]*x[18]-x[15] == 0.0)
@NLconstraint(m, e12, 0.0025*x[7]*x[25]-x[34] == 0.0)
@NLconstraint(m, e13, 0.0025*x[8]*x[26]-x[35] == 0.0)
@NLconstraint(m, e14, 0.0025*x[9]*x[27]-x[36] == 0.0)
@constraint(m, e15, 0.000338983050847458*x[4]-x[34] <= 0.0)
@constraint(m, e16, 0.000338983050847458*x[5]-x[35] <= 0.0)
@constraint(m, e17, 0.000338983050847458*x[6]-x[36] <= 0.0)
@constraint(m, e18, 0.0125*x[1]-x[34] <= 0.0)
@constraint(m, e19, 0.04*x[2]-x[35] <= 0.0)
@constraint(m, e20, 0.0222222222222222*x[3]-x[36] <= 0.0)
@constraint(m, e21, 0.0025*x[7]-x[34] <= 0.0)
@constraint(m, e22, 0.0025*x[8]-x[35] <= 0.0)
@constraint(m, e23, 0.0025*x[9]-x[36] <= 0.0)
@constraint(m, e24, 0.00285714285714286*x[10]-x[34] <= 0.0)
@constraint(m, e25, 0.00285714285714286*x[11]-x[35] <= 0.0)
@constraint(m, e26, 0.00285714285714286*x[12]-x[36] <= 0.0)
@constraint(m, e27, x[13]-x[34] <= 0.0)
@constraint(m, e28, x[14]-x[35] <= 0.0)
@constraint(m, e29, x[15]-x[36] <= 0.0)
@constraint(m, e30, x[16]-3*x[34] <= 0.0)
@constraint(m, e31, x[17]-3*x[35] <= 0.0)
@constraint(m, e32, x[18]-3*x[36] <= 0.0)
@constraint(m, e33, x[25]-3*x[34] <= 0.0)
@constraint(m, e34, x[26]-3*x[35] <= 0.0)
@constraint(m, e35, x[27]-3*x[36] <= 0.0)
@constraint(m, e36, x[16]-b[19]-2*b[20] == 0.0)
@constraint(m, e37, x[17]-b[21]-2*b[22] == 0.0)
@constraint(m, e38, x[18]-b[23]-2*b[24] == 0.0)
@constraint(m, e39, x[25]-b[28]-2*b[29] == 0.0)
@constraint(m, e40, x[26]-b[30]-2*b[31] == 0.0)
@constraint(m, e41, x[27]-b[32]-2*b[33] == 0.0)
@constraint(m, e42, x[34]-b[37] == 0.0)
@constraint(m, e43, x[35]-b[38] == 0.0)
@constraint(m, e44, x[36]-b[39] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 