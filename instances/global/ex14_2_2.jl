using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 5]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[1], 1.0e-6)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 1.0e-6)
setupperbound(x[2], 1.0)
setlowerbound(x[3], 20.0)
setupperbound(x[3], 80.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[5] == 0.0)
@NLconstraint(m, e2, log(x[1]+0.191987347447993*x[2])+x[1]/(x[1]+0.191987347447993*x[2])+0.315693799947296*x[2]/(0.315693799947296*x[1]+x[2])+3643.31361767678/(239.726+x[3])-x[5] <= 12.9738026256517)
@NLconstraint(m, e3, log(0.315693799947296*x[1]+x[2])+0.191987347447993*x[1]/(x[1]+0.191987347447993*x[2])+x[2]/(0.315693799947296*x[1]+x[2])+2755.64173589155/(219.161+x[3])-x[5] <= 10.2081676704566)
@NLconstraint(m, e4, (-log(x[1]+0.191987347447993*x[2]))-(x[1]/(x[1]+0.191987347447993*x[2])+0.315693799947296*x[2]/(0.315693799947296*x[1]+x[2]))-3643.31361767678/(239.726+x[3])-x[5] <= -12.9738026256517)
@NLconstraint(m, e5, (-log(0.315693799947296*x[1]+x[2]))-(0.191987347447993*x[1]/(x[1]+0.191987347447993*x[2])+x[2]/(0.315693799947296*x[1]+x[2]))-2755.64173589155/(219.161+x[3])-x[5] <= -10.2081676704566)
@constraint(m, e6, x[1]+x[2] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
