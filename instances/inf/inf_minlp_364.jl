using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, i[i_Idx], Int)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[17], 0.0)
# settcategory(i[5], :Int)
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
# settcategory(i[3], :Int)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
# settcategory(i[2], :Int)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
# settcategory(i[6], :Int)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
# settcategory(i[4], :Int)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(x[15], 0.0)
# settcategory(i[7], :Int)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
# settcategory(i[1], :Int)
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(i[1], 7.0)
set_upper_bound(i[2], 7.0)
set_upper_bound(i[3], 7.0)
set_upper_bound(i[4], 7.0)
set_upper_bound(i[5], 7.0)
set_upper_bound(i[6], 7.0)
set_upper_bound(i[7], 7.0)
set_lower_bound(x[8], 420.0)
set_upper_bound(x[8], 425.0)
set_lower_bound(x[9], 1.4)
set_upper_bound(x[9], 1.6)
set_upper_bound(x[10], 0.009)
set_lower_bound(x[11], 3.3e-5)
set_lower_bound(x[12], 10.0)
set_lower_bound(x[13], 2700.0)
set_lower_bound(x[14], 14.0)


# ----- Constraints ----- #
@constraint(m, e1, x[16] == 1.5)
@constraint(m, e2, x[15] == 423.0)
@constraint(m, e3, x[17] == 0.005)
@constraint(m, e4, -14*i[1]-28*i[2]-44*i[3]-16*i[4]-43*i[5]-30*i[6]-48.5*i[7]+x[14] == 0.0)
@NLconstraint(m, e5, -x[13]/x[14]+x[8] == 0.0)
@constraint(m, e6, -2700*i[1]-27000*i[2]-8000*i[3]-4000*i[4]-12000*i[5]-13000*i[6]-20000*i[7]+x[13] == 0.0)
@constraint(m, e7, -3.3E-5*i[1]-0.11*i[2]-0.075*i[3]-0.02*i[4]-0.75*i[5]-0.75*i[6]-0.015*i[7]+x[11] == 0.0)
@constraint(m, e8, -15.85*i[1]-13.4*i[2]-23*i[3]-10*i[4]-24.9*i[5]-19.15*i[6]-29.35*i[7]+x[12] == 0.0)
@NLconstraint(m, e9, -x[14]/x[12]+x[9] == 0.0)
@NLconstraint(m, e10, -18*x[11]/x[14]+x[10] == 0.0)
@NLconstraint(m, e11, -( ((x[15]-x[8])/x[15])^2+ ((x[16]-x[9])/x[16])^2+ ((x[17]-x[10])/x[17])^2)+x[18] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[18])

m = m 		 # model get returned when including this script. 
