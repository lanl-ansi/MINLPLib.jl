using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_upper_bound(x[5], 0.0)
set_upper_bound(x[5], -0.8)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*(x[1]+0.5*x[2]+0.333333333333333*x[3]+0.25*x[4]+0.2*x[5]+0.166666666666667*x[6])+x[2]*(0.5*x[1]+0.333333333333333*x[2]+0.25*x[3]+0.2*x[4]+0.166666666666667*x[5]+0.142857142857143*x[6])+x[3]*(0.333333333333333*x[1]+0.25*x[2]+0.2*x[3]+0.166666666666667*x[4]+0.142857142857143*x[5]+0.125*x[6])+x[4]*(0.25*x[1]+0.2*x[2]+0.166666666666667*x[3]+0.142857142857143*x[4]+0.125*x[5]+0.111111111111111*x[6])+x[5]*(0.2*x[1]+0.166666666666667*x[2]+0.142857142857143*x[3]+0.125*x[4]+0.111111111111111*x[5]+0.1*x[6])+x[6]*(0.166666666666667*x[1]+0.142857142857143*x[2]+0.125*x[3]+0.111111111111111*x[4]+0.1*x[5]+0.0909090909090909*x[6]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
