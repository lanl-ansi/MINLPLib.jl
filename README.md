# MINLPLib_jump
This is a library of Mixed-Integer Nonlinear Problems in the format of
[JuMP](https://github.com/JuliaOpt/JuMP.jl) model. You can use the problems here
to benchmark solvers and/or perform experiments easily.

## Installation
To install, at your `Julia` command prompt,
```
Pkg.clone("https://github.com/lanl-ansi/MINLPLib_jump.git")
```

## Usage
Fetch a model by its name just like the following,
```
using MINLPLib_jump
m = fetch_model("blend029")
```

For special built-in model that requires additional inputs,
```
using MINLPLib_jump
m = fetch_model("multiKND", options=Dict(:K=>3, :N=>3, :D=>1))
```
The above scrip initialize an optimization [JuMP](https://github.com/JuliaOpt/JuMP.jl) model `multiKND`. The
formulation is controlled with parameter `:K`, `:N`, and `:D`, which yields the
following problem:
```
Max x[1] * x[2] * x[3] + x[3] * x[4] * x[5] + x[5] * x[6] * x[7]
Subject to
 x[1] + x[2] + x[3] <= 3
 x[3] + x[4] + x[5] <= 3
 x[5] + x[6] + x[7] <= 3
 0.1 <= x[i] <= 10 for all i in {1,2,..,6,7}
```

## List of Existing Libraries
Most of the existing MINLP problems are stored in .gms/.nl/.mod format. Currently, the scope of this repo covers

* [MINLPLIB2](http://www.gamsworld.org/minlp/minlplib2/html/)

## Problem Contribution
TBD
