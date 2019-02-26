using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 10.0)
set_upper_bound(x[2], 1100.0)
set_upper_bound(x[3], 500.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (34780-exp(x[2]/(50+x[3]))-x[1])^2+ (28610-exp(x[2]/(55+x[3]))-x[1])^2+ (23650-exp(x[2]/(60+x[3]))-x[1])^2+ (19630-exp(x[2]/(65+x[3]))-x[1])^2+ (16370-exp(x[2]/(70+x[3]))-x[1])^2+ (13720-exp(x[2]/(75+x[3]))-x[1])^2+ (11540-exp(x[2]/(80+x[3]))-x[1])^2+ (9744-exp(x[2]/(85+x[3]))-x[1])^2+ (8261-exp(x[2]/(90+x[3]))-x[1])^2+ (7030-exp(x[2]/(95+x[3]))-x[1])^2+ (6005-exp(x[2]/(100+x[3]))-x[1])^2+ (5147-exp(x[2]/(105+x[3]))-x[1])^2+ (4427-exp(x[2]/(110+x[3]))-x[1])^2+ (3820-exp(x[2]/(115+x[3]))-x[1])^2+ (3307-exp(x[2]/(120+x[3]))-x[1])^2+ (2872-exp(x[2]/(125+x[3]))-x[1])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script.