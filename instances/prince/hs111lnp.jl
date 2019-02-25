using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(x[1])+2*exp(x[2])+2*exp(x[3])+exp(x[6])+exp(x[10]) == 2.0)
@NLconstraint(m, e2, exp(x[4])+2*exp(x[5])+exp(x[6])+exp(x[7]) == 1.0)
@NLconstraint(m, e3, exp(x[3])+exp(x[7])+exp(x[8])+2*exp(x[9])+exp(x[10]) == 1.0)
@NLconstraint(m, e4, -(exp(x[1])*(-6.089+x[1]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[2])*(-17.164+x[2]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[3])*(-34.054+x[3]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[4])*(-5.914+x[4]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[5])*(-24.721+x[5]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[6])*(-14.986+x[6]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[7])*(-24.1+x[7]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[8])*(-10.708+x[8]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[9])*(-26.662+x[9]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[10])*(-22.179+x[10]-log(exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10]))))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.