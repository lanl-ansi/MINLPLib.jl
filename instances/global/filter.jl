using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[1], 900.0)
setlowerbound(x[2], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(116*(10000000/(-288000+1440*x[1])/(10+x[1]/x[2]))^0.86+47300*x[1]/(-200+x[1]))+objvar == -47300.0)
@NLconstraint(m, e2, -2100*log10(41.1522633744856/x[2])+x[1] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
