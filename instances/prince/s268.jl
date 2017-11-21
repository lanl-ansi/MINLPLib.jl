using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]-x[4]-x[5] >= -5.0)
@constraint(m, e2, 10*x[1]+10*x[2]-3*x[3]+5*x[4]+4*x[5] >= 20.0)
@constraint(m, e3, -8*x[1]+x[2]-2*x[3]-5*x[4]+3*x[5] >= -40.0)
@constraint(m, e4, 8*x[1]-x[2]+2*x[3]+5*x[4]-3*x[5] >= 11.0)
@constraint(m, e5, -4*x[1]-2*x[2]+3*x[3]-5*x[4]+x[5] >= -30.0)
@NLconstraint(m, e6, -(x[1]*(10197*x[1]-12454*x[2]-1013*x[3]+1948*x[4]+329*x[5])+x[2]*(20909*x[2]-12454*x[1]-1733*x[3]-4914*x[4]-186*x[5])+x[3]*(-1013*x[1]-1733*x[2]+1755*x[3]+1089*x[4]-174*x[5])+x[4]*(1948*x[1]-4914*x[2]+1089*x[3]+1515*x[4]-22*x[5])+x[5]*(329*x[1]-186*x[2]-174*x[3]-22*x[4]+27*x[5])+18340*x[1]-34198*x[2]+4542*x[3]+8672*x[4]+86*x[5])+objvar == 14463.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
