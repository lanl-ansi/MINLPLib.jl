using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0e9)
set_upper_bound(x[2], 1.0e9)
set_upper_bound(x[3], 1.0e9)
set_upper_bound(x[4], 1.0e9)
set_upper_bound(x[5], 1.0e9)
set_upper_bound(x[6], 1.0e9)
set_upper_bound(x[7], 1.0e9)
set_upper_bound(x[8], 1.0e9)
set_upper_bound(x[9], 1.0e9)
set_upper_bound(x[10], 1.0e9)
set_upper_bound(x[11], 1.0e9)
set_upper_bound(x[12], 1.0e9)
set_upper_bound(x[13], 1.0e9)
set_upper_bound(x[14], 1.0e9)
set_upper_bound(x[15], 1.0e9)
set_upper_bound(x[16], 1.0e9)
set_upper_bound(x[17], 1.0e9)
set_upper_bound(x[18], 1.0e9)
set_upper_bound(x[19], 1.0e9)
set_upper_bound(x[20], 1.0e9)
set_upper_bound(x[21], 1.0e9)
set_lower_bound(x[22], -1.0e9)
set_upper_bound(x[22], 1.0e9)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[16]-x[17])^2+ (x[20]-x[19])^2)+x[1] == -1.0)
@NLconstraint(m, e2, -( (x[16]-x[21])^2+ (x[20]-x[18])^2)+x[4] == -4.0)
@NLconstraint(m, e3, -( (x[17]-x[21])^2+ (x[19]-x[18])^2)+x[3] == -1.0)
@constraint(m, e4, -x[6]+x[16] == 1.0)
@constraint(m, e5, -x[9]+x[17] == 2.0)
@constraint(m, e6, -x[13]+x[21] == 3.0)
@constraint(m, e7, -x[7]-x[20] == 1.0)
@constraint(m, e8, -x[10]-x[19] == 2.0)
@constraint(m, e9, -x[14]-x[18] == 3.0)
@constraint(m, e10, -x[5]-x[16] == 1.0)
@constraint(m, e11, -x[11]-x[17] == 2.0)
@constraint(m, e12, -x[15]-x[21] == 3.0)
@constraint(m, e13, -x[8]+x[20] == 1.0)
@constraint(m, e14, -x[12]+x[19] == 2.0)
@constraint(m, e15, -x[2]+x[18] == 3.0)
@constraint(m, e16, -x[22] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[22])

 
