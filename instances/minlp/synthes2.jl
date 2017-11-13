using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
b_Idx = Any[7, 8, 9, 10, 11]
@variable(m, b[b_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setcategory(b[8], :Bin)
setcategory(b[11], :Bin)
setcategory(b[7], :Bin)
setcategory(b[9], :Bin)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setcategory(b[10], :Bin)
setlowerbound(x[1], 0.0)
setupperbound(x[1], 2.0)
setupperbound(x[2], 2.0)
setupperbound(x[3], 2.0)
setupperbound(x[6], 3.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -log(1+x[4]+x[5]) <= 0.0)
@NLconstraint(m, e2, exp(x[1])-10*b[7] <= 1.0)
@NLconstraint(m, e3, exp(0.833333*x[2])-10*b[8] <= 1.0)
@constraint(m, e4, 1.25*x[3]-10*b[9] <= 0.0)
@constraint(m, e5, x[4]+x[5]-10*b[10] <= 0.0)
@constraint(m, e6, -2*x[3]+2*x[6]-10*b[11] <= 0.0)
@constraint(m, e7, -x[1]-x[2]-2*x[3]+x[4]+2*x[6] <= 0.0)
@constraint(m, e8, -x[1]-x[2]-0.75*x[3]+x[4]+2*x[6] <= 0.0)
@constraint(m, e9, x[3]-x[6] <= 0.0)
@constraint(m, e10, 2*x[3]-x[4]-2*x[6] <= 0.0)
@constraint(m, e11, -0.5*x[4]+x[5] <= 0.0)
@constraint(m, e12, -0.2*x[4]-x[5] <= 0.0)
@constraint(m, e13, b[7]+b[8] == 1.0)
@constraint(m, e14, b[10]+b[11] <= 1.0)
@NLconstraint(m, e15, -(exp(x[1])-10*x[1]+exp(0.833333*x[2])-15*x[2]-60*log(1+x[4]+x[5])+15*x[4]+5*x[5])+15*x[3]+20*x[6]-5*b[7]-8*b[8]-6*b[9]-10*b[10]-6*b[11]+objvar == 140.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
