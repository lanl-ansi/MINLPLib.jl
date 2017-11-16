using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[2]*log(x[2])+x[3]*log(x[3])+x[4]*log(x[4])-log(x[5]-x[7])+x[5]-0.353553390593274*x[6]*log((x[5]+2.41421356237309*x[7])/(x[5]-0.414213562373095*x[7]))/x[7]+1.42876598488588*x[2]+1.27098480432594*x[3]+1.62663700075562*x[4])+objvar == -1.0)
@NLconstraint(m, e2,  (x[5])^3-(1-x[7])* (x[5])^2+(-3* (x[7])^2-2*x[7]+x[6])*x[5]-x[6]*x[7]+ (x[7])^3+ (x[7])^2 == 0.0)
@NLconstraint(m, e3, -(0.142724*x[2]*x[2]+0.206577*x[2]*x[3]+0.342119*x[2]*x[4]+0.206577*x[3]*x[2]+0.323084*x[3]*x[3]+0.547748*x[3]*x[4]+0.342119*x[4]*x[2]+0.547748*x[4]*x[3]+0.968906*x[4]*x[4])+x[6] == 0.0)
@constraint(m, e4, -0.0815247*x[2]-0.0907391*x[3]-0.13705*x[4]+x[7] == 0.0)
@constraint(m, e5, x[2]+x[3]+x[4] == 1.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
