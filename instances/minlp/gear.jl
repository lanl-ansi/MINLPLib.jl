using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4]
@variable(m, i[i_Idx])
setcategory(i[4], :Int)
setlowerbound(i[4], 0.0)
setupperbound(i[4], 100.0)
setcategory(i[3], :Int)
setlowerbound(i[3], 0.0)
setupperbound(i[3], 100.0)
setcategory(i[1], :Int)
setlowerbound(i[1], 0.0)
setupperbound(i[1], 100.0)
setcategory(i[2], :Int)
setlowerbound(i[2], 0.0)
setupperbound(i[2], 100.0)
setlowerbound(i[1], 12.0)
setupperbound(i[1], 60.0)
setlowerbound(i[2], 12.0)
setupperbound(i[2], 60.0)
setlowerbound(i[3], 12.0)
setupperbound(i[3], 60.0)
setlowerbound(i[4], 12.0)
setupperbound(i[4], 60.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-i[1]*i[2]/(i[3]*i[4]))^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
