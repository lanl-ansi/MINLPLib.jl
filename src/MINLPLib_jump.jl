module MINLPLib_jump

using JuMP, Glob, JSON

include("consts.jl")
include("features.jl")
include("types.jl")
include("utility.jl")
include("convert.jl")

# Compile all problem instances
special_instances = ["multi3N", "multi4N", "multiKND", "eniplac", "simpleN", "circleN"]
for i in special_instances
    include("$(Pkg.dir())/MINLPLib_jump/instances/$(i).jl")
end

!isdir("$(Pkg.dir())/MINLPLib_jump/.jls") && mkdir("$(Pkg.dir())/MINLPLib_jump/.jls")
!isdir("$(Pkg.dir())/MINLPLib_jump/.prob") && mkdir("$(Pkg.dir())/MINLPLib_jump/.prob")

export fetch_model

end #module
