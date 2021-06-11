using Test
using MINLPLib

import JuMP

minlplib_dir = joinpath(dirname(pathof(MINLPLib)), "..")

# Perform Tests
include("loading.jl")
