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
@NLconstraint(m, e2, 0.008* (x[1])^2-x[2] <= 0.0)
@NLconstraint(m, e3, -(3.8112755343*x[1]-(0.1269366345* (x[1])^2-0.0020567665* (x[1])^3+1.0345e-5* (x[1])^4+(0.0302344793*x[1]-0.0012813448* (x[1])^2+3.52599e-5* (x[1])^3-2.266e-7* (x[1])^4)*x[2]+0.2564581253* (x[2])^2-0.003460403* (x[2])^3+1.35139e-5* (x[2])^4-28.1064434908/(1+x[2])+(0.0003405462*x[1]-5.2375e-6* (x[1])^2-6.3e-9* (x[1])^3)* (x[2])^2+(7e-10* (x[1])^3-1.6638e-6*x[1])* (x[2])^3-2.8673112392*exp(0.0005*x[1]*x[2]))+6.8306567613*x[2])+objvar == -75.1963666677)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.