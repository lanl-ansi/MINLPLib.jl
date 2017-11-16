using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[4], 1.05)
setlowerbound(x[5], 1.05)
setlowerbound(x[6], 1.05)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.5*x[9]*x[4]*(0.8*x[7]+0.333333333333333*x[8])+x[1] == 0.0)
@NLconstraint(m, e2, -0.5*x[9]*x[5]*(0.8*x[7]+0.333333333333333*x[8])+x[2] == 0.0)
@NLconstraint(m, e3, -0.5*x[9]*x[6]*(0.8*x[7]+0.333333333333333*x[8])+x[3] == 0.0)
@NLconstraint(m, e4,  (x[10]-x[7])^2-( (x[8])^2- (x[9])^2) == 0.0)
@constraint(m, e5, x[1]-8.4652734375*x[10] >= 0.0)
@constraint(m, e6, x[2]-9.65006510416667*x[10] >= 0.0)
@constraint(m, e7, x[3]-8.8716796875*x[10] >= 0.0)
@NLconstraint(m, e8, 0.5*x[1]*x[9]-2.2*(8.4652734375*x[10])^1.33333333333333 >= 0.0)
@NLconstraint(m, e9, 0.5*x[2]*x[9]-2.2*(9.65006510416667*x[10])^1.33333333333333 >= 0.0)
@NLconstraint(m, e10, 0.5*x[3]*x[9]-2.2*(8.8716796875*x[10])^1.33333333333333 >= 0.0)
@constraint(m, e11, x[4]-0.0111771747883801*x[7] >= 0.2)
@constraint(m, e12, x[5]-0.0137655360411427*x[7] >= 0.2)
@constraint(m, e13, x[6]-0.0155663872253648*x[7] >= 0.2)
@constraint(m, e14, x[4]-0.0111771747883801*x[8] >= 0.2)
@constraint(m, e15, x[5]-0.0137655360411427*x[8] >= 0.2)
@constraint(m, e16, x[6]-0.0155663872253648*x[8] >= 0.2)
@NLconstraint(m, e17, -(0.0039*x[7]+0.0039*x[8])*(495*x[4]+385*x[5]+315*x[6])/x[10]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
