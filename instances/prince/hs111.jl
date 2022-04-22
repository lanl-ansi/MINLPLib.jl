using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], -10.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], -10.0)
set_upper_bound(x[3], 10.0)
set_lower_bound(x[4], -10.0)
set_upper_bound(x[4], 10.0)
set_lower_bound(x[5], -10.0)
set_upper_bound(x[5], 10.0)
set_lower_bound(x[6], -10.0)
set_upper_bound(x[6], 10.0)
set_lower_bound(x[7], -10.0)
set_upper_bound(x[7], 10.0)
set_lower_bound(x[8], -10.0)
set_upper_bound(x[8], 10.0)
set_lower_bound(x[9], -10.0)
set_upper_bound(x[9], 10.0)
set_lower_bound(x[10], -10.0)
set_upper_bound(x[10], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(x[1])+2*exp(x[2])+2*exp(x[3])+exp(x[6])+exp(x[10]) == 2.0)
@NLconstraint(m, e2, exp(x[4])+2*exp(x[5])+exp(x[6])+exp(x[7]) == 1.0)
@NLconstraint(m, e3, exp(x[3])+exp(x[7])+exp(x[8])+2*exp(x[9])+exp(x[10]) == 1.0)
@NLconstraint(m, e4, -(exp(x[1])*(-6.089+x[1]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[2])*(-17.164+x[2]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[3])*(-34.054+x[3]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[4])*(-5.914+x[4]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[5])*(-24.721+x[5]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[6])*(-14.986+x[6]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[7])*(-24.1+x[7]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[8])*(-10.708+x[8]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[9])*(-26.662+x[9]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10])))+exp(x[10])*(-22.179+x[10]-log(0.0001+exp(x[1])+exp(x[2])+exp(x[3])+exp(x[4])+exp(x[5])+exp(x[6])+exp(x[7])+exp(x[8])+exp(x[9])+exp(x[10]))))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
