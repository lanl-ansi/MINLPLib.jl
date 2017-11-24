using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.25)
setupperbound(x[1], 1.0)
setlowerbound(x[2], 1.5)
setupperbound(x[2], 6.28)


# ----- Constraints ----- #
@NLconstraint(m, e1, 0.5*sin(x[1]*x[2])-0.5*x[1]-0.0795774703703634*x[2]-x[3] <= 0.0)
@NLconstraint(m, e2, 0.920422529629637*exp(2*x[1])-5.4365636*x[1]+0.865255957591193*x[2]-x[3] <= 2.5019678106022)
@NLconstraint(m, e3, 0.5*x[1]-0.5*sin(x[1]*x[2])+0.0795774703703634*x[2]-x[3] <= 0.0)
@constraint(m, e4, -x[3]+objvar == 0.0)
@NLconstraint(m, e5, 5.4365636*x[1]-0.920422529629637*exp(2*x[1])-0.865255957591193*x[2]-x[3] <= -2.5019678106022)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
