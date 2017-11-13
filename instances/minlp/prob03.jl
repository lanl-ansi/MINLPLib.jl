using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, i[i_Idx])
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setlowerbound(i[1], 1.0)
setupperbound(i[1], 5.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -3*i[1]-2*i[2]+objvar == 0.0)
@constraint(m, e2, -i[1]*i[2] <= -3.5)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
