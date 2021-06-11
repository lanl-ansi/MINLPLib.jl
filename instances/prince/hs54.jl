using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 20000.0)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 5.0e6)
set_upper_bound(x[4], 10.0)
set_lower_bound(x[5], -1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 6.0e7)
set_upper_bound(x[7], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(2.12585034013605e-14*(1.5625e-14* ((-1000000)+x[1])^2+5e-5*(-10000+x[1])*(-1+x[2])+ ((-1)+x[2])^2)* ((-2000000)+x[3])^2+0.0004* ((-10)+x[4])^2+400* ((-0.001)+x[5])^2+4e-18* ((-100000000)+x[6])^2)+x[7] == 0.0)
@constraint(m, e2, x[1]+4000*x[2] == 17600.0)
@NLconstraint(m, e3, exp(-0.5*x[7])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
