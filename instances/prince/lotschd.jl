using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 1.8*x[1]-x[7] == 11.0)
@constraint(m, e2, 2.2*x[2]-x[3]-2*x[8]-x[9] == 3.0)
@constraint(m, e3, -x[1]-x[2]+5.1*x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-2*x[9]-x[10]-x[11]-x[12] == 20.0)
@constraint(m, e4, -x[1]+2.2*x[4]-x[5]-x[6]-x[7]-2*x[10]-x[11]-x[12] == 17.0)
@constraint(m, e5, -x[1]+1.8*x[5]-x[7]-x[11] == 9.0)
@constraint(m, e6, -x[1]-x[2]-x[3]-x[4]-x[5]+7.4*x[6]-x[7]-x[8]-x[9]-x[10]-x[11]-x[12] == 20.0)
@constraint(m, e7, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12] == 126.1)
@NLconstraint(m, e8, -( (1.502*x[1])^2+ (1.126*x[2])^2+ (0.815*x[3])^2+ (1.268*x[4])^2+ (1.502*x[5])^2+ (0.74*x[6])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
