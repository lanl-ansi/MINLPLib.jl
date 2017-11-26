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
setlowerbound(i[1], 1.0)
setupperbound(i[1], 200.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 200.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1*( (i[1])^2+(1+ (i[2])^2)/ (i[1])^2+(100+ (i[1])^2* (i[2])^2)/ (i[1]*i[2])^4)+objvar == 1.2)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
