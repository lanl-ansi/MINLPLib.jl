using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.1)
set_upper_bound(x[1], 100.0)
set_lower_bound(x[2], 0.1)
set_upper_bound(x[2], 100.0)
set_lower_bound(x[3], 0.1)
set_upper_bound(x[3], 100.0)
set_lower_bound(x[4], 0.1)
set_upper_bound(x[4], 100.0)
set_lower_bound(x[5], 0.1)
set_upper_bound(x[5], 100.0)
set_lower_bound(x[6], 0.1)
set_upper_bound(x[6], 100.0)
set_lower_bound(x[7], 0.1)
set_upper_bound(x[7], 100.0)
set_lower_bound(x[8], 0.1)
set_upper_bound(x[8], 100.0)
set_lower_bound(x[9], 0.1)
set_upper_bound(x[9], 100.0)
set_lower_bound(x[10], 0.1)
set_upper_bound(x[10], 100.0)
set_lower_bound(x[11], 0.1)
set_upper_bound(x[11], 100.0)
set_lower_bound(x[12], 0.1)
set_upper_bound(x[12], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.0066940803*x[4]*x[5]-0.05367373*x[1]-0.021863746*x[2]-0.097733533*x[3] >= -1.0)
@NLconstraint(m, e2, (-1e-10*x[4]*x[12])-1e-8*x[5]/x[12]-0.01*x[6]/x[12]-0.0001*x[7]*x[12]-0.10898645*x[4]*x[5]-0.00016108052*x[2]*x[5]/x[12]-1e-5*x[2]-1e-23*x[2]*x[4]*x[5]-1.9304541e-6*x[2]*x[5]/( (x[12])^2*x[4])-0.001*x[10]/x[12]-1E-6*x[1]-1E-6*x[3] >= -1.0)
@NLconstraint(m, e3, (-0.10898645*x[4]*x[5])-1e-9*x[4]-1e-9*x[5]-1.6108052e-5*x[2]*x[5]-1e-5*x[2]-1e-23*x[2]*x[4]*x[5]-1.9304541e-8*x[2]*x[5]/x[4]-0.00011184059*x[1]*x[9]-1e-6*x[1]-1e-5*x[9]-1E-6*x[3]-0.001*x[6]-0.001*x[8]-0.0001*x[11] >= -1.0)
@NLconstraint(m, e4, -100000*exp(-0.00133172*log(x[1]))*exp(-0.002270927*log(x[2]))*exp(-0.00248546*log(x[3]))*exp(-4.67*log(x[4]))*exp(-4.671973*log(x[5]))*exp(-0.00814*log(x[6]))*exp(-0.008092*log(x[7]))*exp(-0.005*log(x[8]))*exp(-0.000909*log(x[9]))*exp(-0.00088*log(x[10]))*exp(-0.00119*log(x[11]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.