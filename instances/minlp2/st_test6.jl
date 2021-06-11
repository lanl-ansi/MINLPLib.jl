using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx], Int)
# settcategory(i[8], :Int)
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
# settcategory(i[5], :Int)
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
# settcategory(i[4], :Int)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
# settcategory(i[7], :Int)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
# settcategory(i[3], :Int)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
# settcategory(i[9], :Int)
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
# settcategory(i[1], :Int)
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
# settcategory(i[10], :Int)
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
# settcategory(i[2], :Int)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
# settcategory(i[6], :Int)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_upper_bound(i[1], 1.0)
set_upper_bound(i[2], 1.0)
set_upper_bound(i[3], 1.0)
set_upper_bound(i[4], 1.0)
set_upper_bound(i[5], 1.0)
set_upper_bound(i[6], 1.0)
set_upper_bound(i[7], 1.0)
set_upper_bound(i[8], 1.0)
set_upper_bound(i[9], 1.0)
set_upper_bound(i[10], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, -2*i[1]-6*i[2]-i[3]-3*i[5]-3*i[6]-2*i[7]-6*i[8]-2*i[9]-2*i[10] <= -4.0)
@constraint(m, e2, 6*i[1]-5*i[2]+8*i[3]-3*i[4]+i[6]+3*i[7]+8*i[8]+9*i[9]-3*i[10] <= 22.0)
@constraint(m, e3, -5*i[1]+6*i[2]+5*i[3]+3*i[4]+8*i[5]-8*i[6]+9*i[7]+2*i[8]-9*i[10] <= -6.0)
@constraint(m, e4, 9*i[1]+5*i[2]-9*i[4]+i[5]-8*i[6]+3*i[7]-9*i[8]-9*i[9]-3*i[10] <= -23.0)
@constraint(m, e5, -8*i[1]+7*i[2]-4*i[3]-5*i[4]-9*i[5]+i[6]-7*i[7]-i[8]+3*i[9]-2*i[10] <= -12.0)
@NLconstraint(m, e6, -(50*i[1]*i[1]+48*i[1]+50*i[2]*i[2]+42*i[2]+50*i[3]*i[3]+48*i[3]+50*i[4]*i[4]+45*i[4]+50*i[5]*i[5]+44*i[5]+50*i[6]*i[6]+41*i[6]+50*i[7]*i[7]+47*i[7]+50*i[8]*i[8]+42*i[8]+50*i[9]*i[9]+45*i[9]+50*i[10]*i[10]+46*i[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
