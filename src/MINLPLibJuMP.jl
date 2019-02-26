__precompile__()
module MINLPLibJuMP

using JuMP, MathProgBase
using JSON, Glob

minlp_dir = joinpath(dirname(pathof(MINLPLibJuMP)),"..")

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

special_instances = readdir("$(minlp_dir)/instances/special")
for i in special_instances include("$(minlp_dir)/instances/special/$(i)") end

export fetch_model

end #module
