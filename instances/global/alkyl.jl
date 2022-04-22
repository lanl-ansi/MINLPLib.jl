using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@variable(m, x[x_Idx])
set_lower_bound(x[5], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[2], 2.0)
set_upper_bound(x[3], 1.6)
set_upper_bound(x[4], 1.2)
set_upper_bound(x[5], 5.0)
set_upper_bound(x[6], 2.0)
set_lower_bound(x[7], 0.85)
set_upper_bound(x[7], 0.93)
set_lower_bound(x[8], 0.9)
set_upper_bound(x[8], 0.95)
set_lower_bound(x[9], 3.0)
set_upper_bound(x[9], 12.0)
set_lower_bound(x[10], 1.2)
set_upper_bound(x[10], 4.0)
set_lower_bound(x[11], 1.45)
set_upper_bound(x[11], 1.62)
set_lower_bound(x[12], 0.99)
set_upper_bound(x[12], 1.01010101010101)
set_lower_bound(x[13], 0.99)
set_upper_bound(x[13], 1.01010101010101)
set_lower_bound(x[14], 0.9)
set_upper_bound(x[14], 1.11111111111111)
set_lower_bound(x[15], 0.99)
set_upper_bound(x[15], 1.01010101010101)


# ----- Constraints ----- #
@NLconstraint(m, e1, 6.3*x[5]*x[8]+objvar-5.04*x[2]-0.35*x[3]-x[4]-3.36*x[6] == 0.0)
@constraint(m, e2, -0.819672131147541*x[2]+x[5]-0.819672131147541*x[6] == 0.0)
@NLconstraint(m, e3, 0.98*x[4]-x[7]*(0.01*x[5]*x[10]+x[4]) == 0.0)
@NLconstraint(m, e4, -x[2]*x[9]+10*x[3]+x[6] == 0.0)
@NLconstraint(m, e5, x[5]*x[12]-x[2]*(1.12+0.13167*x[9]-0.0067*x[9]*x[9]) == 0.0)
@NLconstraint(m, e6, x[8]*x[13]-0.01*(1.098*x[9]-0.038*x[9]*x[9])-0.325*x[7] == 0.57425)
@NLconstraint(m, e7, x[10]*x[14]+22.2*x[11] == 35.82)
@NLconstraint(m, e8, x[11]*x[15]-3*x[8] == -1.33)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
