using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 100.0)
set_upper_bound(x[2], 100.0)
set_upper_bound(x[3], 30.0)
set_upper_bound(x[4], 100.0)
set_upper_bound(x[5], 50.0)
set_upper_bound(x[6], 50.0)
set_upper_bound(x[7], 30.0)
set_upper_bound(x[8], 30.0)
set_upper_bound(x[9], 800.0)
set_upper_bound(x[10], 800.0)
set_lower_bound(x[11], 0.5)
set_upper_bound(x[11], 50.0)
set_lower_bound(x[12], 0.1)
set_upper_bound(x[12], 10.0)
set_upper_bound(x[13], 20.0)
set_upper_bound(x[14], 10.0)
set_lower_bound(x[15], 0.1)
set_upper_bound(x[15], 30.0)
set_upper_bound(x[16], 50.0)
set_lower_bound(x[17], 100.0)
set_upper_bound(x[17], 1000.0)
set_lower_bound(x[18], 100.0)
set_upper_bound(x[18], 1000.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[3] == 0.0)
@constraint(m, e2, -x[4] == 0.0)
@constraint(m, e3, x[7]-x[12]-x[15] == 0.0)
@constraint(m, e4, x[8]+x[12]-x[15] == 0.0)
@constraint(m, e5, x[12]-x[13]+x[14] == 0.0)
@constraint(m, e6, -x[2]+x[11] == -2.0)
@constraint(m, e7, -x[1]+1.5*x[12] == 0.0)
@constraint(m, e8, -x[5]+x[6]-x[16] == 0.0)
@constraint(m, e9, x[5] == 0.0)
@constraint(m, e10, -x[1]+x[3]+x[6] == 0.0)
@constraint(m, e11, x[9] == 0.0)
@constraint(m, e12, x[10] == 0.0)
@constraint(m, e13, x[9]-x[17] <= 0.0)
@constraint(m, e14, x[10]-x[18] <= 0.0)
@constraint(m, e15, objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
