include("/home/sitew/Github/POD_experiment/instances/multi.jl")
m=multiKN(verbose=true,exprmode=1,convhull=true,K=2,sos2_alter=true,N=15,uniform=12)
solve(m)
