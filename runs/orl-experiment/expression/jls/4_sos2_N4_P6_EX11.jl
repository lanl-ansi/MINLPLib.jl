include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi4N(verbose=true, exprmode=11,convhull=true,sos2=true,N=4,uniform=6)
solve(m)
