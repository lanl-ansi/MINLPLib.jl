using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
@variable(m, x[x_Idx])
for i=2:21
   set_lower_bound(x[i], -100)
   set_upper_bound(x[i], 100)
end

# ----- Constraints ----- #
@constraint(m, e1, x[2]+x[22]+85*x[23]+76*x[24]+44*x[25] == 99.0)
@constraint(m, e2, x[3]+x[22]+82*x[23]+78*x[24]+42*x[25] == 93.0)
@constraint(m, e3, x[4]+x[22]+75*x[23]+73*x[24]+42*x[25] == 99.0)
@constraint(m, e4, x[5]+x[22]+74*x[23]+72*x[24]+44*x[25] == 97.0)
@constraint(m, e5, x[6]+x[22]+76*x[23]+73*x[24]+43*x[25] == 90.0)
@constraint(m, e6, x[7]+x[22]+74*x[23]+69*x[24]+46*x[25] == 96.0)
@constraint(m, e7, x[8]+x[22]+73*x[23]+69*x[24]+46*x[25] == 93.0)
@constraint(m, e8, x[9]+x[22]+96*x[23]+80*x[24]+36*x[25] == 130.0)
@constraint(m, e9, x[10]+x[22]+93*x[23]+78*x[24]+36*x[25] == 118.0)
@constraint(m, e10, x[11]+x[22]+70*x[23]+73*x[24]+37*x[25] == 88.0)
@constraint(m, e11, x[12]+x[22]+82*x[23]+71*x[24]+46*x[25] == 89.0)
@constraint(m, e12, x[13]+x[22]+80*x[23]+72*x[24]+45*x[25] == 93.0)
@constraint(m, e13, x[14]+x[22]+77*x[23]+76*x[24]+42*x[25] == 94.0)
@constraint(m, e14, x[15]+x[22]+67*x[23]+76*x[24]+50*x[25] == 75.0)
@constraint(m, e15, x[16]+x[22]+82*x[23]+70*x[24]+48*x[25] == 84.0)
@constraint(m, e16, x[17]+x[22]+76*x[23]+76*x[24]+41*x[25] == 91.0)
@constraint(m, e17, x[18]+x[22]+74*x[23]+78*x[24]+31*x[25] == 100.0)
@constraint(m, e18, x[19]+x[22]+71*x[23]+80*x[24]+29*x[25] == 98.0)
@constraint(m, e19, x[20]+x[22]+70*x[23]+83*x[24]+39*x[25] == 101.0)
@constraint(m, e20, x[21]+x[22]+64*x[23]+79*x[24]+38*x[25] == 80.0)
@NLconstraint(m, e21, -(abs(x[2])+abs(x[3])+abs(x[4])+abs(x[5])+abs(x[6])+abs(x[7])+abs(x[8])+abs(x[9])+abs(x[10])+abs(x[11])+abs(x[12])+abs(x[13])+abs(x[14])+abs(x[15])+abs(x[16])+abs(x[17])+abs(x[18])+abs(x[19])+abs(x[20])+abs(x[21]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

 
