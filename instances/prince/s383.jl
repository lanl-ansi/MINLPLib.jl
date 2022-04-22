using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
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
set_upper_bound(x[1], 0.04)
set_upper_bound(x[2], 0.04)
set_upper_bound(x[3], 0.04)
set_upper_bound(x[4], 0.04)
set_upper_bound(x[5], 0.04)
set_upper_bound(x[6], 0.03)
set_upper_bound(x[7], 0.03)
set_upper_bound(x[8], 0.03)
set_upper_bound(x[9], 0.03)
set_upper_bound(x[10], 0.03)
set_upper_bound(x[11], 0.03)
set_upper_bound(x[12], 0.03)
set_upper_bound(x[13], 0.03)
set_upper_bound(x[14], 0.03)


# ----- Constraints ----- #
@constraint(m, e1, 5.47934*x[1]+0.83234*x[2]+0.94749*x[3]+1.11082*x[4]+2.64824*x[5]+1.55868*x[6]+1.73215*x[7]+3.90896*x[8]+2.74284*x[9]+2.60541*x[10]+5.96184*x[11]+3.29522*x[12]+1.83517*x[13]+2.81372*x[14] == 1.0)
@NLconstraint(m, e2, -(12842.275/x[1]+634.25/x[2]+634.25/x[3]+634.125/x[4]+1268/x[5]+633.875/x[6]+633.75/x[7]+1267/x[8]+760.05/x[9]+633.25/x[10]+1266.25/x[11]+632.875/x[12]+394.46/x[13]+940.838/x[14])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
