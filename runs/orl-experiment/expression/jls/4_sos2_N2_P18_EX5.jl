include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multi4N(verbose=true, exprmode=5,convhull=true,sos2=true,N=2,uniform=18)
solve(m)
