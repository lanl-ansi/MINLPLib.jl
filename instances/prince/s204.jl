using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.2537*(x[1]*(5.66598*x[1]+2.77141*x[2])+x[2]*(2.77141*x[1]+2.12413*x[2]))-0.564255*x[1]+0.392417*x[2])+x[3] == 0.13294)
@NLconstraint(m, e2, -(-0.682005*(x[1]*(5.66598*x[1]+2.77141*x[2])+x[2]*(2.77141*x[1]+2.12413*x[2]))-0.404979*x[1]+0.927589*x[2])+x[4] == -0.244378)
@NLconstraint(m, e3, -(0.51141*(x[1]*(5.66598*x[1]+2.77141*x[2])+x[2]*(2.77141*x[1]+2.12413*x[2]))-0.0735084*x[1]+0.535493*x[2])+x[5] == 0.325895)
@NLconstraint(m, e4, -( (x[3])^2+ (x[4])^2+ (x[5])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
