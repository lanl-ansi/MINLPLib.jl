using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, i[i_Idx] <= 100, Int)


# ----- Constraints ----- #
@constraint(m, e1, 8*i[1]+7*i[2]+9*i[3]+9*i[5]+8*i[6]+2*i[7]+4*i[9]+i[10] <= 530.0)
@constraint(m, e2, 3*i[1]+4*i[2]+6*i[3]+9*i[4]+6*i[6]+9*i[7]+i[8]+i[10] <= 395.0)
@constraint(m, e3, 2*i[2]+i[3]+5*i[4]+5*i[5]+7*i[7]+4*i[8]+2*i[9] <= 350.0)
@constraint(m, e4, 5*i[1]+7*i[3]+i[4]+7*i[5]+5*i[6]+7*i[8]+9*i[9]+5*i[10] <= 405.0)
@constraint(m, e5, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10] <= 200.0)
@NLconstraint(m, e6, -(0.00055*i[1]*i[1]-0.0583*i[1]+0.0019*i[2]*i[2]+0.2318*i[2]+0.0002*i[3]*i[3]-0.0108*i[3]+0.00095*i[4]*i[4]+0.1634*i[4]+0.0046*i[5]*i[5]-0.138*i[5]+0.0035*i[6]*i[6]+0.357*i[6]+0.00315*i[7]*i[7]-0.1953*i[7]+0.00475*i[8]*i[8]-0.361*i[8]+0.0048*i[9]*i[9]+0.1824*i[9]+0.003*i[10]*i[10]-0.162*i[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
