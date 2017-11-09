module MINLPLib_jump

using JuMP

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

export fetch_model

end #module
