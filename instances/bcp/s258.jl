using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(100* (x[2]- (x[1])^2)^2+ (1-x[1])^2+90* (x[4]- (x[3])^2)^2+ (1-x[3])^2+10.1*( ((-1)+x[2])^2+ ((-1)+x[4])^2)+(-19.8+19.8*x[2])*(-1+x[4]))+x[5] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[5])

 
