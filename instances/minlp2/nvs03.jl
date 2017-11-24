using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1* (i[1])^2+i[2] >= 0.0)
@constraint(m, e2, -0.333333333333333*i[1]-i[2] >= -4.5)
@NLconstraint(m, e3, -( (i[1]-8)^2+ (i[2]-2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
