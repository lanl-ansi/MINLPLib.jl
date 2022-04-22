using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[2], 0.0001)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], 0.001)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.5* (x[3])^2*Gamma(2-0.5/x[3])/Gamma(0.5/x[3])*x[2]^(1/x[3])+0.5*Gamma(1.5/x[3])/Gamma(0.5/x[3])*x[2]^(-1/x[3])+Gamma(2.5/x[3])/Gamma(0.5/x[3])*x[2]^(-2/x[3]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
