using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.001*x[1]*x[2]*x[3]*x[4]*x[5]*x[6] >= 2.07)
@NLconstraint(m, e2, 0.00062*x[1]*x[4]* (x[5])^2*(x[1]+x[2]+x[3])+0.00058*x[2]*x[3]* (x[6])^2*(x[1]+1.57*x[2]+x[4]) <= 1.0)
@NLconstraint(m, e3, -(0.0204*x[1]*x[4]*(x[1]+x[2]+x[3])+0.0187*x[2]*x[3]*(x[1]+1.57*x[2]+x[4])+0.0607*x[1]*x[4]* (x[5])^2*(x[1]+x[2]+x[3])+0.0437*x[2]*x[3]* (x[6])^2*(x[1]+1.57*x[2]+x[4]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
