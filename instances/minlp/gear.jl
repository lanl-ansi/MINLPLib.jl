using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4]
@variable(m, 12 <= i[i_Idx] <= 60, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, - (0.14427932477276-i[1]*i[2]/(i[3]*i[4]))^2+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
