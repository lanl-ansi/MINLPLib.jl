using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx])
setcategory(i[8], :Int)
setcategory(i[5], :Int)
setcategory(i[4], :Int)
setcategory(i[7], :Int)
setcategory(i[3], :Int)
setcategory(i[9], :Int)
setcategory(i[1], :Int)
setcategory(i[10], :Int)
setcategory(i[2], :Int)
setcategory(i[6], :Int)
setlowerbound(i[1], 1.0)
setupperbound(i[1], 10.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 10.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 10.0)
setlowerbound(i[4], 1.0)
setupperbound(i[4], 10.0)
setlowerbound(i[5], 1.0)
setupperbound(i[5], 10.0)
setlowerbound(i[6], 1.0)
setupperbound(i[6], 10.0)
setlowerbound(i[7], 1.0)
setupperbound(i[7], 10.0)
setlowerbound(i[8], 1.0)
setupperbound(i[8], 10.0)
setlowerbound(i[9], 1.0)
setupperbound(i[9], 10.0)
setlowerbound(i[10], 1.0)
setupperbound(i[10], 10.0)
setlowerbound(x[11], 1.0)
setupperbound(x[11], 10.0)
setlowerbound(x[12], 1.0)
setupperbound(x[12], 10.0)
setlowerbound(x[13], 1.0)
setupperbound(x[13], 10.0)
setlowerbound(x[14], 1.0)
setupperbound(x[14], 10.0)
setlowerbound(x[15], 1.0)
setupperbound(x[15], 10.0)
setlowerbound(x[16], 1.0)
setupperbound(x[16], 10.0)
setlowerbound(x[17], 1.0)
setupperbound(x[17], 10.0)
setlowerbound(x[18], 1.0)
setupperbound(x[18], 10.0)
setlowerbound(x[19], 1.0)
setupperbound(x[19], 10.0)
setlowerbound(x[20], 1.0)
setupperbound(x[20], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 20000*i[1]^(-0.32)*i[2]^(-0.19)*i[3]^(-0.405)*i[4]^(-0.265)*i[5]^(-0.175)*i[6]^(-0.44)*i[7]^(-0.275)*i[8]^(-0.47)*i[9]^(-0.31)*i[10]^(-0.295)*x[11]^(-0.105)*x[12]^(-0.15)*x[13]^(-0.235)*x[14]^(-0.115)*x[15]^(-0.42)*x[16]^(-0.095)*x[17]^(-0.115)*x[18]^(-0.085)*x[19]^(-0.115)*x[20]^(-0.22)+i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+x[11]+x[12]+x[13]+x[14]+x[15]+x[16]+x[17]+x[18]+x[19]+x[20]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
