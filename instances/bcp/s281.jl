using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[1], 1.000000001)
setlowerbound(x[2], 1.000000001)
setlowerbound(x[3], 1.000000001)
setlowerbound(x[4], 1.000000001)
setlowerbound(x[5], 1.000000001)
setlowerbound(x[6], 1.000000001)
setlowerbound(x[7], 1.000000001)
setlowerbound(x[8], 1.000000001)
setlowerbound(x[9], 1.000000001)
setlowerbound(x[10], 1.000000001)


# ----- Constraints ----- #
@NLconstraint(m, e1, -exp(0.333333333333333*log( ((-1)+x[1])^2+8* ((-1)+x[2])^2+27* ((-1)+x[3])^2+64* ((-1)+x[4])^2+125* ((-1)+x[5])^2+216* ((-1)+x[6])^2+343* ((-1)+x[7])^2+512* ((-1)+x[8])^2+729* ((-1)+x[9])^2+1000* ((-1)+x[10])^2))+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[11])
m = m 		 # model get returned when including this script. 
