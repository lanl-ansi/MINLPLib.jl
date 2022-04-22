using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
LB = [0, 90, 20]
UB = [92, 110, 25]
@variable(m, LB[i] <= x[i in x_Idx] <= UB[i])
i_Idx = Any[1, 2, 3, 4, 5]
@variable(m, 0 <= i[i_Idx] <= 200, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.0056858*i[2]*i[5]+0.0006262*i[1]*i[4]-0.0022053*i[3]*i[5])+x[1] == 85.334407)
@NLconstraint(m, e2, -(0.0071317*i[2]*i[5]+0.0029955*i[1]*i[2]+0.0021813* (i[3])^2)+x[2] == 80.51249)
@NLconstraint(m, e3, -(0.0047026*i[3]*i[5]+0.0012547*i[1]*i[3]+0.0019085*i[3]*i[4])+x[3] == 9.300961)
@NLconstraint(m, e4, -(5.3578547* (i[3])^2+0.8356891*i[1]*i[5]+37.293239*i[1])+objvar == -40792.141)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
