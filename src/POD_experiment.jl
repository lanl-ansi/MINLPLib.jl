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

# Load all existing scripts
for i in glob("*.jl", "$(Pkg.dir())/POD_experiment/runs/")
    include(i)
end

export fetch_solver

end #module
