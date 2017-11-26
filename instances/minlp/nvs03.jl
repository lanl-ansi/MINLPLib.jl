using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1* (i[1])^2+i[2] >= 0.0)
@constraint(m, e2, -0.333333333333333*i[1]-i[2] >= -4.5)
@NLconstraint(m, e3, -( (i[1]-8)^2+ (i[2]-2)^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
