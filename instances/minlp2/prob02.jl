using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
i_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, 1 <= i[i_Idx] <= 100, Int)


# ----- Constraints ----- #
@constraint(m, e1, -8000*i[1]+330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6]+objvar == 0.0)
@constraint(m, e2, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] <= 8000.0)
@constraint(m, e3, 330*i[2]+360*i[3]+370*i[4]+415*i[5]+435*i[6] >= 7700.0)
@constraint(m, e4, i[2]+i[3]+i[4]+i[5]+i[6] <= 20.0)
@NLconstraint(m, e5, -i[1]*i[2] <= -60.0)
@NLconstraint(m, e6, -i[1]*i[3] <= -30.0)
@NLconstraint(m, e7, -i[1]*i[4] <= -75.0)
@NLconstraint(m, e8, -i[1]*i[5] <= -30.0)
@NLconstraint(m, e9, -i[1]*i[6] <= -100.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
