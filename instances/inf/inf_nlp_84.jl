using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[1], 0.0)
setupperbound(x[1], 0.0)
setlowerbound(x[2], 0.9999)
setupperbound(x[2], 0.9999)
setlowerbound(x[3], 1.2237)
setupperbound(x[3], 1.2237)
setlowerbound(x[4], 1.2105)
setupperbound(x[4], 1.2105)
setlowerbound(x[5], 0.0)
setupperbound(x[5], 0.0)
setlowerbound(x[6], 0.0)
setupperbound(x[6], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(6.5*x[1]-0.5*x[1]*x[1])+x[2]+2*x[3]+3*x[4]+2*x[5]+x[6]+x[7] == 0.0)
@constraint(m, e2, x[1]+2*x[2]+8*x[3]+x[4]+3*x[5]+5*x[6] <= 16.0)
@constraint(m, e3, -8*x[1]-4*x[2]-2*x[3]+2*x[4]+4*x[5]-x[6] <= -1.0)
@constraint(m, e4, 2*x[1]+0.5*x[2]+0.2*x[3]-3*x[4]-x[5]-4*x[6] <= 24.0)
@constraint(m, e5, 0.2*x[1]+2*x[2]+0.1*x[3]-4*x[4]+2*x[5]+2*x[6] <= 12.0)
@constraint(m, e6, -0.1*x[1]-0.5*x[2]+2*x[3]+5*x[4]-5*x[5]+3*x[6] <= 3.0)


# ----- Objective ----- #
@objective(m, Min, x[7])

m = m 		 # model get returned when including this script. 
