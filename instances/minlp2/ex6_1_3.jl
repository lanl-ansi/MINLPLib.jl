using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[2], 1.0e-7)
set_upper_bound(x[2], 0.2995)
set_lower_bound(x[3], 1.0e-7)
set_upper_bound(x[3], 0.2995)
set_lower_bound(x[4], 1.0e-7)
set_upper_bound(x[4], 0.1998)
set_lower_bound(x[5], 1.0e-7)
set_upper_bound(x[5], 0.1998)
set_lower_bound(x[6], 1.0e-7)
set_upper_bound(x[6], 0.4994)
set_lower_bound(x[7], 1.0e-7)
set_upper_bound(x[7], 0.4994)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((log(x[2])-log(x[2]+x[4]+x[6]))*x[2]+(log(x[4])-log(x[2]+x[4]+x[6]))*x[4]+(log(x[6])-log(x[2]+x[4]+x[6]))*x[6]+(log(x[3])-log(x[3]+x[5]+x[7]))*x[3]+(log(x[5])-log(x[3]+x[5]+x[7]))*x[5]+(log(x[7])-log(x[3]+x[5]+x[7]))*x[7]+x[2]*(1.44805026165593*x[10]+0.989428667054834*x[12])+x[4]*(1.12676386427658*x[8]+1.00363012835441*x[12])+x[6]*(0.0347225450624344*x[8]+0.82681418300153*x[10])+x[3]*(1.44805026165593*x[11]+0.989428667054834*x[13])+x[5]*(1.12676386427658*x[9]+1.00363012835441*x[13])+x[7]*(0.0347225450624344*x[9]+0.82681418300153*x[11]))+objvar == 0.0)
@NLconstraint(m, e2, x[8]*(x[2]+0.145002897355373*x[4]+0.989528214945409*x[6])-x[2] == 0.0)
@NLconstraint(m, e3, x[9]*(x[3]+0.145002897355373*x[5]+0.989528214945409*x[7])-x[3] == 0.0)
@NLconstraint(m, e4, x[10]*(0.293701311601799*x[2]+x[4]+0.646291923054068*x[6])-x[4] == 0.0)
@NLconstraint(m, e5, x[11]*(0.293701311601799*x[3]+x[5]+0.646291923054068*x[7])-x[5] == 0.0)
@NLconstraint(m, e6, x[12]*(0.619143628558899*x[2]+0.239837817616513*x[4]+x[6])-x[6] == 0.0)
@NLconstraint(m, e7, x[13]*(0.619143628558899*x[3]+0.239837817616513*x[5]+x[7])-x[7] == 0.0)
@constraint(m, e8, x[2]+x[3] == 0.2995)
@constraint(m, e9, x[4]+x[5] == 0.1998)
@constraint(m, e10, x[6]+x[7] == 0.4994)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
