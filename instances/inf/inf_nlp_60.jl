using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
setlowerbound(x[1], 330.654538068856)
setupperbound(x[1], 330.654538068856)
setlowerbound(x[2], 196.08017207706)
setupperbound(x[2], 196.08017207706)
setlowerbound(x[3], 496.836475764179)
setupperbound(x[3], 496.836475764179)
setlowerbound(x[4], 2.394893910236)
setupperbound(x[4], 2.394893910236)
setlowerbound(x[5], 17.826105030827)
setupperbound(x[5], 17.826105030827)
setlowerbound(x[6], 10.927078472094)
setupperbound(x[6], 10.927078472094)
setlowerbound(x[7], 0.770336450735)
setupperbound(x[7], 0.770336450735)
setlowerbound(x[8], 312.82860684557)
setupperbound(x[8], 312.82860684557)
setlowerbound(x[9], 185.153446093697)
setupperbound(x[9], 185.153446093697)


# ----- Constraints ----- #
@constraint(m, e1, -9*x[1]-15*x[2]+6*x[3]+16*x[4]+10*x[5]+10*x[6]-x[10] == 0.0)
@constraint(m, e2, -x[3]-x[4]+x[8]+x[9] == 0.0)
@constraint(m, e3, x[1]-x[5]-x[8] == 0.0)
@constraint(m, e4, x[2]-x[6]-x[9] == 0.0)
@NLconstraint(m, e5, x[7]*x[8]-2.5*x[1]+2*x[5] <= 0.0)
@NLconstraint(m, e6, x[7]*x[9]-1.5*x[2]+2*x[6] <= 0.0)
@NLconstraint(m, e7, x[7]*x[8]+x[7]*x[9]-3*x[3]-x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[10])

m = m 		 # model get returned when including this script. 
