using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.1957-x[1]*(16+4*x[2])/(16+4*x[3]+x[4]))^2+ (0.1947-x[1]*(4+2*x[2])/(4+2*x[3]+x[4]))^2+ (0.1735-x[1]*(1+x[2])/(1+x[3]+x[4]))^2+ (0.16-x[1]*(0.25+0.5*x[2])/(0.25+0.5*x[3]+x[4]))^2+ (0.0844-x[1]*(0.0625+0.25*x[2])/(0.0625+0.25*x[3]+x[4]))^2+ (0.0627-x[1]*(0.027889+0.167*x[2])/(0.027889+0.167*x[3]+x[4]))^2+ (0.0456-x[1]*(0.015625+0.125*x[2])/(0.015625+0.125*x[3]+x[4]))^2+ (0.0342-x[1]*(0.01+0.1*x[2])/(0.01+0.1*x[3]+x[4]))^2+ (0.0323-x[1]*(0.00693889+0.0833*x[2])/(0.00693889+0.0833*x[3]+x[4]))^2+ (0.0235-x[1]*(0.00509796+0.0714*x[2])/(0.00509796+0.0714*x[3]+x[4]))^2+ (0.0246-x[1]*(0.00390625+0.0625*x[2])/(0.00390625+0.0625*x[3]+x[4]))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
