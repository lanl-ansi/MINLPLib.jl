using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
b_Idx = Any[4, 5, 6]
@variable(m, b[b_Idx])
setlowerbound(x[1], 0.0)
setcategory(b[4], :Bin)
setlowerbound(x[2], 0.0)
setcategory(b[6], :Bin)
setlowerbound(x[3], 0.0)
setcategory(b[5], :Bin)
setupperbound(x[1], 2.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-18*log(1+x[2])-19.2*log(1+x[1]-x[2])+10*x[1])+7*x[3]-5*b[4]-6*b[5]-8*b[6]+objvar == 10.0)
@NLconstraint(m, e2, 0.8*log(1+x[2])+0.96*log(1+x[1]-x[2])-0.8*x[3] >= 0.0)
@NLconstraint(m, e3, log(1+x[2])+1.2*log(1+x[1]-x[2])-x[3]-2*b[6] >= -2.0)
@constraint(m, e4, -x[1]+x[2] <= 0.0)
@constraint(m, e5, x[2]-2*b[4] <= 0.0)
@constraint(m, e6, x[1]-x[2]-2*b[5] <= 0.0)
@constraint(m, e7, b[4]+b[5] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
