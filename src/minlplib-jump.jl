module minlplib_jump

using JuMP, Compat, Glob, JSON

include("consts.jl")
include("types.jl")
include("utility.jl")
include("external.jl")
include("writer.jl")

# Compile all problem instances
special_instances = ["multi3N", "multi4N", "multiKND", "eniplac", "simpleN", "circleN"]
for i in special_instances
    include("$(Pkg.dir())/POD_experiment/instances/$(i).jl")
end

!isdir("$(Pkg.dir())/POD_experiment/.jls") && mkdir("$(Pkg.dir())/POD_experiment/.jls")
!isdir("$(Pkg.dir())/POD_experiment/.ext") && mkdir("$(Pkg.dir())/POD_experiment/.ext")

PODe = POD_experiment

export PODe, fetch_solver

end #module
