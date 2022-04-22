using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 10.0)
set_upper_bound(x[3], 10.0)
set_upper_bound(x[4], 10.0)
set_upper_bound(x[5], 10.0)
set_upper_bound(x[6], 10.0)
set_upper_bound(x[7], 10.0)
set_upper_bound(x[8], 10.0)
set_upper_bound(x[9], 10.0)
set_upper_bound(x[10], 10.0)
set_upper_bound(x[11], 10.0)
set_upper_bound(x[12], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*x[2]+x[2]*x[3]+x[3]*x[4]+x[4]*x[5]+x[5]*x[6]+x[6]*x[7]-10*x[1]-20*x[2]-30*x[3]-40*x[4]-50*x[5]-60*x[6]-70*x[7])+80*x[8]+90*x[9]+100*x[10]+110*x[11]+120*x[12]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
