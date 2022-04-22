using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_upper_bound(x[5], 0.0)
set_upper_bound(x[15], 0.0)
set_upper_bound(x[1], 0.0)
set_upper_bound(x[7], 0.0)
set_upper_bound(x[3], 0.0)
set_upper_bound(x[1], 914.73)
set_upper_bound(x[3], 904.73)
set_upper_bound(x[5], 904.73)
set_upper_bound(x[7], 914.73)
set_upper_bound(x[15], 400.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, abs(x[1])*x[1]-abs(x[2])*x[2]-0.597053452*exp(0.8539*log(abs(x[8])))*x[8] == 0.0)
@NLconstraint(m, e2, abs(x[3])*x[3]-abs(x[4])*x[4]-0.597053452*exp(0.8539*log(abs(x[10])))*x[10] == 0.0)
@NLconstraint(m, e3, abs(x[4])*x[4]-abs(x[5])*x[5]-0.597053452*exp(0.8539*log(abs(x[12])))*x[12] == 0.0)
@NLconstraint(m, e4, abs(x[6])*x[6]-abs(x[7])*x[7]-0.597053452*exp(0.8539*log(abs(x[14])))*x[14] == 0.0)
@constraint(m, e5, x[8]-x[13] == 0.0)
@constraint(m, e6, -x[8]+x[9] == 0.0)
@constraint(m, e7, -x[9]+x[10] == 0.0)
@constraint(m, e8, -x[10]+x[12] == -1000.0)
@constraint(m, e9, -x[11]-x[12] == 0.0)
@constraint(m, e10, x[11]+x[14] == 0.0)
@constraint(m, e11, -x[14]-x[15] == 0.0)
@constraint(m, e12, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
