using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, i[i_Idx])
set_integer(i[8])
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_integer(i[7])
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_integer(i[11])
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_integer(i[9])
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_integer(i[10])
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_integer(i[6])
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(i[2], -100.0)
set_lower_bound(i[3], -100.0)
set_lower_bound(i[4], -100.0)
set_lower_bound(i[5], -100.0)
set_lower_bound(i[6], -100.0)
set_lower_bound(i[7], -100.0)
set_lower_bound(i[8], -100.0)
set_lower_bound(i[9], -100.0)
set_lower_bound(i[10], -100.0)
set_lower_bound(i[11], -100.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-9*i[2]-8*i[3]-7*i[4]-6*i[5]-5*i[6]-4*i[7]-3*i[8]-2*i[9]-i[10]-10*i[11] == 0.0)
@NLconstraint(m, e2, 100* (i[10])^2-98*i[10]+100* (i[9])^2-98*i[9]+100* (i[8])^2-98*i[8]+100* (i[7])^2-98*i[7]+100* (i[6])^2-98*i[6]+100* (i[5])^2-98*i[5]+100* (i[4])^2-98*i[4]+100* (i[3])^2-98*i[3]+100* (i[2])^2-98*i[2]+100* (i[11])^2-98*i[11]-2*i[10]*i[9]-2*i[10]*i[9]-2*i[8]*i[7]-2*i[8]*i[7]-2*i[6]*i[5]-2*i[6]*i[5]-2*i[4]*i[3]-2*i[4]*i[3]-2*i[2]*i[11]-2*i[2]*i[11] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.