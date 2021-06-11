using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1000.0)
set_upper_bound(x[2], 100000.0)
set_upper_bound(x[3], 10000.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (34780-x[2]/(50+x[3])+x[1])^2+ (28610-x[2]/(55+x[3])+x[1])^2+ (23650-x[2]/(60+x[3])+x[1])^2+ (19630-x[2]/(65+x[3])+x[1])^2+ (16370-x[2]/(70+x[3])+x[1])^2+ (13720-x[2]/(75+x[3])+x[1])^2+ (11540-x[2]/(80+x[3])+x[1])^2+ (9744-x[2]/(85+x[3])+x[1])^2+ (8261-x[2]/(90+x[3])+x[1])^2+ (7030-x[2]/(95+x[3])+x[1])^2+ (6005-x[2]/(100+x[3])+x[1])^2+ (5147-x[2]/(105+x[3])+x[1])^2+ (4427-x[2]/(110+x[3])+x[1])^2+ (3820-x[2]/(115+x[3])+x[1])^2+ (3307-x[2]/(120+x[3])+x[1])^2+ (2872-x[2]/(125+x[3])+x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script. 
