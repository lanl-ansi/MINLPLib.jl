include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=2,sos2=false,N=15,uniform=4)
solve(m)
