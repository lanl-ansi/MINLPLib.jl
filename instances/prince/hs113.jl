using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@constraint(m, e1, -4*x[1]-5*x[2]+3*x[7]-9*x[8] >= -105.0)
@constraint(m, e2, -10*x[1]+8*x[2]+17*x[7]-2*x[8] >= 0.0)
@constraint(m, e3, 8*x[1]-2*x[2]-5*x[9]+2*x[10] >= -12.0)
@NLconstraint(m, e4, (-3* ((-2)+x[1])^2)-4* ((-3)+x[2])^2-2* (x[3])^2+7*x[4] >= -120.0)
@NLconstraint(m, e5, (-5* (x[1])^2)- ((-6)+x[3])^2-8*x[2]+2*x[4] >= -40.0)
@NLconstraint(m, e6, (-0.5* ((-8)+x[1])^2)-2* ((-4)+x[2])^2-3* (x[5])^2+x[6] >= -30.0)
@NLconstraint(m, e7, (- (x[1])^2)-2* ((-2)+x[2])^2+2*x[1]*x[2]-14*x[5]+6*x[6] >= 0.0)
@NLconstraint(m, e8, -12* ((-8)+x[9])^2+3*x[1]-6*x[2]+7*x[10] >= 0.0)
@NLconstraint(m, e9, -( (x[1])^2+ (x[2])^2+x[1]*x[2]-14*x[1]-16*x[2]+ ((-10)+x[3])^2+4* ((-5)+x[4])^2+ ((-3)+x[5])^2+2* ((-1)+x[6])^2+5* (x[7])^2+7* ((-11)+x[8])^2+2* ((-10)+x[9])^2+ ((-7)+x[10])^2)+objvar == 45.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
