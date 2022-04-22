using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1]
@variable(m, 0 <= x[x_Idx] <= 8)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.01*(-8.9248e-5*x[1]-0.0218343* (x[1])^2+0.998266* (x[1])^3-1.6995* (x[1])^4+0.2* (x[1])^5)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
