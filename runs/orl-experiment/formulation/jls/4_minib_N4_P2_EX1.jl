include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=4,sos2=false,N=4,uniform=2)
solve(m)
