include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=3,sos2=false,N=7,uniform=12)
solve(m)
