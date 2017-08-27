module POD_experiment

using JuMP
using Compat
using POD
using Glob
using Gurobi, CPLEX
using Ipopt, CoinOptServices, AmplNLWriter

include("names.jl")
include("solver.jl")
include("utility.jl")
include("run.jl")

export fetch_solver

end #module
