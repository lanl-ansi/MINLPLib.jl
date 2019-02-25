using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)
set_upper_bound(x[4], 10.0)
set_upper_bound(x[5], 10.0)
set_upper_bound(x[6], 10.0)
set_upper_bound(x[7], 10.0)
set_upper_bound(x[8], 10.0)
set_upper_bound(x[9], 10.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[10]+objvar == 0.0)
@NLconstraint(m, e2, (1-x[1]*x[2])*x[3]*(exp(x[5]*(0.485+(-0.0052095*x[7])-0.0285132*x[8]))-1)+23.3037*x[2]-x[10] <= 28.5132)
@NLconstraint(m, e3, (1-x[1]*x[2])*x[3]*(exp(x[5]*(0.752+(-0.0100677*x[7])-0.1118467*x[8]))-1)+101.779*x[2]-x[10] <= 111.8467)
@NLconstraint(m, e4, (1-x[1]*x[2])*x[3]*(exp(x[5]*(0.869+(-0.0229274*x[7])-0.1343884*x[8]))-1)+111.461*x[2]-x[10] <= 134.3884)
@NLconstraint(m, e5, (1-x[1]*x[2])*x[3]*(exp(x[5]*(0.982+(-0.0202153*x[7])-0.2114823*x[8]))-1)+191.267*x[2]-x[10] <= 211.4823)
@NLconstraint(m, e6, (-(1-x[1]*x[2])*x[3]*(exp(x[5]*(0.485+(-0.0052095*x[7])-0.0285132*x[8]))-1))-23.3037*x[2]-x[10] <= -28.5132)
@NLconstraint(m, e7, (-(1-x[1]*x[2])*x[3]*(exp(x[5]*(0.752+(-0.0100677*x[7])-0.1118467*x[8]))-1))-101.779*x[2]-x[10] <= -111.8467)
@NLconstraint(m, e8, (-(1-x[1]*x[2])*x[3]*(exp(x[5]*(0.869+(-0.0229274*x[7])-0.1343884*x[8]))-1))-111.461*x[2]-x[10] <= -134.3884)
@NLconstraint(m, e9, (-(1-x[1]*x[2])*x[3]*(exp(x[5]*(0.982+(-0.0202153*x[7])-0.2114823*x[8]))-1))-191.267*x[2]-x[10] <= -211.4823)
@NLconstraint(m, e10, (1-x[1]*x[2])*x[4]*(exp(x[6]*(0.116+0.0233037*x[9]-0.0052095*x[7]))-1)-28.5132*x[1]-x[10] <= -23.3037)
@NLconstraint(m, e11, (1-x[1]*x[2])*x[4]*(exp(x[6]*(0.101779*x[9]-0.0100677*x[7]-0.502))-1)-111.8467*x[1]-x[10] <= -101.779)
@NLconstraint(m, e12, (1-x[1]*x[2])*x[4]*(exp(x[6]*(0.166+0.111461*x[9]-0.0229274*x[7]))-1)-134.3884*x[1]-x[10] <= -111.461)
@NLconstraint(m, e13, (1-x[1]*x[2])*x[4]*(exp(x[6]*(0.191267*x[9]-0.0202153*x[7]-0.473))-1)-211.4823*x[1]-x[10] <= -191.267)
@NLconstraint(m, e14, 28.5132*x[1]-(1-x[1]*x[2])*x[4]*(exp(x[6]*(0.116+0.0233037*x[9]-0.0052095*x[7]))-1)-x[10] <= 23.3037)
@NLconstraint(m, e15, 111.8467*x[1]-(1-x[1]*x[2])*x[4]*(exp(x[6]*(0.101779*x[9]-0.0100677*x[7]-0.502))-1)-x[10] <= 101.779)
@NLconstraint(m, e16, 134.3884*x[1]-(1-x[1]*x[2])*x[4]*(exp(x[6]*(0.166+0.111461*x[9]-0.0229274*x[7]))-1)-x[10] <= 111.461)
@NLconstraint(m, e17, 211.4823*x[1]-(1-x[1]*x[2])*x[4]*(exp(x[6]*(0.191267*x[9]-0.0202153*x[7]-0.473))-1)-x[10] <= 191.267)
@NLconstraint(m, e18, x[1]*x[3]-x[2]*x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.