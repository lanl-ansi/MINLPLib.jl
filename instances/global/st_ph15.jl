using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]+3*x[3]-2*x[4] <= 6.0)
@constraint(m, e2, -x[1]+4*x[2]+x[3]-2*x[4] <= 7.0)
@constraint(m, e3, 2*x[1]+x[2]+2*x[3]+x[4] <= 29.0)
@constraint(m, e4, x[1]-x[2]+x[3]+x[4] <= 11.0)
@NLconstraint(m, e5, -(16*x[1]-4* (x[1])^2-0.5* (x[2])^2+x[2]-2.5* (x[3])^2+15*x[3]- (x[4])^2+8*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
