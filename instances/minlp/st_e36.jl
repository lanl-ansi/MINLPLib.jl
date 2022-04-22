using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2]
@variable(m, 3 <= x[x_Idx] <= 5.5) 
i_Idx = Any[1]
@variable(m, 15 <= i[i_Idx] <= 25, Int)


# ----- Constraints ----- #
@NLconstraint(m, e1, ( (x[2])^2-6*x[2]+0.8*i[1]-11)*( (3.25*x[2]-0.62*i[1])^2+ (0.2*i[1]+x[2]-6.35)^2)*( (3.55*x[2]-0.66*i[1])^2+ (0.2*i[1]+x[2]-6.85)^2)*( (3.6*x[2]-0.7*i[1])^2+ (0.2*i[1]+x[2]-7.1)^2)*( (3.8*x[2]-0.82*i[1])^2+ (0.2*i[1]+x[2]-7.9)^2) == 0.0)
@NLconstraint(m, e2, 0.6*i[1]-0.2*x[2]*i[1]+exp(x[2]-3) <= 1.0)
@NLconstraint(m, e3, -(2* (x[2])^2+0.008* (i[1])^3-3.2*x[2]*i[1]-2*i[1])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
