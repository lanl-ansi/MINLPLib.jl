using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.001)
set_lower_bound(x[2], 0.001)
set_lower_bound(x[3], 0.001)
set_lower_bound(x[4], 0.001)
set_lower_bound(x[5], 0.001)
set_lower_bound(x[6], 0.001)
set_lower_bound(x[7], 0.001)
set_lower_bound(x[8], 0.001)
set_lower_bound(x[9], 0.001)
set_lower_bound(x[10], 0.001)
set_lower_bound(x[11], 0.01)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+2*x[2]+2*x[3]+x[6]+x[10] == 2.0)
@constraint(m, e2, x[4]+2*x[5]+x[6]+x[7] == 1.0)
@constraint(m, e3, x[3]+x[7]+x[8]+2*x[9]+x[10] == 1.0)
@NLconstraint(m, e4, -(x[1]*(log(x[1]/x[11])-6.05576803624071)+x[2]*(log(x[2]/x[11])-17.1307680362407)+x[3]*(log(x[3]/x[11])-34.0207680362407)+x[4]*(log(x[4]/x[11])-5.88076803624071)+x[5]*(log(x[5]/x[11])-24.6877680362407)+x[6]*(log(x[6]/x[11])-14.9527680362407)+x[7]*(log(x[7]/x[11])-24.0667680362407)+x[8]*(log(x[8]/x[11])-10.6747680362407)+x[9]*(log(x[9]/x[11])-26.6287680362407)+x[10]*(log(x[10]/x[11])-22.1447680362407))+objvar == 0.0)
@constraint(m, e5, -x[1]-x[2]-x[3]-x[4]-x[5]-x[6]-x[7]-x[8]-x[9]-x[10]+x[11] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.