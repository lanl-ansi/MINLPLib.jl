using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2]
@variable(m, 1 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -0.1*( (i[1])^2+(1+ (i[2])^2)/ (i[1])^2+(100+ (i[1])^2* (i[2])^2)/ (i[1]*i[2])^4)+objvar == 1.2)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
