using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-4*x[2]-x[3]+5*x[4]+4*x[5]+2*x[6]+x[7]+8*x[8]-3*x[9]-4*x[10]+9*x[11] == 0.0)
@constraint(m, e2, x[7] <= 1.0)
@constraint(m, e3, x[8] <= 1.0)
@constraint(m, e4, x[9] <= 1.0)
@constraint(m, e5, x[10] <= 1.0)
@constraint(m, e6, x[11] <= 1.0)
@constraint(m, e7, 2*x[7]+x[8]+5*x[9]-2*x[10]-5*x[11] >= 0.0)
@constraint(m, e8, 3*x[7]-x[8]-4*x[9]+3*x[10]+4*x[11] >= 2.0)
@constraint(m, e9, x[7]-3*x[8]-3*x[9]-4*x[11] >= -5.0)
@constraint(m, e10, -5*x[7]-2*x[8]+3*x[9]+2*x[10]+3*x[11] >= 0.0)
@constraint(m, e11, -5*x[8]+2*x[9]-2*x[11] >= -3.0)
@constraint(m, e12, x[7]-x[8]+5*x[9]+x[10]+3*x[11] >= 4.0)
@constraint(m, e13, -5*x[7]-2*x[8]-4*x[9]-2*x[10]+3*x[11] >= -5.5)
@constraint(m, e14, -3*x[8]+3*x[9]+2*x[10]-3*x[11] >= -1.0)
@constraint(m, e15, x[7]-x[8]-5*x[9]+4*x[10]+3*x[11] >= 0.5)
@constraint(m, e16, 4*x[7]-x[8]+5*x[10]+5*x[11] >= 6.0)
@constraint(m, e17, 3*x[7]+2*x[8]+2*x[9]+4*x[10]+5*x[11] >= 15.0)
@constraint(m, e18, 5*x[7]+3*x[8]+5*x[9]+3*x[10]+2*x[11] >= 17.0)
@constraint(m, e19, 3*x[7]+2*x[8]+5*x[9]+2*x[10]+2*x[11] >= 13.0)
@constraint(m, e20, 4*x[7]+3*x[8]+5*x[9]+2*x[10]+3*x[11] >= 16.0)
@constraint(m, e21, 5*x[7]+4*x[8]+3*x[9]+3*x[10]+3*x[11] >= 17.0)
@constraint(m, e22, 4*x[7]+4*x[8]+5*x[9]+3*x[10]+4*x[11] >= 19.0)
@constraint(m, e23, 4*x[7]+4*x[8]+4*x[9]+4*x[10]+2*x[11] >= 17.0)
@constraint(m, e24, 3*x[7]+5*x[8]+2*x[9]+5*x[10]+5*x[11] >= 19.0)
@constraint(m, e25, 4*x[7]+4*x[8]+3*x[9]+2*x[10]+2*x[11] >= 14.0)
@constraint(m, e26, 3*x[7]+3*x[8]+5*x[9]+5*x[10]+5*x[11] >= 20.0)
@constraint(m, e27, x[2]+x[7]-3*x[12]-5*x[13]-3*x[14]-4*x[15]-5*x[16]-4*x[17]-4*x[18]-3*x[19]-4*x[20]-3*x[21] == 0.0)
@constraint(m, e28, x[3]+x[8]-2*x[12]-3*x[13]-2*x[14]-3*x[15]-4*x[16]-4*x[17]-4*x[18]-5*x[19]-4*x[20]-3*x[21] == 0.0)
@constraint(m, e29, x[4]+x[9]-2*x[12]-5*x[13]-5*x[14]-5*x[15]-3*x[16]-5*x[17]-4*x[18]-2*x[19]-3*x[20]-5*x[21] == 0.0)
@constraint(m, e30, x[5]+x[10]-4*x[12]-3*x[13]-2*x[14]-2*x[15]-3*x[16]-3*x[17]-4*x[18]-5*x[19]-2*x[20]-5*x[21] == 0.0)
@constraint(m, e31, x[6]+x[11]-5*x[12]-2*x[13]-2*x[14]-3*x[15]-3*x[16]-4*x[17]-2*x[18]-5*x[19]-2*x[20]-5*x[21] == 0.0)
@NLconstraint(m, e32, x[12]*(3*x[7]+2*x[8]+2*x[9]+4*x[10]+5*x[11])+x[13]*(5*x[7]+3*x[8]+5*x[9]+3*x[10]+2*x[11])+x[14]*(3*x[7]+2*x[8]+5*x[9]+2*x[10]+2*x[11])+x[15]*(4*x[7]+3*x[8]+5*x[9]+2*x[10]+3*x[11])+x[16]*(5*x[7]+4*x[8]+3*x[9]+3*x[10]+3*x[11])+x[17]*(4*x[7]+4*x[8]+5*x[9]+3*x[10]+4*x[11])+x[18]*(4*x[7]+4*x[8]+4*x[9]+4*x[10]+2*x[11])+x[19]*(3*x[7]+5*x[8]+2*x[9]+5*x[10]+5*x[11])+x[20]*(4*x[7]+4*x[8]+3*x[9]+2*x[10]+2*x[11])+x[21]*(3*x[7]+3*x[8]+5*x[9]+5*x[10]+5*x[11]) == 167.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
