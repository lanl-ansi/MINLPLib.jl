using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -10.0)
set_upper_bound(x[1], 10.0)
set_lower_bound(x[2], -10.0)
set_upper_bound(x[2], 10.0)
set_lower_bound(x[3], -10.0)
set_upper_bound(x[3], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-0.126)+x[1]*x[3]/(1+x[1]+x[2]))^2+ ((-0.219)+2*x[1]*x[3]/(1+2*x[1]+x[2]))^2+ ((-0.076)+x[1]*x[3]/(1+x[1]+2*x[2]))^2+ ((-0.126)+2*x[1]*x[3]/(1+2*x[1]+2*x[2]))^2+ ((-0.186)+0.1*x[1]*x[3]/(1+0.1*x[1]))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
