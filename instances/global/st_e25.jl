using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.488509*x[1]+0.063565*x[2]+0.945686*x[3]+0.210704*x[4] <= 3.562809)
@constraint(m, e2, -0.324014*x[1]-0.501754*x[2]-0.719204*x[3]+0.099562*x[4] <= -0.052215)
@constraint(m, e3, 0.445225*x[1]-0.346896*x[2]+0.637939*x[3]-0.257623*x[4] <= 0.42792)
@constraint(m, e4, -0.202821*x[1]+0.647361*x[2]+0.920135*x[3]+0.983091*x[4] <= 0.84095)
@constraint(m, e5, -0.88642*x[1]-0.802444*x[2]-0.305441*x[3]-0.180123*x[4] <= -1.353686)
@constraint(m, e6, -0.515399*x[1]-0.42482*x[2]+0.897498*x[3]+0.187268*x[4] <= 2.137251)
@constraint(m, e7, -0.591515*x[1]+0.060581*x[2]-0.427365*x[3]+0.579388*x[4] <= -0.290987)
@constraint(m, e8, 0.423524*x[1]+0.940496*x[2]-0.437944*x[3]-0.742941*x[4] <= 0.37362)
@NLconstraint(m, e9, -(0.217796+0.813396*x[1]+0.67444*x[2]+0.305038*x[3]+0.129742*x[4])*(0.091947+0.224508*x[1]+0.063458*x[2]+0.93223*x[3]+0.528736*x[4])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
