include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi3N(verbose=true, exprmode=3,convhull=true,sos2=true,N=3,uniform=4)
solve(m)
