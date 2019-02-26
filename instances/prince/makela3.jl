using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1,  (x[2])^2-x[1] <= 0.0)
@NLconstraint(m, e2,  (x[3])^2-x[1] <= 0.0)
@NLconstraint(m, e3,  (x[4])^2-x[1] <= 0.0)
@NLconstraint(m, e4,  (x[5])^2-x[1] <= 0.0)
@NLconstraint(m, e5,  (x[6])^2-x[1] <= 0.0)
@NLconstraint(m, e6,  (x[7])^2-x[1] <= 0.0)
@NLconstraint(m, e7,  (x[8])^2-x[1] <= 0.0)
@NLconstraint(m, e8,  (x[9])^2-x[1] <= 0.0)
@NLconstraint(m, e9,  (x[10])^2-x[1] <= 0.0)
@NLconstraint(m, e10,  (x[11])^2-x[1] <= 0.0)
@NLconstraint(m, e11,  (x[12])^2-x[1] <= 0.0)
@NLconstraint(m, e12,  (x[13])^2-x[1] <= 0.0)
@NLconstraint(m, e13,  (x[14])^2-x[1] <= 0.0)
@NLconstraint(m, e14,  (x[15])^2-x[1] <= 0.0)
@NLconstraint(m, e15,  (x[16])^2-x[1] <= 0.0)
@NLconstraint(m, e16,  (x[17])^2-x[1] <= 0.0)
@NLconstraint(m, e17,  (x[18])^2-x[1] <= 0.0)
@NLconstraint(m, e18,  (x[19])^2-x[1] <= 0.0)
@NLconstraint(m, e19,  (x[20])^2-x[1] <= 0.0)
@NLconstraint(m, e20,  (x[21])^2-x[1] <= 0.0)
@constraint(m, e21, -x[1]+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.