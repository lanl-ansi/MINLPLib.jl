using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 2* (x[1])^2+3* (x[2])^4+4* (x[4])^2+x[3]+5*x[5] <= 127.0)
@NLconstraint(m, e2, 10* (x[3])^2+7*x[1]+3*x[2]+x[4]-x[5] <= 282.0)
@NLconstraint(m, e3,  (x[2])^2+6* (x[6])^2+23*x[1]-8*x[7] <= 196.0)
@NLconstraint(m, e4, (-4* (x[1])^2)- (x[2])^2+3*x[1]*x[2]-2* (x[3])^2+587*x[4]+391*x[5]-2193*x[6]+11*x[7] >= 0.0)
@NLconstraint(m, e5, -( ((-10)+x[1])^2+5* ((-12)+x[2])^2+ (x[3])^4+3* ((-11)+x[4])^2+10* (x[5])^6+7* (x[6])^2+ (x[7])^4-4*x[6]*x[7]-10*x[6]-8*x[7])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
