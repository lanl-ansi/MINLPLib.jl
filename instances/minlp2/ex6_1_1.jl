using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.5)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.5)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.5)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((log(x[2])-log(x[2]+x[4]))*x[2]+(log(x[4])-log(x[2]+x[4]))*x[4]+(log(x[3])-log(x[3]+x[5]))*x[3]+(log(x[5])-log(x[3]+x[5]))*x[5]+0.925356626778358*x[2]*x[8]+0.746014540096753*x[4]*x[6]+0.925356626778358*x[3]*x[9]+0.746014540096753*x[5]*x[7])+objvar == 0.0)
@NLconstraint(m, e2, x[6]*(x[2]+0.159040857374844*x[4])-x[2] == 0.0)
@NLconstraint(m, e3, x[7]*(x[3]+0.159040857374844*x[5])-x[3] == 0.0)
@NLconstraint(m, e4, x[8]*(0.307941026821595*x[2]+x[4])-x[4] == 0.0)
@NLconstraint(m, e5, x[9]*(0.307941026821595*x[3]+x[5])-x[5] == 0.0)
@constraint(m, e6, x[2]+x[3] == 0.5)
@constraint(m, e7, x[4]+x[5] == 0.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.