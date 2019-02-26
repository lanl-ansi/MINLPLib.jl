using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
b_Idx = Any[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, b[b_Idx])
set_binary(b[27])
set_binary(b[18])
set_binary(b[12])
set_binary(b[14])
set_binary(b[8])
set_binary(b[15])
set_binary(b[20])
set_binary(b[11])
set_binary(b[19])
set_binary(b[29])
set_binary(b[25])
set_binary(b[7])
set_binary(b[9])
set_binary(b[24])
set_binary(b[23])
set_binary(b[16])
set_binary(b[10])
set_binary(b[17])
set_binary(b[6])
set_binary(b[21])
set_binary(b[26])
set_binary(b[28])
set_binary(b[13])
set_binary(b[22])
set_lower_bound(x[2], 12.0)
set_upper_bound(x[2], 60.0)
set_lower_bound(x[3], 12.0)
set_upper_bound(x[3], 60.0)
set_lower_bound(x[4], 12.0)
set_upper_bound(x[4], 60.0)
set_lower_bound(x[5], 12.0)
set_upper_bound(x[5], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-x[2]*x[3]/(x[4]*x[5]))^2+objvar == 0.0)
@constraint(m, e2, x[2]-b[6]-2*b[7]-4*b[8]-8*b[9]-16*b[10]-32*b[11] == 0.0)
@constraint(m, e3, x[3]-b[12]-2*b[13]-4*b[14]-8*b[15]-16*b[16]-32*b[17] == 0.0)
@constraint(m, e4, x[4]-b[18]-2*b[19]-4*b[20]-8*b[21]-16*b[22]-32*b[23] == 0.0)
@constraint(m, e5, x[5]-b[24]-2*b[25]-4*b[26]-8*b[27]-16*b[28]-32*b[29] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.