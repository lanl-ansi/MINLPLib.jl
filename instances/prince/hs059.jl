using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_upper_bound(x[1], 75.0)
set_upper_bound(x[2], 65.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, x[1]*x[2] >= 700.0)
@NLconstraint(m, e2, -0.008* (x[1])^2+x[2] >= 0.0)
@NLconstraint(m, e3,  ((-50)+x[2])^2-5*x[1] >= -275.0)
@NLconstraint(m, e4, -(0.0020567* (x[1])^3+3.8112*x[1]-1.0345e-5* (x[1])^4-0.030234*x[1]*x[2]+6.8306*x[2]+0.00128134* (x[1])^2*x[2]+2.266e-7* (x[1])^4*x[2]-0.25645* (x[2])^2+0.0034604* (x[2])^3-1.3514e-5* (x[2])^4+28.106/(1+x[2])+5.2375e-6* (x[1])^2* (x[2])^2+6.3e-8* (x[1])^3* (x[2])^2-7e-10* (x[1])^3* (x[2])^3-0.0003405* (x[2])^2*x[1]+1.6638e-6* (x[2])^3*x[1]+2.8673*exp(0.0005*x[1]*x[2])-3.5256e-5* (x[1])^3*x[2]-0.12694* (x[1])^2)+objvar == -75.196)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.