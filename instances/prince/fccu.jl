using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, x[1]-x[2]+x[9] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4]-x[5]-x[6]-x[7] == 0.0)
@constraint(m, e3, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e4, x[3]-x[10]-x[11]+x[14] == 0.0)
@constraint(m, e5, x[11]-x[12]-x[13] == 0.0)
@constraint(m, e6, x[13]-x[14]-x[17] == 0.0)
@constraint(m, e7, x[12]-x[15]-x[16] == 0.0)
@constraint(m, e8, x[17]-x[18]-x[19] == 0.0)
@NLconstraint(m, e9, -(5* ((-31)+x[1])^2+ ((-36)+x[2])^2+ ((-20)+x[3])^2+3.00000003* ((-3)+x[4])^2+3.00000003* ((-5)+x[5])^2+3.00000003* ((-3.5)+x[6])^2+ ((-4.2)+x[7])^2+ ((-0.9)+x[8])^2+ ((-3.9)+x[9])^2+ ((-2.2)+x[10])^2+ ((-22.8)+x[11])^2+ ((-6.8)+x[12])^2+ ((-19)+x[13])^2+ ((-8.5)+x[14])^2+3.00000003* ((-2.2)+x[15])^2+3.00000003* ((-2.5)+x[16])^2+ ((-10.8)+x[17])^2+3.00000003* ((-6.5)+x[18])^2+3.00000003* ((-6.5)+x[19])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
