using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[4]
@variable(m, x[x_Idx])
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
setlowerbound(i[1], 1.0)
setupperbound(i[1], 12.0)
setlowerbound(i[2], 1.0)
setupperbound(i[2], 12.0)
setlowerbound(i[3], 1.0)
setupperbound(i[3], 12.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-0.15*i[1]*i[2])-0.14142135*i[2]*i[3]-0.1319*i[1]*i[3]+x[4] == 0.0)
@constraint(m, e2, 1.7317*i[2]+1.03366*i[3]-x[4] <= 0.0)
@constraint(m, e3, 0.634*i[1]+2.828*i[3]-x[4] <= 0.0)
@constraint(m, e4, 0.5*i[1]-2*i[2]-x[4] <= 0.0)
@constraint(m, e5, -0.5*i[1]+2*i[2]-x[4] <= 0.0)
@NLconstraint(m, e6, (i[1]-1)*(i[1]-2)*(i[1]-3)*(i[1]-5)*(i[1]-8)*(i[1]-10)*(i[1]-12) == 0.0)
@NLconstraint(m, e7, (i[2]-1)*(i[2]-2)*(i[2]-3)*(i[2]-5)*(i[2]-8)*(i[2]-10)*(i[2]-12) == 0.0)
@NLconstraint(m, e8, (i[3]-1)*(i[3]-2)*(i[3]-3)*(i[3]-5)*(i[3]-8)*(i[3]-10)*(i[3]-12) == 0.0)
@constraint(m, e9, -2*i[1]-i[2]-1.4142135*i[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
