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
@NLconstraint(m, e1, -( (1.5-i[1]*(1-i[2]))^2+ (2.25-i[1]*(1- (i[2])^2))^2+ (2.625-i[1]*(1- (i[2])^3))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
