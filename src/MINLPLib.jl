__precompile__()
module MINLPLib

using JuMP, MathProgBase
using JSON, Glob

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

using Pkg 
minlplib_dir = joinpath(dirname(pathof(MINLPLib)), "..")

using Random

special_instances = readdir("$minlplib_dir/instances/special")
for i in special_instances include("$minlplib_dir/instances/special/$(i)") end

export fetch_model

end #module
