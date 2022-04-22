using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* ( (x[1])^2-x[2])^2+ ((-1)+x[1])^2+90* ( (x[3])^2-x[4])^2+ ((-1)+x[3])^2+10.1*( ((-1)+x[2])^2+ ((-1)+x[4])^2)+(-19.8+19.8*x[1])*(-1+x[4]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
