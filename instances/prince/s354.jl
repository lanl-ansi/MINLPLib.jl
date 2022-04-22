using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_upper_bound(x[1], 0.0)
set_upper_bound(x[4], 0.0)
set_upper_bound(x[2], 0.0)
set_upper_bound(x[3], 0.0)
set_upper_bound(x[1], 20.0)
set_upper_bound(x[2], 20.0)
set_upper_bound(x[3], 20.0)
set_upper_bound(x[4], 20.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4] >= 1.0)
@NLconstraint(m, e2, -( (x[1]+10*x[2])^2+5* (x[3]-x[4])^2+ (x[2]-2*x[3])^4+10* (x[1]-x[4])^4)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
