using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[3]
@variable(m, 0 <= x[x_Idx] <= 100)
i_Idx = Any[1, 2]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, 420.169404664517*sqrt(900+ (i[1])^2)-x[3]*i[1]*i[2] == 0.0)
@constraint(m, e2, -x[3] >= -100.0)
@NLconstraint(m, e3, 296087.631843*(0.01+0.0625* (i[2])^2)/(7200+ (i[1])^2)-x[3] >= 0.0)
@NLconstraint(m, e4, -0.04712385*i[2]*sqrt(900+ (i[1])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
