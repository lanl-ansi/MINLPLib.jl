using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (98.9629629629+x[1]*x[2]*x[3]-0.5*x[1]*(1+x[1])*x[2]*x[3]*x[3]-(1-exp(-log(1+x[3])*x[1]))*x[2])^2+ (216.098765432+x[1]*x[2]*x[3]*(1-exp(log(1+x[3])*(-1-x[1])))-x[1]*(1+x[1])*x[2]*x[3]*x[3])^2+ (239.670781893-x[1]*(1+x[1])*x[2]*x[3]*x[3]*(1-exp(log(1+x[3])*(-2-x[1]))))^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
