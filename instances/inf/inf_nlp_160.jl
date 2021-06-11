using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, x[x_Idx])
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[12], 0.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -((3.5+x[7]*x[3]+3*x[3]+0.5*x[7]+x[8]*x[5]+4*x[5]+0.5*x[8])*x[1]+(3.5+x[7]*x[4]+3*x[4]+0.5*x[7]+x[8]*x[6]+4*x[6]+0.5*x[8])*x[2]-(x[9]*(x[3]+x[5])+x[10]*(x[4]+x[6]))-((0.447213595499958-sqrt(x[3]))*x[16]+(0.948683298050514-sqrt(x[4]))*x[17]+(0.447213595499958-sqrt(x[5]))*x[18]+(0.836660026534076-sqrt(x[6]))*x[19])-((5-( (x[3])^2+ (x[5])^2))*x[11]+(5-( (x[4])^2+ (x[6])^2))*x[12])-((5- (x[7])^2)*x[13]+(7- (x[8])^2)*x[14])-(6-(sqrt(x[7])+sqrt(x[8])))*x[15])+x[20] == 0.0)
@constraint(m, e2, x[1]+x[2] == 1.0)
@NLconstraint(m, e3, x[1]*x[3]+0.5*x[1]+2*x[13]*x[7]+2*x[15]*x[7] == 0.0)
@NLconstraint(m, e4, x[2]*x[4]+0.5*x[2]+2*x[13]*x[7]+2*x[15]*x[7] == 0.0)
@NLconstraint(m, e5, x[1]*x[5]+0.5*x[1]+2*x[14]*x[8]+2*x[15]*x[8] == 0.0)
@NLconstraint(m, e6, x[2]*x[6]+0.5*x[2]+2*x[14]*x[8]+2*x[15]*x[8] == 0.0)
@NLconstraint(m, e7, x[1]*x[7]+3*x[1]+2*x[16]*x[3]+2*x[11]*x[3]-x[9] == 0.0)
@NLconstraint(m, e8, x[2]*x[7]+3*x[2]+2*x[17]*x[4]+2*x[12]*x[4]-x[10] == 0.0)
@NLconstraint(m, e9, x[1]*x[8]+4*x[1]+2*x[18]*x[5]+2*x[11]*x[5]-x[9] == 0.0)
@NLconstraint(m, e10, x[2]*x[8]+4*x[2]+2*x[19]*x[6]+2*x[12]*x[6]-x[10] == 0.0)


# ----- Objective ----- #
@objective(m, Max, x[20])

m = m 		 # model get returned when including this script. 
