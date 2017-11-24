using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
setcategory(i[4], :Int)
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 1.0)
setupperbound(i[2], 1.0)
setupperbound(i[3], 1.0e10)
setupperbound(i[4], 1.0e10)


# ----- Constraints ----- #
@constraint(m, e1, -10*i[1]+i[3] <= 0.0)
@constraint(m, e2, -20*i[2]+i[4] <= 0.0)
@constraint(m, e3, i[3]+i[4] >= 5.0)
@NLconstraint(m, e4, -(4*i[3]*i[3]-3*i[3]+2*i[4]*i[4]-10*i[4])-4*i[1]-5*i[2]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
