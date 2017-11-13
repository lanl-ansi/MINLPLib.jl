using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, i[i_Idx])
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)
setupperbound(i[3], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, i[2]* (i[3])^2+5*i[3]+3*i[1] >= 10.0)
@constraint(m, e2, i[1]-i[3] >= 2.66)
@constraint(m, e3, -2* (i[2])^2-i[1]-5*i[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
