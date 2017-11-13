using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7]
@variable(m, x[x_Idx])
b_Idx = Any[8, 9, 10, 11]
@variable(m, b[b_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[3], 0.0)
setcategory(b[8], :Bin)
setcategory(b[11], :Bin)
setcategory(b[9], :Bin)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setcategory(b[10], :Bin)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 10.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+b[8]+b[9]+b[10] <= 5.0)
