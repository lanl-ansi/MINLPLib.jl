using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
b_Idx = Any[12, 13]
@variable(m, b[b_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_binary(b[12])
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[10], 0.0)
set_binary(b[13])


# ----- Constraints ----- #
@constraint(m, e1, x[5] == 0.0)
@constraint(m, e2, -x[2]-x[4]+x[6] == -480.0)
@constraint(m, e3, -x[3]+x[4]-x[5]-x[6]+x[7] == -540.0)
@NLconstraint(m, e4, -50*x[8]^0.8*x[10]^0.5+x[2] == 0.0)
@NLconstraint(m, e5, -50*x[9]^0.8*x[11]^0.5+x[3] == 0.0)
@constraint(m, e6, 0.02*x[6]+0.03*x[7]+x[8]+x[9]+x[10]+4*x[11]+16*b[12]+14*b[13] <= 45.0)
@constraint(m, e7, x[2]-1020*b[12] <= 0.0)
@constraint(m, e8, x[3]-1020*b[13] <= 0.0)
@constraint(m, e9, x[1]-10000*x[4]-2*x[5]-2*x[6]-3*x[7]-25*x[8]-12*x[9]-30*x[10]-15*x[11]-425*b[12]-420*b[13] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script.