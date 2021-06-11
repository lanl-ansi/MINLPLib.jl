using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[13], 0.0)
# settcategory(b[3], :Bin)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[14], 0.0)
# settcategory(b[2], :Bin)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
# settcategory(b[1], :Bin)
set_lower_bound(x[7], 50.0)
set_upper_bound(x[7], 700.0)
set_lower_bound(x[8], 50.0)
set_upper_bound(x[8], 700.0)
set_lower_bound(x[9], 50.0)
set_upper_bound(x[9], 700.0)
set_upper_bound(x[13], 4000.0)
set_upper_bound(x[14], 4000.0)
set_lower_bound(x[15], 2000.0)
set_upper_bound(x[15], 4000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.0025* (x[7])^2+6*x[7]+0.0025* (x[8])^2+6*x[8]+0.0025* (x[9])^2+6*x[9])+objvar == 900.0)
@constraint(m, e2, -100*b[1]+x[4] >= 0.0)
@constraint(m, e3, -100*b[2]+x[5] >= 0.0)
@constraint(m, e4, -100*b[3]+x[6] >= 0.0)
@constraint(m, e5, -500*b[1]+x[4] <= 0.0)
@constraint(m, e6, -500*b[2]+x[5] <= 0.0)
@constraint(m, e7, -500*b[3]+x[6] <= 0.0)
@constraint(m, e8, x[10]+x[13] == 3500.0)
@constraint(m, e9, x[11]-x[13]+x[14] == 500.0)
@constraint(m, e10, x[12]-x[14]+x[15] == 500.0)
@constraint(m, e11, x[4]+x[7] >= 400.0)
@constraint(m, e12, x[5]+x[8] >= 900.0)
@constraint(m, e13, x[6]+x[9] >= 700.0)
@NLconstraint(m, e14, -(0.005* (x[4])^2+x[4])-50*b[1]+x[10] == 0.0)
@NLconstraint(m, e15, -(0.005* (x[5])^2+x[5])-50*b[2]+x[11] == 0.0)
@NLconstraint(m, e16, -(0.005* (x[6])^2+x[6])-50*b[3]+x[12] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
