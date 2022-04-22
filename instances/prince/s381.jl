using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[10], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, 11.6*x[1]+13.7*x[2]+9.5*x[3]+48.5*x[4]+31.9*x[5]+51.1*x[6]+65.5*x[7]+21.8*x[11]+46.9*x[12] >= 18.0)
@constraint(m, e2, 0.05*x[1]+0.07*x[2]+0.33*x[4]+1.27*x[6]+1.27*x[7]+23.35*x[8]+35.84*x[9]+0.81*x[10]+1.79*x[11]+7.34*x[12] >= 1.0)
@constraint(m, e3, 0.35*x[1]+0.37*x[2]+0.1*x[3]+0.62*x[4]+1.03*x[6]+1.69*x[7]+18.21*x[8]+0.01*x[9]+0.08*x[10]+0.31*x[11]+1.59*x[12]+22.45*x[13] >= 0.9)
@constraint(m, e4, x[1]+x[2]+x[3]+x[4]+x[5]+x[6]+x[7]+x[8]+x[9]+x[10]+x[11]+x[12]+x[13] == 1.0)
@constraint(m, e5, -0.8*x[1]-1.1*x[2]-0.85*x[3]-3.45*x[4]-2*x[5]-2.1*x[6]-3*x[7]-0.8*x[8]-0.45*x[9]-0.72*x[10]-1.8*x[11]-3*x[12]-0.6*x[13]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
