include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi4N(verbose=true, exprmode=8,convhull=true,sos2=true,N=3,uniform=10)
solve(m)
