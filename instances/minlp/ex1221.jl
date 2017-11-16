using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
b_Idx = Any[3, 4, 5]
@variable(m, b[b_Idx])
setlowerbound(x[1], 0.0)
setcategory(b[3], :Bin)
setlowerbound(x[2], 0.0)
setcategory(b[4], :Bin)
setcategory(b[5], :Bin)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*x[1]-3*x[2]-1.5*b[3]-2*b[4]+0.5*b[5]+objvar == 0.0)
@NLconstraint(m, e2,  (x[1])^2+b[3] == 1.25)
@NLconstraint(m, e3, x[2]^1.5+1.5*b[4] == 3.0)
@constraint(m, e4, x[1]+b[3] <= 1.6)
@constraint(m, e5, 1.333*x[2]+b[4] <= 3.0)
@constraint(m, e6, -b[3]-b[4]+b[5] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
