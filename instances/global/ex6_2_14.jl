using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5]
@variable(m, x[x_Idx])
setlowerbound(x[2], 1.0e-7)
setupperbound(x[2], 0.5)
setlowerbound(x[3], 1.0e-7)
setupperbound(x[3], 0.5)
setlowerbound(x[4], 1.0e-7)
setupperbound(x[4], 0.5)
setlowerbound(x[5], 1.0e-7)
setupperbound(x[5], 0.5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*(log(x[2]/(x[2]+x[4]))+log(x[2]/(x[2]+0.095173*x[4])))+x[4]*(log(x[4]/(x[2]+x[4]))+log(x[4]/(0.30384*x[2]+x[4])))+(x[2]+2.6738*x[4])*log(x[2]+2.6738*x[4])+(0.374*x[2]+x[4])*log(0.374*x[2]+x[4])+2.6738*x[4]*log(x[4]/(x[2]+2.6738*x[4]))+0.374*x[2]*log(x[2]/(0.374*x[2]+x[4]))+x[3]*(log(x[3]/(x[3]+x[5]))+log(x[3]/(x[3]+0.095173*x[5])))+x[5]*(log(x[5]/(x[3]+x[5]))+log(x[5]/(0.30384*x[3]+x[5])))+(x[3]+2.6738*x[5])*log(x[3]+2.6738*x[5])+(0.374*x[3]+x[5])*log(0.374*x[3]+x[5])+2.6738*x[5]*log(x[5]/(x[3]+2.6738*x[5]))+0.374*x[3]*log(x[3]/(0.374*x[3]+x[5]))-3.6838*x[2]*log(x[2])-1.59549*x[4]*log(x[4])-3.6838*x[3]*log(x[3])-1.59549*x[5]*log(x[5]))+objvar == 0.0)
@constraint(m, e2, x[2]+x[3] == 0.5)
@constraint(m, e3, x[4]+x[5] == 0.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
