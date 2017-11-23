using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.001)
setlowerbound(x[2], 0.001)
setlowerbound(x[3], 0.001)
setlowerbound(x[4], 0.001)
setlowerbound(x[5], 0.001)
setlowerbound(x[6], 0.001)
setlowerbound(x[7], 0.001)
setlowerbound(x[8], 0.001)
setlowerbound(x[9], 0.001)
setlowerbound(x[10], 0.001)
setlowerbound(x[11], 0.01)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+2*x[3]+x[6]+x[10] == 2.0)
@constraint(m, e2, x[4]+2*x[5]+x[6]+x[7] == 1.0)
@constraint(m, e3, x[3]+x[7]+x[8]+2*x[9]+x[10] == 1.0)
@NLconstraint(m, e4, -((-6.05576803624071+log(x[1]/x[11]))*x[1]+(-17.1307680362407+log(x[2]/x[11]))*x[2]+(-34.0207680362407+log(x[3]/x[11]))*x[3]+(-5.88076803624071+log(x[4]/x[11]))*x[4]+(-24.6877680362407+log(x[5]/x[11]))*x[5]+(-14.9527680362407+log(x[6]/x[11]))*x[6]+(-24.0667680362407+log(x[7]/x[11]))*x[7]+(-10.6747680362407+log(x[8]/x[11]))*x[8]+(-26.6287680362407+log(x[9]/x[11]))*x[9]+(-22.1447680362407+log(x[10]/x[11]))*x[10])+objvar == 0.0)
@constraint(m, e5, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
