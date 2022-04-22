using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 1.0e-6)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 1.0e-6)
set_upper_bound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((0.06391+log(x[2]))*x[2]+(-0.02875+log(x[3]))*x[3]+0.925356626778358*x[2]*x[5]+0.746014540096753*x[3]*x[4])+objvar == 0.0)
@NLconstraint(m, e2, x[4]*(x[2]+0.159040857374844*x[3])-x[2] == 0.0)
@NLconstraint(m, e3, x[5]*(0.307941026821595*x[2]+x[3])-x[3] == 0.0)
@constraint(m, e4, x[2]+x[3] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
