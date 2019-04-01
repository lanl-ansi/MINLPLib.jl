using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, i[i_Idx], Int)
setupperbound(i[1], 1.0e15)
setupperbound(i[2], 1.0e15)
setupperbound(i[3], 1.0e15)
setupperbound(i[4], 1.0)
setupperbound(i[5], 1.0)
setupperbound(i[6], 2.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+2*i[2]+8*i[3]+i[4]+3*i[5]+5*i[6] <= 16.0)
@constraint(m, e2, -8*i[1]-4*i[2]-2*i[3]+2*i[4]+4*i[5]-i[6] <= -1.0)
@constraint(m, e3, 2*i[1]+0.5*i[2]+0.2*i[3]-3*i[4]-i[5]-4*i[6] <= 24.0)
@constraint(m, e4, 0.2*i[1]+2*i[2]+0.1*i[3]-4*i[4]+2*i[5]+2*i[6] <= 12.0)
@constraint(m, e5, -0.1*i[1]-0.5*i[2]+2*i[3]+5*i[4]-5*i[5]+3*i[6] <= 3.0)
@NLconstraint(m, e6, -(0.5*i[1]*i[1]+6.5*i[1]+7*i[6]*i[6]-i[6])+i[2]+2*i[3]-3*i[4]+2*i[5]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
