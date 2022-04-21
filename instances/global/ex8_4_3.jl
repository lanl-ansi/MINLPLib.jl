using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52]
@variable(m, x[x_Idx])
set_lower_bound(x[1], -0.387)
set_upper_bound(x[1], 0.613)
set_lower_bound(x[2], 1.351)
set_upper_bound(x[2], 2.351)
set_lower_bound(x[3], -0.374)
set_upper_bound(x[3], 0.626)
set_lower_bound(x[4], 1.354)
set_upper_bound(x[4], 2.354)
set_lower_bound(x[5], -0.328)
set_upper_bound(x[5], 0.672)
set_lower_bound(x[6], 1.349)
set_upper_bound(x[6], 2.349)
set_lower_bound(x[7], -0.345)
set_upper_bound(x[7], 0.655)
set_lower_bound(x[8], 1.315)
set_upper_bound(x[8], 2.315)
set_lower_bound(x[9], -0.281)
set_upper_bound(x[9], 0.719)
set_lower_bound(x[10], 1.328)
set_upper_bound(x[10], 2.328)
set_lower_bound(x[11], -0.255)
set_upper_bound(x[11], 0.745)
set_lower_bound(x[12], 1.347)
set_upper_bound(x[12], 2.347)
set_lower_bound(x[13], -0.226)
set_upper_bound(x[13], 0.774)
set_lower_bound(x[14], 1.304)
set_upper_bound(x[14], 2.304)
set_lower_bound(x[15], -0.236)
set_upper_bound(x[15], 0.764)
set_lower_bound(x[16], 1.332)
set_upper_bound(x[16], 2.332)
set_lower_bound(x[17], -0.188)
set_upper_bound(x[17], 0.812)
set_lower_bound(x[18], 1.338)
set_upper_bound(x[18], 2.338)
set_lower_bound(x[19], -0.176)
set_upper_bound(x[19], 0.824)
set_lower_bound(x[20], 1.317)
set_upper_bound(x[20], 2.317)
set_lower_bound(x[21], -0.167)
set_upper_bound(x[21], 0.833)
set_lower_bound(x[22], 1.32)
set_upper_bound(x[22], 2.32)
set_lower_bound(x[23], -0.101)
set_upper_bound(x[23], 0.899)
set_lower_bound(x[24], 1.345)
set_upper_bound(x[24], 2.345)
set_lower_bound(x[25], -0.083)
set_upper_bound(x[25], 0.917)
set_lower_bound(x[26], 1.329)
set_upper_bound(x[26], 2.329)
set_lower_bound(x[27], -0.081)
set_upper_bound(x[27], 0.919)
set_lower_bound(x[28], 1.332)
set_upper_bound(x[28], 2.332)
set_lower_bound(x[29], -0.061)
set_upper_bound(x[29], 0.939)
set_lower_bound(x[30], 1.32)
set_upper_bound(x[30], 2.32)
set_lower_bound(x[31], -0.025)
set_upper_bound(x[31], 0.975)
set_lower_bound(x[32], 1.32)
set_upper_bound(x[32], 2.32)
set_lower_bound(x[33], 0.00600000000000001)
set_upper_bound(x[33], 1.006)
set_lower_bound(x[34], 1.299)
set_upper_bound(x[34], 2.299)
set_lower_bound(x[35], 0.038)
set_upper_bound(x[35], 1.038)
set_lower_bound(x[36], 1.338)
set_upper_bound(x[36], 2.338)
set_lower_bound(x[37], 0.038)
set_upper_bound(x[37], 1.038)
set_lower_bound(x[38], 1.335)
set_upper_bound(x[38], 2.335)
set_lower_bound(x[39], 0.091)
set_upper_bound(x[39], 1.091)
set_lower_bound(x[40], 1.311)
set_upper_bound(x[40], 2.311)
set_lower_bound(x[41], 0.078)
set_upper_bound(x[41], 1.078)
set_lower_bound(x[42], 1.294)
set_upper_bound(x[42], 2.294)
set_lower_bound(x[43], 0.126)
set_upper_bound(x[43], 1.126)
set_lower_bound(x[44], 1.325)
set_upper_bound(x[44], 2.325)
set_lower_bound(x[45], 0.159)
set_upper_bound(x[45], 1.159)
set_lower_bound(x[46], 1.301)
set_upper_bound(x[46], 2.301)
set_lower_bound(x[47], 0.168)
set_upper_bound(x[47], 1.168)
set_lower_bound(x[48], 1.31)
set_upper_bound(x[48], 2.31)
set_lower_bound(x[49], 0.187)
set_upper_bound(x[49], 1.187)
set_lower_bound(x[50], 1.302)
set_upper_bound(x[50], 2.302)
set_lower_bound(x[51], 1.0)
set_upper_bound(x[51], 10.0)
set_lower_bound(x[52], 2.0)
set_upper_bound(x[52], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (x[1]-0.113)^2+ (x[2]-1.851)^2+ (x[3]-0.126)^2+ (x[4]-1.854)^2+ (x[5]-0.172)^2+ (x[6]-1.849)^2+ (x[7]-0.155)^2+ (x[8]-1.815)^2+ (x[9]-0.219)^2+ (x[10]-1.828)^2+ (x[11]-0.245)^2+ (x[12]-1.847)^2+ (x[13]-0.274)^2+ (x[14]-1.804)^2+ (x[15]-0.264)^2+ (x[16]-1.832)^2+ (x[17]-0.312)^2+ (x[18]-1.838)^2+ (x[19]-0.324)^2+ (x[20]-1.817)^2+ (x[21]-0.333)^2+ (x[22]-1.82)^2+ (x[23]-0.399)^2+ (x[24]-1.845)^2+ (x[25]-0.417)^2+ (x[26]-1.829)^2+ (x[27]-0.419)^2+ (x[28]-1.832)^2+ (x[29]-0.439)^2+ (x[30]-1.82)^2+ (x[31]-0.475)^2+ (x[32]-1.82)^2+ (x[33]-0.506)^2+ (x[34]-1.799)^2+ (x[35]-0.538)^2+ (x[36]-1.838)^2+ (x[37]-0.538)^2+ (x[38]-1.835)^2+ (x[39]-0.591)^2+ (x[40]-1.811)^2+ (x[41]-0.578)^2+ (x[42]-1.794)^2+ (x[43]-0.626)^2+ (x[44]-1.825)^2+ (x[45]-0.659)^2+ (x[46]-1.801)^2+ (x[47]-0.668)^2+ (x[48]-1.81)^2+ (x[49]-0.687)^2+ (x[50]-1.802)^2)+objvar == 0.0)
@NLconstraint(m, e2, 1/(x[1]-x[52])-x[2]+x[51] == 0.0)
@NLconstraint(m, e3, 1/(x[3]-x[52])-x[4]+x[51] == 0.0)
@NLconstraint(m, e4, 1/(x[5]-x[52])-x[6]+x[51] == 0.0)
@NLconstraint(m, e5, 1/(x[7]-x[52])-x[8]+x[51] == 0.0)
@NLconstraint(m, e6, 1/(x[9]-x[52])-x[10]+x[51] == 0.0)
@NLconstraint(m, e7, 1/(x[11]-x[52])-x[12]+x[51] == 0.0)
@NLconstraint(m, e8, 1/(x[13]-x[52])-x[14]+x[51] == 0.0)
@NLconstraint(m, e9, 1/(x[15]-x[52])-x[16]+x[51] == 0.0)
@NLconstraint(m, e10, 1/(x[17]-x[52])-x[18]+x[51] == 0.0)
@NLconstraint(m, e11, 1/(x[19]-x[52])-x[20]+x[51] == 0.0)
@NLconstraint(m, e12, 1/(x[21]-x[52])-x[22]+x[51] == 0.0)
@NLconstraint(m, e13, 1/(x[23]-x[52])-x[24]+x[51] == 0.0)
@NLconstraint(m, e14, 1/(x[25]-x[52])-x[26]+x[51] == 0.0)
@NLconstraint(m, e15, 1/(x[27]-x[52])-x[28]+x[51] == 0.0)
@NLconstraint(m, e16, 1/(x[29]-x[52])-x[30]+x[51] == 0.0)
@NLconstraint(m, e17, 1/(x[31]-x[52])-x[32]+x[51] == 0.0)
@NLconstraint(m, e18, 1/(x[33]-x[52])-x[34]+x[51] == 0.0)
@NLconstraint(m, e19, 1/(x[35]-x[52])-x[36]+x[51] == 0.0)
@NLconstraint(m, e20, 1/(x[37]-x[52])-x[38]+x[51] == 0.0)
@NLconstraint(m, e21, 1/(x[39]-x[52])-x[40]+x[51] == 0.0)
@NLconstraint(m, e22, 1/(x[41]-x[52])-x[42]+x[51] == 0.0)
@NLconstraint(m, e23, 1/(x[43]-x[52])-x[44]+x[51] == 0.0)
@NLconstraint(m, e24, 1/(x[45]-x[52])-x[46]+x[51] == 0.0)
@NLconstraint(m, e25, 1/(x[47]-x[52])-x[48]+x[51] == 0.0)
@NLconstraint(m, e26, 1/(x[49]-x[52])-x[50]+x[51] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 