include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi4N(verbose=true, exprmode=10,convhull=true,sos2=true,N=3,uniform=18)
solve(m)
