using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[1], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(8.9248e-5*x[1]-0.0218343* (x[1])^2+0.998266* (x[1])^3-1.6995* (x[1])^4+0.2* (x[1])^5)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
