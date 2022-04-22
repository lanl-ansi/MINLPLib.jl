using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx] >= 0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-24.55*x[2]-26.75*x[3]-39*x[4]-40.5*x[5] == 0.0)
@constraint(m, e2, x[2]+x[3]+x[4]+x[5] == 1.0)
@NLconstraint(m, e3, 12*x[2]-1.645*sqrt(0.28* (x[2])^2+0.19* (x[3])^2+20.5* (x[4])^2+0.62* (x[5])^2)+11.9*x[3]+41.8*x[4]+52.1*x[5] >= 21.0)
@constraint(m, e4, 2.3*x[2]+5.6*x[3]+11.1*x[4]+1.3*x[5] >= 5.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
