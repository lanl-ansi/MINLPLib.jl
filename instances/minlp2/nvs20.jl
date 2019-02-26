using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5]
@variable(m, i[i_Idx])
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[14], 0.0)
set_integer(i[5])
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_integer(i[3])
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(x[11], 0.0)
set_integer(i[2])
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(x[12], 0.0)
set_integer(i[4])
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_integer(i[1])
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(i[1], 200.0)
set_upper_bound(i[2], 200.0)
set_upper_bound(i[3], 200.0)
set_upper_bound(i[4], 200.0)
set_upper_bound(i[5], 200.0)
set_upper_bound(x[6], 200.0)
set_upper_bound(x[7], 200.0)
set_upper_bound(x[8], 200.0)
set_upper_bound(x[9], 200.0)
set_upper_bound(x[10], 200.0)
set_upper_bound(x[11], 200.0)
set_upper_bound(x[12], 200.0)
set_upper_bound(x[13], 200.0)
set_upper_bound(x[14], 200.0)
set_upper_bound(x[15], 200.0)
set_upper_bound(x[16], 200.0)


# ----- Constraints ----- #
@constraint(m, e1, 0.22*i[1]+0.2*i[2]+0.19*i[3]+0.25*i[4]+0.15*i[5]+0.11*x[6]+0.12*x[7]+0.13*x[8]+x[9] >= 2.5)
@constraint(m, e2, -1.46*i[1]-1.3*i[3]+1.82*i[4]-1.15*i[5]+0.8*x[7]+x[10] >= 1.1)
@constraint(m, e3, 1.29*i[1]-0.89*i[2]-1.16*i[5]-0.96*x[6]-0.49*x[8]+x[11] >= -3.1)
@constraint(m, e4, -1.1*i[1]-1.06*i[2]+0.95*i[3]-0.54*i[4]-1.78*x[6]-0.41*x[7]+x[12] >= -3.5)
@constraint(m, e5, -1.43*i[4]+1.51*i[5]+0.59*x[6]-0.33*x[7]-0.43*x[8]+x[13] >= 1.3)
@constraint(m, e6, -1.72*i[2]-0.33*i[3]+1.62*i[5]+1.24*x[6]+0.21*x[7]-0.26*x[8]+x[14] >= 2.1)
@constraint(m, e7, 1.12*i[1]+0.31*i[4]+1.12*x[7]-0.36*x[9]+x[15] >= 2.3)
@constraint(m, e8, 0.45*i[2]+0.26*i[3]-1.1*i[4]+0.58*i[5]-1.03*x[7]+0.1*x[8]+x[16] >= -1.5)
@NLconstraint(m, e9, -( (1+ (i[1])^2+i[1])^2+(1+ (i[1])^2+i[1])*(1+ (i[4])^2+i[4])+(1+ (i[1])^2+i[1])*(1+ (x[7])^2+x[7])+(1+ (i[1])^2+i[1])*(1+ (x[8])^2+x[8])+(1+ (i[1])^2+i[1])*(1+ (x[16])^2+x[16])+ (1+ (i[2])^2+i[2])^2+(1+ (i[2])^2+i[2])*(1+ (i[3])^2+i[3])+(1+ (i[2])^2+i[2])*(1+ (x[7])^2+x[7])+(1+ (i[2])^2+i[2])*(1+ (x[10])^2+x[10])+ (1+ (i[3])^2+i[3])^2+(1+ (i[3])^2+i[3])*(1+ (x[7])^2+x[7])+(1+ (i[3])^2+i[3])*(1+ (x[9])^2+x[9])+(1+ (i[3])^2+i[3])*(1+ (x[10])^2+x[10])+(1+ (i[3])^2+i[3])*(1+ (x[14])^2+x[14])+ (1+ (i[4])^2+i[4])^2+(1+ (i[4])^2+i[4])*(1+ (x[7])^2+x[7])+(1+ (i[4])^2+i[4])*(1+ (x[11])^2+x[11])+(1+ (i[4])^2+i[4])*(1+ (x[15])^2+x[15])+ (1+ (i[5])^2+i[5])^2+(1+ (i[5])^2+i[5])*(1+ (x[6])^2+x[6])+(1+ (i[5])^2+i[5])*(1+ (x[10])^2+x[10])+(1+ (i[5])^2+i[5])*(1+ (x[12])^2+x[12])+(1+ (i[5])^2+i[5])*(1+ (x[16])^2+x[16])+ (1+ (x[6])^2+x[6])^2+(1+ (x[6])^2+x[6])*(1+ (x[8])^2+x[8])+(1+ (x[6])^2+x[6])*(1+ (x[15])^2+x[15])+ (1+ (x[7])^2+x[7])^2+(1+ (x[7])^2+x[7])*(1+ (x[11])^2+x[11])+(1+ (x[7])^2+x[7])*(1+ (x[13])^2+x[13])+ (1+ (x[8])^2+x[8])^2+(1+ (x[8])^2+x[8])*(1+ (x[10])^2+x[10])+(1+ (x[8])^2+x[8])*(1+ (x[15])^2+x[15])+ (1+ (x[9])^2+x[9])^2+(1+ (x[9])^2+x[9])*(1+ (x[12])^2+x[12])+(1+ (x[9])^2+x[9])*(1+ (x[16])^2+x[16])+ (1+ (x[10])^2+x[10])^2+(1+ (x[10])^2+x[10])*(1+ (x[14])^2+x[14])+ (1+ (x[11])^2+x[11])^2+(1+ (x[11])^2+x[11])*(1+ (x[13])^2+x[13])+ (1+ (x[12])^2+x[12])^2+(1+ (x[12])^2+x[12])*(1+ (x[14])^2+x[14])+ (1+ (x[13])^2+x[13])^2+(1+ (x[13])^2+x[13])*(1+ (x[14])^2+x[14])+ (1+ (x[14])^2+x[14])^2+ (1+ (x[15])^2+x[15])^2+ (1+ (x[16])^2+x[16])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.