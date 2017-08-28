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
@show "$(Pkg.dir())/POD_experiment/runs/"
for i in glob("*.jl", "$(Pkg.dir())/POD_experiment/runs/")
    @show i
    include(i)
end

export fetch_solver

end #module
