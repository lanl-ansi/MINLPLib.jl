using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ( ((-1)+x[1])^2)^3+8* ( ((-1)+x[2])^2)^3+27* ( ((-1)+x[3])^2)^3+64* ( ((-1)+x[4])^2)^3+125* ( ((-1)+x[5])^2)^3+216* ( ((-1)+x[6])^2)^3+343* ( ((-1)+x[7])^2)^3+512* ( ((-1)+x[8])^2)^3+729* ( ((-1)+x[9])^2)^3+1000* ( ((-1)+x[10])^2)^3)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
