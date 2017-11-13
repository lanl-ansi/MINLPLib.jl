using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
setlowerbound(x[1], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1000.0)
setupperbound(x[2], 1000.0)
setupperbound(x[3], 1000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.126-x[1]*x[3]/(1+x[1]+x[2]))^2+ (0.219-2*x[1]*x[3]/(1+2*x[1]+x[2]))^2+ (0.076-x[1]*x[3]/(1+x[1]+2*x[2]))^2+ (0.126-2*x[1]*x[3]/(1+2*x[1]+2*x[2]))^2+ (0.186-0.1*x[1]*x[3]/(1+0.1*x[1]))^2+ (0.606-3*x[1]*x[3]/(1+3*x[1]))^2+ (0.268-0.2*x[1]*x[3]/(1+0.2*x[1]))^2+ (0.614-3*x[1]*x[3]/(1+3*x[1]))^2+ (0.318-0.3*x[1]*x[3]/(1+0.3*x[1]))^2+ (0.298-3*x[1]*x[3]/(1+3*x[1]+0.8*x[2]))^2+ (0.509-3*x[1]*x[3]/(1+3*x[1]))^2+ (0.247-0.2*x[1]*x[3]/(1+0.2*x[1]))^2+ (0.319-3*x[1]*x[3]/(1+3*x[1]+0.8*x[2]))^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])
m = m 		 # model get returned when including this script. 
