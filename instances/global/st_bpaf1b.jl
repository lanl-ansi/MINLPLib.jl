using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 0 <= x[x_Idx] <= 20)

# ----- Constraints ----- #
@constraint(m, e1, -8*x[1]-6*x[3]+7*x[4]-7*x[5] <= 1.0)
@constraint(m, e2, -6*x[1]+2*x[2]-3*x[3]+9*x[4]-3*x[5] <= 3.0)
@constraint(m, e3, 6*x[1]-7*x[3]-8*x[4]+2*x[5] <= 5.0)
@constraint(m, e4, -x[1]+x[2]-8*x[3]-7*x[4]-5*x[5] <= 4.0)
@constraint(m, e5, 4*x[1]-7*x[2]+4*x[3]+5*x[4]+x[5] <= 0.0)
@constraint(m, e6, 5*x[7]-4*x[8]+9*x[9]-7*x[10] <= 0.0)
@constraint(m, e7, 7*x[6]+4*x[7]+3*x[8]+7*x[9]+5*x[10] <= 7.0)
@constraint(m, e8, 6*x[6]+x[7]-8*x[8]+8*x[9] <= 3.0)
@constraint(m, e9, -3*x[6]+2*x[7]+7*x[8]+x[10] <= 6.0)
@constraint(m, e10, -2*x[6]-3*x[7]+8*x[8]+5*x[9]-2*x[10] <= 2.0)
@NLconstraint(m, e11, -(x[1]*x[6]+2*x[1]-2*x[6]+x[2]*x[7]+4*x[2]-x[7]+x[3]*x[8]+8*x[3]-2*x[8]+x[4]*x[9]-x[4]-4*x[9]+x[5]*x[10]-3*x[5]+5*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
