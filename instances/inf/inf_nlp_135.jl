using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(log(1+0.4*x[1])+log(1+0.6*x[2])+log(1+0.2*x[3]))+x[19] == 0.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4]+x[5]+x[6] == 10.0)
@constraint(m, e3, x[7]+x[8]+x[9]+x[10]+x[11]+x[12] == 10.0)
@constraint(m, e4, x[13]+x[14]+x[15]+x[16]+x[17]+x[18] == 10.0)
@constraint(m, e5, x[1]+1.2*x[2]+1.7*x[3]+0.7*x[10]+1.6*x[11]+1.45*x[12]+x[16]+x[17]+0.8*x[18] >= 100.0)


# ----- Objective ----- #
@objective(m, Max, x[19])

m = m 		 # model get returned when including this script. 
