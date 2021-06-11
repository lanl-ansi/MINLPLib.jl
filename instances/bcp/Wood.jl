using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], -10.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], -10.0)
set_upper_bound(x[3], 10.0)
set_lower_bound(x[4], -10.0)
set_upper_bound(x[4], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[2]-x[1]*x[1])^2+(1-x[1])*(1-x[1])+90* (x[4]-x[3]*x[3])^2+(1-x[3])*(1-x[3])+10.1*( ((-1)+x[2])^2+ ((-1)+x[4])^2)+(-19.8+19.8*x[2])*(-1+x[4]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
