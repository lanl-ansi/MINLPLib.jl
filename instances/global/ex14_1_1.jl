using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
LB = [-5, -5, -Inf]
UB = [5, 5, Inf]
@variable(m, LB[i] <= x[i in x_Idx] <= UB[i])

# ----- Constraints ----- #
@constraint(m, e1, -x[3] + objvar == 0.0)
@NLconstraint(m, e2, 2* (x[2])^2+4*x[1]*x[2]-42*x[1]+4* (x[1])^3-x[3] <= 14.0)
@NLconstraint(m, e3, (-2* (x[2])^2)-4*x[1]*x[2]+42*x[1]-4* (x[1])^3-x[3] <= -14.0)
@NLconstraint(m, e4, 2* (x[1])^2+4*x[1]*x[2]-26*x[2]+4* (x[2])^3-x[3] <= 22.0)
@NLconstraint(m, e5, (-2* (x[1])^2)-4*x[1]*x[2]+26*x[2]-4* (x[2])^3-x[3] <= -22.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 