using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, exp(-(3* ((-0.3689)+x[1])^2+10* ((-0.117)+x[2])^2+30* ((-0.2673)+x[3])^2))+1.2*exp(-(0.1* ((-0.4699)+x[1])^2+10* ((-0.4387)+x[2])^2+35* ((-0.747)+x[3])^2))+3*exp(-(3* ((-0.1091)+x[1])^2+10* ((-0.8732)+x[2])^2+30* ((-0.5547)+x[3])^2))+3.2*exp(-(0.1* ((-0.03815)+x[1])^2+10* ((-0.5743)+x[2])^2+35* ((-0.8828)+x[3])^2))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
