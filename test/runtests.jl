using Test
using MINLPLib

using Pkg 
minlplib_dir = joinpath(dirname(pathof(MINLPLib)), "..")

# Perform Tests
include("loading.jl")
