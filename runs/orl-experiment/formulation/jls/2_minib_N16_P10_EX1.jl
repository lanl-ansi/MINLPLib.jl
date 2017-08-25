include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=2,sos2=false,N=16,uniform=10)
solve(m)
