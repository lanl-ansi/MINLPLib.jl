using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)
setlowerbound(x[3], 0.001)
setupperbound(x[3], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, sqrt(x[3])+i[1]+2*i[2] >= 10.0)
@NLconstraint(m, e2, 0.240038406144983* (i[1])^2-i[2]+0.255036980362153*x[3] >= -3.0)
@NLconstraint(m, e3,  (i[2])^2-1/( (x[3])^3*sqrt(x[3]))-4*i[1] >= -12.0)
@NLconstraint(m, e4, -( (i[1]-3)^2+ (i[2]-2)^2+ (4+x[3])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
