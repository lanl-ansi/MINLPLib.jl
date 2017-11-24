using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
setcategory(i[4], :Int)
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setlowerbound(i[1], 1.0)
setlowerbound(i[2], 1.0)
setlowerbound(i[3], 1.0)
setlowerbound(i[4], 1.0)
setlowerbound(x[5], 0.000252525252525253)
setlowerbound(x[6], 0.000508388408744281)
setlowerbound(x[7], 0.000635162601626016)
setlowerbound(x[8], 0.000636456211812627)
setlowerbound(x[9], 0.000861450107681263)
setlowerbound(x[10], 0.000438212094653812)
setlowerbound(x[11], 0.000433776749566223)
setlowerbound(x[12], 0.000289184499710815)
setlowerbound(x[13], 0.000224466891133558)
setlowerbound(x[14], 0.00033892560582952)
setlowerbound(x[15], 0.000224014336917563)
setlowerbound(x[16], 0.000337381916329285)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(7.5/x[5]+5.625/x[6]+11.25/x[7]+7.5/x[8]+8.57142857142857/x[9]+7.14285714285714/x[10]+2.85714285714286/x[11]+5.71428571428571/x[12]+8.88888888888889/x[13]+8.88888888888889/x[14]+8.88888888888889/x[15]+4.44444444444444/x[16])-5000*i[1]-5500*i[2]-4000*i[3]-6000*i[4]-6000000*x[17]-9000000*x[18]-6000000*x[19]-9000000*x[20]-8000000*x[21]-8000000*x[22]-8000000*x[23]-10000000*x[24]-8000000*x[25]+objvar == 0.0)
@constraint(m, e2, -0.000252525252525253*i[1]+x[5] == 0.0)
@constraint(m, e3, -0.000508388408744281*i[2]+x[6] == 0.0)
@constraint(m, e4, -0.000635162601626016*i[3]+x[7] == 0.0)
@constraint(m, e5, -0.000636456211812627*i[4]+x[8] == 0.0)
@constraint(m, e6, -0.000861450107681263*i[1]+x[9] == 0.0)
@constraint(m, e7, -0.000438212094653812*i[2]+x[10] == 0.0)
@constraint(m, e8, -0.000433776749566223*i[3]+x[11] == 0.0)
@constraint(m, e9, -0.000289184499710815*i[4]+x[12] == 0.0)
@constraint(m, e10, -0.000224466891133558*i[1]+x[13] == 0.0)
@constraint(m, e11, -0.00033892560582952*i[2]+x[14] == 0.0)
@constraint(m, e12, -0.000224014336917563*i[3]+x[15] == 0.0)
@constraint(m, e13, -0.000337381916329285*i[4]+x[16] == 0.0)
@constraint(m, e14, 5000*i[1]+5500*i[2]+4000*i[3]+6000*i[4] <= 6.0e6)
@constraint(m, e15, 60*i[1]+50*i[2]+80*i[3]+40*i[4] <= 3000.0)
@constraint(m, e16, -x[5]+x[6]+x[17] >= 0.0)
@constraint(m, e17, -x[6]+x[7]+x[18] >= 0.0)
@constraint(m, e18, -x[7]+x[8]+x[19] >= 0.0)
@constraint(m, e19, -x[9]+x[10]+x[20] >= 0.0)
@constraint(m, e20, -x[10]+x[11]+x[21] >= 0.0)
@constraint(m, e21, -x[11]+x[12]+x[22] >= 0.0)
@constraint(m, e22, -x[13]+x[14]+x[23] >= 0.0)
@constraint(m, e23, -x[14]+x[15]+x[24] >= 0.0)
@constraint(m, e24, -x[15]+x[16]+x[25] >= 0.0)
@constraint(m, e25, x[5]-x[6]+x[17] >= 0.0)
@constraint(m, e26, x[6]-x[7]+x[18] >= 0.0)
@constraint(m, e27, x[7]-x[8]+x[19] >= 0.0)
@constraint(m, e28, x[9]-x[10]+x[20] >= 0.0)
@constraint(m, e29, x[10]-x[11]+x[21] >= 0.0)
@constraint(m, e30, x[11]-x[12]+x[22] >= 0.0)
@constraint(m, e31, x[13]-x[14]+x[23] >= 0.0)
@constraint(m, e32, x[14]-x[15]+x[24] >= 0.0)
@constraint(m, e33, x[15]-x[16]+x[25] >= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
