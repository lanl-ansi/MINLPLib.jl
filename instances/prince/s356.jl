using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[3], 0.0)
set_lower_bound(x[1], 0.125)
set_lower_bound(x[2], 7.0)
set_lower_bound(x[5], 1.0e-8)
set_lower_bound(x[7], 1.0e-8)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.707*x[1]*x[2]*(0.166666666666667* (x[2])^2+0.5* (x[1]+x[3])^2)+x[5] == 0.0)
@NLconstraint(m, e2, -2500000* (x[4])^3*x[3]+x[6] == 0.0)
@NLconstraint(m, e3, -4000000* (x[4])^3*x[3]+x[7] == 0.0)
@NLconstraint(m, e4, -4243.28147100424/(x[1]*x[2])+x[8] == 0.0)
@NLconstraint(m, e5, -sqrt( (x[2])^2+ (x[1]+x[3])^2)*(42000+1500*x[2])/x[5]+x[9] == 0.0)
@constraint(m, e6, -x[1]+x[4] >= 0.0)
@NLconstraint(m, e7, -1e-6*sqrt(x[8]*x[8]+2*x[8]*x[9]*x[2]/sqrt( (x[2])^2+ (x[1]+x[3])^2)+x[9]*x[9]) >= -0.0136)
@NLconstraint(m, e8, -5.04/( (x[3])^2*x[4]) >= -3.0)
@NLconstraint(m, e9, 2.04744897959184e-8*sqrt(x[6]*x[7])*(1-0.0357142857142857*sqrt(x[6]/x[7])*x[3]) >= 0.006)
@NLconstraint(m, e10, -2.1952/( (x[3])^3*x[4]) >= -0.25)
@NLconstraint(m, e11, -(1.10471* (x[1])^2*x[2]+0.04811*x[3]*x[4]*(14+x[2]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.