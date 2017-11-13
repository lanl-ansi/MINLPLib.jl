module MINLPLib_jump

using JuMP

include("features.jl")

# Compile all problem instances
special_instances = ["multi3N", "multi4N", "multiKND", "eniplac", "simpleN", "circleN"]
for i in special_instances
    include("$(Pkg.dir())/MINLPLib_jump/instances/JOGOLib/$(i).jl")
end

export fetch_model

end #module
