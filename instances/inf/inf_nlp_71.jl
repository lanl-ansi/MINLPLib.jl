using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.399278843605)
setupperbound(x[1], 0.399278843605)
setlowerbound(x[2], 1.407367982504)
setupperbound(x[2], 1.407367982504)
setlowerbound(x[3], 5.282312418082)
setupperbound(x[3], 5.282312418082)
setlowerbound(x[4], 0.164150759132)
setupperbound(x[4], 0.164150759132)
setlowerbound(x[5], 0.288709195158)
setupperbound(x[5], 0.288709195158)
setlowerbound(x[6], 0.23411814164)
setupperbound(x[6], 0.23411814164)
setlowerbound(x[7], 0.274781680514)
setupperbound(x[7], 0.274781680514)
setlowerbound(x[8], 0.388708555666)
setupperbound(x[8], 0.388708555666)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]+x[9] == 0.0)
@NLconstraint(m, e2, 833.33252*x[4]/x[1]/x[6]+100/x[6]-83333.333/(x[1]*x[6]) <= 1.0)
@NLconstraint(m, e3, 1250*x[5]/x[2]/x[7]+x[4]/x[7]-1250*x[4]/x[2]/x[7] <= 1.0)
@NLconstraint(m, e4, 1250000/(x[3]*x[8])+x[5]/x[8]-2500*x[5]/x[3]/x[8] <= 1.0)
@constraint(m, e5, 0.0025*x[4]+0.0025*x[6] <= 1.0)
@constraint(m, e6, -0.0025*x[4]+0.0025*x[5]+0.0025*x[7] <= 1.0)
@constraint(m, e7, -0.01*x[5]+0.01*x[8] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, x[9])

m = m 		 # model get returned when including this script. 
