include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi3N(verbose=true, exprmode=1,convhull=true,sos2=true,N=4,uniform=16)
solve(m)
