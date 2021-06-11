__precompile__()
module MINLPLib

using JuMP
using JSON 
using Glob

include("features.jl")

METAATTRS = ["LIBRARY", "NAME",
            "NVARS",
            "NBINVARS", "NINTVARS", "NNLVARS",
            "NCONS",
            "NLINCONS", "NNLCONS",
            "OBJSENSE", "OBJTYPE", "NLOPERANDS",
            "STATUS",
            "OBJVAL", "OBJBOUND",
            "SOURCE"]

PROTECTED_LIBS = ["bcp", "global", "ibm", "inf", "minlp",
                  "minlp2", "morg", "mpec", "mult3", "mult4",
                  "poly", "prince", "qcqp", "qcqp2", "qcqp3"]

minlplib_dir = joinpath(dirname(pathof(MINLPLib)), "..")

special_instances = readdir("$minlplib_dir/instances/special")
for i in special_instances 
    if !(i in ["multi3N.jl", "multi4N.jl", "multiKND.jl"]) 
        include("$minlplib_dir/instances/special/$(i)") 
    end
end


export fetch_model

end #module
