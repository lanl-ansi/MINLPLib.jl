using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[2], 150.0)
set_upper_bound(x[3], 150.0)
set_upper_bound(x[4], 150.0)
set_upper_bound(x[5], 150.0)
set_upper_bound(x[6], 150.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.142653871201291*x[2]^1.83333333333333+10*x[2]-(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1*x[2])+x[1] == 0.0)
@NLconstraint(m, e2, (0.2*x[3])^0.909090909090909-(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1+(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1*x[3]/(x[2]+x[3]+x[4]+x[5]+x[6])-x[7]+x[8] == -8.0)
@NLconstraint(m, e3, (0.2*x[4])^1-(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1+(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1*x[4]/(x[2]+x[3]+x[4]+x[5]+x[6])-x[9]+x[10] == -6.0)
@NLconstraint(m, e4, (0.2*x[5])^1.11111111111111-(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1+(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1*x[5]/(x[2]+x[3]+x[4]+x[5]+x[6])-x[11]+x[12] == -4.0)
@NLconstraint(m, e5, (0.2*x[6])^1.25-(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1+(5000/(x[2]+x[3]+x[4]+x[5]+x[6]))^1*x[6]/(x[2]+x[3]+x[4]+x[5]+x[6])-x[13]+x[14] == -2.0)
@NLconstraint(m, e6, x[7]*x[3] == 0.0)
@NLconstraint(m, e7, x[8]*(150-x[3]) == 0.0)
@NLconstraint(m, e8, x[9]*x[4] == 0.0)
@NLconstraint(m, e9, x[10]*(150-x[4]) == 0.0)
@NLconstraint(m, e10, x[11]*x[5] == 0.0)
@NLconstraint(m, e11, x[12]*(150-x[5]) == 0.0)
@NLconstraint(m, e12, x[13]*x[6] == 0.0)
@NLconstraint(m, e13, x[14]*(150-x[6]) == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 
