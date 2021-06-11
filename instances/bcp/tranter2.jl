using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_upper_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 0.1)
set_lower_bound(x[2], -1.0)
set_upper_bound(x[3], 0.1)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.0211-x[1]-10*x[2]-100*x[3])^2+ (0.0174-x[1]-10*x[2]-100*x[3])^2+ (0.0329-x[1]-15*x[2]-225*x[3])^2+ (0.0354-x[1]-20*x[2]-400*x[3])^2+ (0.0462-x[1]-25*x[2]-625*x[3])^2+ (0.0488-x[1]-30*x[2]-900*x[3])^2+ (0.0788-x[1]-35*x[2]-1225*x[3])^2+ (0.0675-x[1]-35*x[2]-1225*x[3])^2+ (0.0818-x[1]-40*x[2]-1600*x[3])^2+ (0.1054-x[1]-45*x[2]-2025*x[3])^2+ (0.1251-x[1]-50*x[2]-2500*x[3])^2+ (0.1588-x[1]-55*x[2]-3025*x[3])^2+ (0.1829-x[1]-60*x[2]-3600*x[3])^2+ (0.1782-x[1]-60*x[2]-3600*x[3])^2+ (0.2101-x[1]-65*x[2]-4225*x[3])^2)+x[4] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[4])

m = m 		 # model get returned when including this script. 
