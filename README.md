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
Fetch a instance by its libname/name just like the following,
```
using MINLPLib_jump
m = fetch_model("PODLib/blend029")
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

* [PODLib](https://github.com/lanl-ansi/POD.jl) A small and growing library for POD benchmarking
* [ibm](http://egon.cheme.cmu.edu/ibm/page.htm) A Mixed-integer nonlinear optimization from CMU-IBM open-source MINLP project
* [bcp](https://link.springer.com/article/10.1007/s10898-016-0491-8) Some bound-constrained programs (partially finished)
* [global](http://www.gamsworld.org/performance/) Nonlinear optimization problems
* [minlp](http://www.gamsworld.org/performance/) Mixed-integer nonlinear optimization problems from
* [minlplib2](http://www.gamsworld.org/minlp/minlplib2/html/) Upcoming ...
* [morg](http://www.minlp.org/) Mixed-integer nonlinear optimization problems
* [mpec](http://www.gamsworld.org/mpec/mpeclib.htm) Mathematical programs with complementarity constraints
* [mult3](https://link.springer.com/article/10.1007/s12532-014-0073-z) Multilinear programs
* [mult4](https://link.springer.com/article/10.1007/s12532-014-0073-z) Multilinear programs
* [poly](https://link.springer.com/article/10.1007%2Fs10898-011-9757-3?LI=true) Polynomial optimization problems
* [qcqp](http://www.tandfonline.com/doi/abs/10.1080/10556780902883184) Quadratically constrained quadratic programs
* [qcqp2](https://link.springer.com/article/10.1007%2Fs10107-011-0462-2?LI=true) Quadratically constrained quadratic programs
* [qcqp3](https://link.springer.com/article/10.1007/s12532-014-0073-z) Quadratically constrained quadratic programs
* [prince](http://www.gamsworld.org/performance/) Nonlinear optimization problems
* [inf](http://pubsonline.informs.org/doi/abs/10.1287/ijoc.2017.0761)Infeasible linear, nonlinear and mixed-integer nonlinear optimization problems

## Reference
We thank the information provided from [BARON](http://www.minlp.com/nlp-and-minlp-test-problems) website.
