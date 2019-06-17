using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, i[i_Idx] >= -100, Int)


# ----- Constraints ----- #
@constraint(m, e1, objvar-9*i[2]-8*i[3]-7*i[4]-6*i[5]-5*i[6]-4*i[7]-3*i[8]-2*i[9]-i[10]-10*i[11] == 0.0)
@NLconstraint(m, e2, 100* (i[10])^2-98*i[10]+100* (i[9])^2-98*i[9]+100* (i[8])^2-98*i[8]+100* (i[7])^2-98*i[7]+100* (i[6])^2-98*i[6]+100* (i[5])^2-98*i[5]+100* (i[4])^2-98*i[4]+100* (i[3])^2-98*i[3]+100* (i[2])^2-98*i[2]+100* (i[11])^2-98*i[11]-2*i[10]*i[9]-2*i[10]*i[9]-2*i[8]*i[7]-2*i[8]*i[7]-2*i[6]*i[5]-2*i[6]*i[5]-2*i[4]*i[3]-2*i[4]*i[3]-2*i[2]*i[11]-2*i[2]*i[11] <= -1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
