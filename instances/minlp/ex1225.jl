using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
b_Idx = Any[3, 4, 5, 6, 7, 8]
@variable(m, b[b_Idx])
setcategory(b[8], :Bin)
setcategory(b[3], :Bin)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(b[5], :Bin)
setcategory(b[7], :Bin)
setlowerbound(x[1], 1.0)
setupperbound(x[1], 5.0)
setlowerbound(x[2], 1.0)
setupperbound(x[2], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -7*x[1]-10*x[2]+objvar == 0.0)
@NLconstraint(m, e2, x[1]^1.2*x[2]^1.7-7*x[1]-9*x[2] <= -24.0)
@constraint(m, e3, -x[1]-2*x[2] <= -5.0)
@constraint(m, e4, -3*x[1]+x[2] <= 1.0)
@constraint(m, e5, 4*x[1]-3*x[2] <= 11.0)
@constraint(m, e6, x[1]-b[3]-2*b[4]-4*b[5] == 1.0)
@constraint(m, e7, x[2]-b[6]-2*b[7]-4*b[8] == 1.0)
@constraint(m, e8, b[3]+b[5] <= 1.0)
@constraint(m, e9, b[6]+b[8] <= 1.0)
@constraint(m, e10, b[4]+b[5] <= 1.0)
@constraint(m, e11, b[7]+b[8] <= 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
