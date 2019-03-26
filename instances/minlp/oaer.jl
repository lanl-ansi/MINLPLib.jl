using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
b_Idx = Any[7, 8, 9]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -1.8*x[1]-1.8*x[2]-7*x[3]-x[4]-1.2*x[5]+11*x[6]-3.5*b[7]-b[8]-1.5*b[9]+objvar == 0.0)
@NLconstraint(m, e2, -log(1+x[1])+x[4] == 0.0)
@NLconstraint(m, e3, -1.2*log(1+x[2])+x[5] == 0.0)
@constraint(m, e4, -0.9*x[3]-0.9*x[4]-0.9*x[5]+x[6] == 0.0)
@constraint(m, e5, x[6]-b[7] <= 0.0)
@constraint(m, e6, x[4]-1.111111*b[8] <= 0.0)
@constraint(m, e7, x[5]-1.111111*b[9] <= 0.0)
@constraint(m, e8, b[8]+b[9] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
