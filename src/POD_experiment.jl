module POD_experiment

using Compat, Glob, JSON
using Gurobi, Ipopt

include("consts.jl")
include("solver.jl")
include("utility.jl")

# Load all existing run scripts
for i in glob("*.jl", "$(Pkg.dir())/POD_experiment/runs/")
    include(i)
end

!isdir("$(Pkg.dir())/POD_experiment/.jls") && mkdir("$(Pkg.dir())/POD_experiment/.jls")
!isdir("$(Pkg.dir())/POD_experiment/.shs") && mkdir("$(Pkg.dir())/POD_experiment/.shs")
!isdir("$(Pkg.dir())/POD_experiment/.history") && mkdir("$(Pkg.dir())/POD_experiment/.history")

PODe = POD_experiment
export PODe, fetch_solver

end #module
