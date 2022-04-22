using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+x[2] <= 0.0)
@constraint(m, e2, -x[1]+x[3] <= 0.0)
@constraint(m, e3, -x[1]+x[4] <= 0.0)
@constraint(m, e4, -x[1]+x[5] <= 0.0)
@constraint(m, e5, -x[1]+x[6] <= 0.0)
@constraint(m, e6, -x[1]+x[7] <= 0.0)
@constraint(m, e7, -x[1]+x[8] <= 0.0)
@constraint(m, e8, -x[1]+x[9] <= 0.0)
@constraint(m, e9, -x[1]+x[10] <= 0.0)
@constraint(m, e10, -x[1]+x[11] <= 0.0)
@constraint(m, e11, -x[1]+x[12] <= 0.0)
@constraint(m, e12, -x[1]+x[13] <= 0.0)
@constraint(m, e13, -x[1]+x[14] <= 0.0)
@constraint(m, e14, -x[1]+x[15] <= 0.0)
@constraint(m, e15, -x[1]+x[16] <= 0.0)
@constraint(m, e16, -x[1]+x[17] <= 0.0)
@constraint(m, e17, -x[1]+x[18] <= 0.0)
@constraint(m, e18, -x[1]+x[19] <= 0.0)
@constraint(m, e19, -x[1]+x[20] <= 0.0)
@constraint(m, e20, -x[1]+x[21] <= 0.0)
@constraint(m, e21, -x[1]-x[2] <= 0.0)
@constraint(m, e22, -x[1]-x[3] <= 0.0)
@constraint(m, e23, -x[1]-x[4] <= 0.0)
@constraint(m, e24, -x[1]-x[5] <= 0.0)
@constraint(m, e25, -x[1]-x[6] <= 0.0)
@constraint(m, e26, -x[1]-x[7] <= 0.0)
@constraint(m, e27, -x[1]-x[8] <= 0.0)
@constraint(m, e28, -x[1]-x[9] <= 0.0)
@constraint(m, e29, -x[1]-x[10] <= 0.0)
@constraint(m, e30, -x[1]-x[11] <= 0.0)
@constraint(m, e31, -x[1]-x[12] <= 0.0)
@constraint(m, e32, -x[1]-x[13] <= 0.0)
@constraint(m, e33, -x[1]-x[14] <= 0.0)
@constraint(m, e34, -x[1]-x[15] <= 0.0)
@constraint(m, e35, -x[1]-x[16] <= 0.0)
@constraint(m, e36, -x[1]-x[17] <= 0.0)
@constraint(m, e37, -x[1]-x[18] <= 0.0)
@constraint(m, e38, -x[1]-x[19] <= 0.0)
@constraint(m, e39, -x[1]-x[20] <= 0.0)
@constraint(m, e40, -x[1]-x[21] <= 0.0)
@constraint(m, e41, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
