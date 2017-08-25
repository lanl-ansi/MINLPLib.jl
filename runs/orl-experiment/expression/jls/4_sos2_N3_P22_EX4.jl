include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi4N(verbose=true, exprmode=4,convhull=true,sos2=true,N=3,uniform=22)
solve(m)
