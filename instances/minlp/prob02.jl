using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, i[i_Idx])
setcategory(i[5], :Int)
setcategory(i[4], :Int)
setcategory(i[3], :Int)
setcategory(i[1], :Int)
setcategory(i[2], :Int)
setcategory(i[6], :Int)
setlowerbound(i[1], 1.0)
setupperbound(i[1], 100.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 100.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 100.0)
setlowerbound(i[4], 1.0)
setupperbound(i[4], 100.0)
setlowerbound(i[5], 1.0)
setupperbound(i[5], 100.0)
setlowerbound(i[6], 1.0)
setupperbound(i[6], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, -8000*i[1]+330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6]+objvar == 0.0)
@constraint(m, e2, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] <= 8000.0)
@constraint(m, e3, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] >= 7700.0)
@constraint(m, e4, i[2]+i[3]+i[4]+i[5]+i[6] <= 20.0)
@constraint(m, e5, -i[1]*i[2] <= -60.0)
@constraint(m, e6, -i[1]*i[3] <= -30.0)
@constraint(m, e7, -i[1]*i[4] <= -75.0)
@constraint(m, e8, -i[1]*i[5] <= -30.0)
@constraint(m, e9, -i[1]*i[6] <= -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 
