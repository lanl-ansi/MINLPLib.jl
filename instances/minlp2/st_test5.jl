using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx], Int)
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
@constraint(m, e6, -7*i[1]-5*i[2]-2*i[3]-6*i[5]-6*i[6]-7*i[7]-6*i[8]+7*i[9]+7*i[10] <= -3.0)
@constraint(m, e7, i[1]-3*i[2]-3*i[3]-4*i[4]-i[5]-4*i[7]+i[8]+6*i[9] <= 1.0)
@constraint(m, e8, i[1]-2*i[2]+6*i[3]+9*i[4]-7*i[6]+9*i[7]-9*i[8]-6*i[9]+4*i[10] <= 12.0)
@constraint(m, e9, -4*i[1]+6*i[2]+7*i[3]+2*i[4]+2*i[5]+6*i[7]+6*i[8]-7*i[9]+4*i[10] <= 15.0)
@constraint(m, e10, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10] <= 9.0)
@constraint(m, e11, -i[1]-i[2]-i[3]-i[4]-i[5]-i[6]-i[7]-i[8]-i[9]-i[10] <= -1.0)
@NLconstraint(m, e12, -(5*i[1]*i[1]-20*i[1]+5*i[2]*i[2]-80*i[2]+5*i[3]*i[3]-20*i[3]+5*i[4]*i[4]-50*i[4]+5*i[5]*i[5]-60*i[5]+5*i[6]*i[6]-90*i[6]+5*i[7]*i[7])-10*i[8]-10*i[9]-10*i[10]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
