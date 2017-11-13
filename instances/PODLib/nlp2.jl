using JuMP

m = Model()

@variable(m, -500<=x[1:2]<=500)

@NLobjective(m, Min, sum((x[i]^2 - i)^2 for i in 1:2))

m = m
