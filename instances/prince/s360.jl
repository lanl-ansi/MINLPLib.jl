using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 1.2)
set_upper_bound(x[2], 2.4)
set_lower_bound(x[3], 20.0)
set_upper_bound(x[3], 60.0)
set_lower_bound(x[4], 9.0)
set_upper_bound(x[4], 9.3)
set_lower_bound(x[5], 6.5)
set_upper_bound(x[5], 7.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, (-326669.5104+7390.68412*x[2]-27.8986976*x[3]+16643.076*x[4]+30988.146*x[5])*x[1] >= 0.0)
@NLconstraint(m, e2, -(-326669.5104+7390.68412*x[2]-27.8986976*x[3]+16643.076*x[4]+30988.146*x[5])*x[1] >= -277200.0)
@NLconstraint(m, e3, -(8720288.849-150512.5253*x[2]+156.6950325*x[3]-476470.3222*x[4]-729482.8271*x[5])*x[1]+objvar == 24345.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
