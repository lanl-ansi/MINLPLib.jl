using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, (- (x[1])^2)- (x[2])^2- (x[3])^2- (x[4])^2- (x[5])^2 >= -34.0)
@constraint(m, e2, x[1] >= 1.0)
@constraint(m, e3, x[2] >= 2.0)
@constraint(m, e4, x[3] >= 3.0)
@constraint(m, e5, x[4] >= 4.0)
@NLconstraint(m, e6, -(x[1]*x[2]*x[3]*x[4]-3*x[1]*x[2]*x[4]-4*x[1]*x[2]*x[3]+12*x[1]*x[2]-x[2]*x[3]*x[4]+3*x[2]*x[4]+4*x[2]*x[3]-12*x[2]-2*x[1]*x[3]*x[4]+6*x[1]*x[4]+8*x[1]*x[3]-24*x[1]+2*x[3]*x[4]-6*x[4]-8*x[3]+1.5* (x[5])^4-5.75* (x[5])^3+5.25* (x[5])^2)+objvar == 24.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
