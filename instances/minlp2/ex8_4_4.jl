using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
@variable(m, x[x_Idx])
set_lower_bound(x[13], 0.0)
set_lower_bound(x[16], 0.0)
set_upper_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[1], 4.0)
set_upper_bound(x[1], 6.0)
set_lower_bound(x[2], -6.0)
set_upper_bound(x[2], -4.0)
set_lower_bound(x[3], 2.0)
set_upper_bound(x[3], 4.0)
set_lower_bound(x[4], -3.0)
set_upper_bound(x[4], -1.0)
set_lower_bound(x[5], 1.0)
set_upper_bound(x[5], 3.0)
set_lower_bound(x[6], -2.0)
set_lower_bound(x[7], 0.5)
set_upper_bound(x[7], 2.5)
set_lower_bound(x[8], -1.5)
set_upper_bound(x[8], 0.5)
set_lower_bound(x[9], 0.2)
set_upper_bound(x[9], 2.2)
set_lower_bound(x[10], -1.2)
set_upper_bound(x[10], 0.8)
set_lower_bound(x[11], 0.1)
set_upper_bound(x[11], 2.1)
set_lower_bound(x[12], -1.1)
set_upper_bound(x[12], 0.9)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_lower_bound(x[15], 1.1)
set_upper_bound(x[15], 1.3)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( ((-5)+x[1])^2+ (5+x[2])^2+ ((-3)+x[3])^2+ (2+x[4])^2+ ((-2)+x[5])^2+ (1+x[6])^2+ ((-1.5)+x[7])^2+ (0.5+x[8])^2+ ((-1.2)+x[9])^2+ (0.2+x[10])^2+ ((-1.1)+x[11])^2+ (0.1+x[12])^2)+objvar == 0.0)
@NLconstraint(m, e2, x[14]/0.1570795^x[15]-x[1]+x[13] == 0.0)
@NLconstraint(m, e3, x[14]/0.314159^x[15]-x[3]+x[13] == 0.0)
@NLconstraint(m, e4, x[14]/0.4712385^x[15]-x[5]+x[13] == 0.0)
@NLconstraint(m, e5, x[14]/0.628318^x[15]-x[7]+x[13] == 0.0)
@NLconstraint(m, e6, x[14]/0.7853975^x[15]-x[9]+x[13] == 0.0)
@NLconstraint(m, e7, x[14]/0.942477^x[15]-x[11]+x[13] == 0.0)
@NLconstraint(m, e8, -x[17]/0.1570795^x[15]-x[2]+0.1570795*x[16] == 0.0)
@NLconstraint(m, e9, -x[17]/0.314159^x[15]-x[4]+0.314159*x[16] == 0.0)
@NLconstraint(m, e10, -x[17]/0.4712385^x[15]-x[6]+0.4712385*x[16] == 0.0)
@NLconstraint(m, e11, -x[17]/0.628318^x[15]-x[8]+0.628318*x[16] == 0.0)
@NLconstraint(m, e12, -x[17]/0.7853975^x[15]-x[10]+0.7853975*x[16] == 0.0)
@NLconstraint(m, e13, -x[17]/0.942477^x[15]-x[12]+0.942477*x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
