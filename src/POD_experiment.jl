__precompile__()

module POD_experiment

using JuMP, POD
using Compat, Glob, JSON

Pkg.installed("SCIP") != nothing ? using SCIP : warn("Running without SCIP package")
Pkg.installed("Gurobi") != nothing ? using Gurobi : warn("Running without Gurobi package")
Pkg.installed("Ipopt") != nothing ? using Ipopt : warn("Running without Ipopt package")
Pkg.installed("BARON") != nothing ? using BARON : warn("Running without BARON package")

include("consts.jl")
include("types.jl")
include("solver.jl")
include("utility.jl")
include("external.jl")
include("writer.jl")

# Load all existing run scripts
for i in glob("*.jl", "$(Pkg.dir())/POD_experiment/runs/")
    include(i)
end

# # Compile all problem instances
for i in ["multi3N", "multi4N", "multiKND", "circleN", "eniplac"]
    include("$(Pkg.dir())/POD_experiment/instances/$(i).jl")
end

!isdir("$(Pkg.dir())/POD_experiment/.jls") && mkdir("$(Pkg.dir())/POD_experiment/.jls")
!isdir("$(Pkg.dir())/POD_experiment/.shs") && mkdir("$(Pkg.dir())/POD_experiment/.shs")
!isdir("$(Pkg.dir())/POD_experiment/.history") && mkdir("$(Pkg.dir())/POD_experiment/.history")
!isdir("$(Pkg.dir())/POD_experiment/.gms") && mkdir("$(Pkg.dir())/POD_experiment/.gms")

PODe = POD_experiment
m_tester = Model()

export PODe, fetch_solver

end #module
