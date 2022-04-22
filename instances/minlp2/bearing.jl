using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
set_upper_bound(x[10], 0.0)
set_lower_bound(x[1], 1.0)
set_upper_bound(x[1], 16.0)
set_lower_bound(x[2], 1.0)
set_upper_bound(x[2], 16.0)
set_lower_bound(x[3], 1.0)
set_upper_bound(x[3], 16.0)
set_lower_bound(x[4], 1.0)
set_upper_bound(x[4], 16.0)
set_lower_bound(x[6], 1.0)
set_upper_bound(x[6], 1000.0)
set_lower_bound(x[7], 0.0001)
set_lower_bound(x[8], 0.0001)
set_lower_bound(x[9], 1.0)
set_upper_bound(x[10], 50.0)
set_lower_bound(x[11], 100.0)
set_lower_bound(x[12], 1.0)
set_lower_bound(x[13], 0.0001)
set_lower_bound(x[14], 0.01)


# ----- Constraints ----- #
@constraint(m, e1, 10000*objvar-10000*x[7]-10000*x[8] == 0.0)
@NLconstraint(m, e2, -1.42857142857143*x[4]*x[6]+10000*x[8] == 0.0)
@NLconstraint(m, e3, 10*x[7]*x[9]-0.00968946189201592*(x[1]^4-x[2]^4)*x[3] == 0.0)
@NLconstraint(m, e4, 143.3076*x[10]*x[4]-10000*x[7] == 0.0)
@NLconstraint(m, e5, 3.1415927*(0.001*x[9])^3*x[6]-6e-6*x[3]*x[4]*x[13] == 0.0)
@NLconstraint(m, e6, 101000*x[12]*x[13]-1.57079635*x[6]*x[14] == 0.0)
@NLconstraint(m, e7, log10(0.8+8.112*x[3])-10964781961.4318*x[11]^(-3.55) == 0.0)
@constraint(m, e8, -0.5*x[10]+x[11] == 560.0)
@constraint(m, e9, x[1]-x[2] >= 0.0)
@NLconstraint(m, e10, 0.0307* (x[4])^2-0.3864* (0.0062831854*x[1]*x[9])^2*x[6] <= 0.0)
@constraint(m, e11, 101000*x[12]-15707.9635*x[14] <= 0.0)
@NLconstraint(m, e12, -(log(x[1])-log(x[2]))+x[13] == 0.0)
@NLconstraint(m, e13, -( (x[1])^2- (x[2])^2)+x[14] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
