include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=4,sos2_alter=true,N=3,uniform=10)
solve(m)
