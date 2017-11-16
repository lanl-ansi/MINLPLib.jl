using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
b_Idx = Any[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]
@variable(m, b[b_Idx])
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[12], :Bin)
setcategory(b[14], :Bin)
setcategory(b[8], :Bin)
setcategory(b[15], :Bin)
setcategory(b[20], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[29], :Bin)
setcategory(b[25], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setcategory(b[24], :Bin)
setcategory(b[23], :Bin)
setcategory(b[16], :Bin)
setcategory(b[10], :Bin)
setcategory(b[17], :Bin)
setcategory(b[6], :Bin)
setcategory(b[21], :Bin)
setcategory(b[26], :Bin)
setcategory(b[28], :Bin)
setcategory(b[13], :Bin)
setcategory(b[22], :Bin)
setlowerbound(x[2], 12.0)
setupperbound(x[2], 60.0)
setlowerbound(x[3], 12.0)
setupperbound(x[3], 60.0)
setlowerbound(x[4], 12.0)
setupperbound(x[4], 60.0)
setlowerbound(x[5], 12.0)
setupperbound(x[5], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-x[2]*x[3]/(x[4]*x[5]))^2+objvar == 0.0)
@constraint(m, e2, x[2]-b[6]-2*b[7]-4*b[8]-8*b[9]-16*b[10]-32*b[11] == 0.0)
@constraint(m, e3, x[3]-b[12]-2*b[13]-4*b[14]-8*b[15]-16*b[16]-32*b[17] == 0.0)
@constraint(m, e4, x[4]-b[18]-2*b[19]-4*b[20]-8*b[21]-16*b[22]-32*b[23] == 0.0)
@constraint(m, e5, x[5]-b[24]-2*b[25]-4*b[26]-8*b[27]-16*b[28]-32*b[29] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
