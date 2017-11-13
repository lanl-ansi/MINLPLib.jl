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
@constraint(m, e1, (-9* (i[1])^2)-10*i[1]*i[2]-8* (i[2])^2 >= -583.0)
@constraint(m, e2, (-6* (i[1])^2)-8*i[1]*i[2]-6* (i[2])^2 >= -441.0)
@constraint(m, e3, -(7* (i[1])^2+6* (i[2])^2-35*i[1]-80.4*i[2])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
