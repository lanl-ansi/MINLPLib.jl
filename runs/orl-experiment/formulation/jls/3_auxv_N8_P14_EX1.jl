include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=3,sos2_alter=true,N=8,uniform=14)
solve(m)
