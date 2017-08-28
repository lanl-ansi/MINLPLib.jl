# POD_experiment

An ad-hoc repo that manage MINLP instances and experiments for POD.jl. In this repo, a series of JuMP-based models will be stored in `instance`.
POD, as a solver package, will only carry the small instances for unit-tests together with its engine source code.
Moreover this repo also carries experiment scrips for HPC clusters. Newly designed experiments will be established as branch. They will be
merged into master as the experiment is complete with results. Plotting results can also reside in this repo.


Instances in this repo will be utilized for:

* Experiments with POD features

* Benchmark POD

## Usage
To install, at your `Julia` command prompt,

```
Pkg.clone("https://github.com/lanl-ansi/POD_experiment.git")
```

`POD_experiment` comes with a set of pre-defined terms for easy reference. For example, `POD.POD_INSTANCE_BLEND` is a list of all blending problem names from [MINLPLib2](http://www.gamsworld.org/minlp/minlplib2/html/). These problems are stored in script in `./instances/blend#.jl`.

By default, an exported term `PODe` is used to represent `POD_experiment`. To perform a benchmark experiment on these problems using default POD solver,

```
PODe.BENCHMARK(instances=POD.POD_INSTANCE_BLEND)
```

By doing so, `POD_experiment` creates the corresponding `.jl`s and `.sh`s and automatically send the jobs to the local HPC job scheduler. In this experiment, POD will utilized `Ipopt` and `Gurobi` as sub-solvers by default.

## Static Option Change

If you wish to conduct the same experiment with `CPLEX` as `mip_solver` as well as POD bound tightening pre-solve on, you can do,

```
using POD_experiment, CPLEX
PODe.BENCHMARK(expname="cplex_blend",instance=POD.POD_INSTANCE_BLEND,
                solver_options=Dict("mip_solver"=CplexSolver(CPX_PARAM_SCRIND), "presolve"=1))

```

Then, the corresponding scrips will be created with the prefix of `"cplex_blend"`. These scrips are store within the package. Whenever a experiment is created, a history `.json` will be created to mark all information in the experiment stored in `.history`.

## Enumerative Tests

Currently, `POD.BENCHMARK()` supports a basic enumeration on `instance` keyword input. It is desirable to set up a few more generic function in this package for testing problems looping over some common solver options, such as pre-solve, formulations, or pruning techniques.

Given the fact that `POD` is essentially a very user-friendly global solver that can take functional inputs, it my be necessary to setup enumerative experiments for a newly built features. In this case, it is more tentative to setup experiments with specific scripts. In this repo, we have two examples for ORL experiments in `./run/`, which are `orl-expression.jl` and `orl-formulation.jl`. These experiments loops over some dedicated parameters on `multiKND` problem. These experiments are less general can be flexible in modifications, which leads to highly customizable scripts. Feel free to run,

```
using POD_experiment
PODe.ORL_EXPRESSION()
```

Function `ORL_EXPRESSION()` take the same keyword inputs just like `BENCHMARK` for flexible experiment modification.
