using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[1], 0.5)
set_upper_bound(x[1], 1.0)
set_lower_bound(x[2], 0.5)
set_upper_bound(x[2], 1.0)
set_lower_bound(x[3], 0.5)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 2*x[1]*x[2]-x[1]*x[1]-x[2]*x[2]-x[7]*x[7]+2*x[7]*x[8]-x[8]*x[8]+objvar <= 0.0)
@NLconstraint(m, e2, 2*x[1]*x[3]-x[1]*x[1]-x[3]*x[3]-x[7]*x[7]+2*x[7]*x[9]-x[9]*x[9]+objvar <= 0.0)
@NLconstraint(m, e3, 2*x[1]*x[4]-x[1]*x[1]-x[4]*x[4]-x[7]*x[7]+2*x[7]*x[10]-x[10]*x[10]+objvar <= 0.0)
@NLconstraint(m, e4, 2*x[1]*x[5]-x[1]*x[1]-x[5]*x[5]-x[7]*x[7]+2*x[7]*x[11]-x[11]*x[11]+objvar <= 0.0)
@NLconstraint(m, e5, 2*x[1]*x[6]-x[1]*x[1]-x[6]*x[6]-x[7]*x[7]+2*x[7]*x[12]-x[12]*x[12]+objvar <= 0.0)
@NLconstraint(m, e6, 2*x[2]*x[3]-x[2]*x[2]-x[3]*x[3]-x[8]*x[8]+2*x[8]*x[9]-x[9]*x[9]+objvar <= 0.0)
@NLconstraint(m, e7, 2*x[2]*x[4]-x[2]*x[2]-x[4]*x[4]-x[8]*x[8]+2*x[8]*x[10]-x[10]*x[10]+objvar <= 0.0)
@NLconstraint(m, e8, 2*x[2]*x[5]-x[2]*x[2]-x[5]*x[5]-x[8]*x[8]+2*x[8]*x[11]-x[11]*x[11]+objvar <= 0.0)
@NLconstraint(m, e9, 2*x[2]*x[6]-x[2]*x[2]-x[6]*x[6]-x[8]*x[8]+2*x[8]*x[12]-x[12]*x[12]+objvar <= 0.0)
@NLconstraint(m, e10, 2*x[3]*x[4]-x[3]*x[3]-x[4]*x[4]-x[9]*x[9]+2*x[9]*x[10]-x[10]*x[10]+objvar <= 0.0)
@NLconstraint(m, e11, 2*x[3]*x[5]-x[3]*x[3]-x[5]*x[5]-x[9]*x[9]+2*x[9]*x[11]-x[11]*x[11]+objvar <= 0.0)
@NLconstraint(m, e12, 2*x[3]*x[6]-x[3]*x[3]-x[6]*x[6]-x[9]*x[9]+2*x[9]*x[12]-x[12]*x[12]+objvar <= 0.0)
@NLconstraint(m, e13, 2*x[4]*x[5]-x[4]*x[4]-x[5]*x[5]-x[10]*x[10]+2*x[10]*x[11]-x[11]*x[11]+objvar <= 0.0)
@NLconstraint(m, e14, 2*x[4]*x[6]-x[4]*x[4]-x[6]*x[6]-x[10]*x[10]+2*x[10]*x[12]-x[12]*x[12]+objvar <= 0.0)
@NLconstraint(m, e15, 2*x[5]*x[6]-x[5]*x[5]-x[6]*x[6]-x[11]*x[11]+2*x[11]*x[12]-x[12]*x[12]+objvar <= 0.0)
@constraint(m, e16, -x[7]+x[8] <= 0.0)
@constraint(m, e17, -x[1]+x[2] <= 0.0)
@constraint(m, e18, -x[2]+x[3] <= 0.0)
@constraint(m, e19, -x[3]+x[4] <= 0.0)
@constraint(m, e20, -x[4]+x[5] <= 0.0)
@constraint(m, e21, -x[5]+x[6] <= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

 
