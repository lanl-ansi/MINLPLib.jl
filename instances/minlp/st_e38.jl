using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3, 4]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2]
@variable(m, i[i_Idx] <= 100, Int)

setlowerbound(i[1], 18.0)
setlowerbound(i[2], 10.0)
setlowerbound(x[3], 40.0)
setupperbound(x[3], 80.0)
setlowerbound(x[4], 20.0)
setupperbound(x[4], 60.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.0625*i[1]+0.0193*x[3] <= 0.0)
@constraint(m, e2, -0.0625*i[2]+0.00954*x[3] <= 0.0)
@NLconstraint(m, e3, 3.1415927*( (x[3])^2*x[4]+1.33333333333333* (x[3])^3) >= 1.296e6)
@NLconstraint(m, e4, -(0.0389*i[1]*x[3]*x[4]+0.1111312*i[2]* (x[3])^2+0.012348046875* (i[1])^2*x[4]+0.0775* (i[1])^2*x[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
