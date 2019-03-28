using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3]
@variable(m, 0 <= i[i_Idx] <= 200, Int)

# ----- Constraints ----- #
@NLconstraint(m, e1, (-9* (i[1])^2)-10*i[1]*i[2]-8* (i[2])^2-5* (i[3])^2-6*i[3]*i[1]-10*i[3]*i[2] >= -1000.0)
@NLconstraint(m, e2, (-6* (i[1])^2)-8*i[1]*i[2]-6* (i[2])^2-4* (i[3])^2-2*i[3]*i[1]-2*i[3]*i[2] >= -550.0)
@NLconstraint(m, e3, (-9* (i[1])^2)-6* (i[2])^2-8* (i[3])^2+2*i[2]*i[1]+2*i[3]*i[2] >= -340.0)
@NLconstraint(m, e4, -(7* (i[1])^2+6* (i[2])^2-15.8*i[1]-93.2*i[2]+8* (i[3])^2-6*i[3]*i[1]+4*i[3]*i[2]-63*i[3])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
