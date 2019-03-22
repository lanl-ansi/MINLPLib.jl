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

special_instances = readdir("$(Pkg.dir("MINLPLib"))/instances/special")
for i in special_instances include("$(Pkg.dir("MINLPLib"))/instances/special/$(i)") end

export fetch_model

end #module
