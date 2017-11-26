using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, i[i_Idx])
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setupperbound(i[1], 200.0)
setupperbound(i[2], 200.0)
setupperbound(i[3], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, -i[1]-i[2]-2*i[3] >= -3.0)
@NLconstraint(m, e2, -(2* (i[1])^2-8*i[1]+2* (i[2])^2-6*i[2]+ (i[3])^2-4*i[3]+2*i[1]*i[2]+2*i[1]*i[3])+objvar == 9.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
