using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, i[2]* (i[3])^2+5*i[3]+3*i[1] >= 10.0)
@constraint(m, e2, i[1]-i[3] >= 2.66)
@NLconstraint(m, e3, -2* (i[2])^2-i[1]-5*i[3]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
