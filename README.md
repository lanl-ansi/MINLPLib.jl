# MINLPLibJuMP
Dev: [![Build Status](https://travis-ci.org/lanl-ansi/MINLPLibJuMP.jl.svg?branch=master)](https://travis-ci.org/lanl-ansi/MINLPLibJuMP.jl) [![Docs](https://img.shields.io/badge/docs-latest-blue.svg)](https://lanl-ansi.github.io/MINLPLibJuMP.jl/latest)


This is a library of Mixed-Integer Nonlinear Problems in the format of
[JuMP](https://github.com/JuliaOpt/JuMP.jl) model. You can use the problems here
to benchmark solvers and/or perform experiments easily. Most of the existing MINLP problems are stored in `.gms`,`.nl`,`.mod` format.
Here instances are store in `.jl` format converted from these famous formats using [toJuMP.jl](https://github.com/jac0320/toJuMP.jl).

## Included Libraries
For more details of the libraries included in this package, please see [documentation](https://lanl-ansi.github.io/MINLPLibJuMP.jl/latest/)

## Installation
To install, at your `Julia` command prompt,
```
Pkg.clone("https://github.com/lanl-ansi/MINLPLibJuMP.jl.git")
```

## Usage
Fetch a instance by its libname/name just like the following,
```
using MINLPLibJuMP
m = fetch_model("PODLib/blend029")
```
or
```
using MINLPLibJuMP
m = fetch_model("PODLib", "blend029")
```

For special built-in model that requires additional inputs,
```
using MINLPLibJuMP
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
