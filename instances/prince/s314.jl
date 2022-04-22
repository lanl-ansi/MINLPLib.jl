using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_upper_bound(x[1], 0.0)
set_upper_bound(x[1], -0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.25* (x[3])^2- (x[4])^2)+x[1] == 1.0)
@constraint(m, e2, x[2]-x[3]+2*x[4] == 1.0)
@NLconstraint(m, e3, -( ((-2)+x[3])^2+ ((-1)+x[4])^2+0.04/(0.0001+x[1])+5* (x[2])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
