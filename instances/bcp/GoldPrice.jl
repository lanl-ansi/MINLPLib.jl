using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -2.0)
set_upper_bound(x[1], 2.0)
set_lower_bound(x[2], -2.0)
set_upper_bound(x[2], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1+(1+x[1]+x[2])*(1+x[1]+x[2])*(19+3*x[1]*x[1]-14*x[1]+6*x[1]*x[2]-14*x[2]+3*x[2]*x[2]))*(30+(2*x[1]-3*x[2])*(2*x[1]-3*x[2])*(18+12*x[1]*x[1]-32*x[1]-36*x[1]*x[2]+48*x[2]+27*x[2]*x[2]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
