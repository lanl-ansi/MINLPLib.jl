include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=3,facet=true,N=6,uniform=10)
solve(m)
