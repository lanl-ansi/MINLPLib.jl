# POD_experiment

POD_experiment is a repo that manage and test MINLP instances for POD.jl Solver.
As a developing solver package, POD.jl only carry a small number of instances for
unit-tests. Users can use POD_experiment to run other MINLP instances with easy
access to solver options. This package serves to fulfill computational experiment
and benchmark of POD.jl.

## Usage
To install, at your `Julia` command prompt,

```
Pkg.clone("https://github.com/lanl-ansi/POD_experiment.git")
```
By default, term `PODe` is preserved to represent `POD_experiment`. Then, you can
can easily setup a `.jl` scrip like the following,

```
using POD_experiment, Gurobi, Ipopt

podm = PODe.run("multiKND", expname="demo_prob",
   options=Dict(:verbose=>true,
                 :K=>3, :N=>3, :D=>1,
                 :solver_options=>:nlp_local_solver => IpoptSolver(print_level=0),
                                  :mip_solver => GurobiSolver(OutputFlag=0),
                                  :log_level => 1)
   )
)
```

The above scrip first include all the necessary sub-solver (Gurobi and Ipopt).
It then initialize a run of problem `multiKND` using POD. Note that the problem
formulation can be controled using parameter `:K`, `:N`, and `:D`, which yields the
following problem:
```
Max x[1] * x[2] * x[3] + x[3] * x[4] * x[5] + x[5] * x[6] * x[7]
Subject to
 x[1] + x[2] + x[3] <= 3
 x[3] + x[4] + x[5] <= 3
 x[5] + x[6] + x[7] <= 3
 0.1 <= x[i] <= 10 for all i in {1,2,..,6,7}
```
By setting key `:verbose` to `true` will ask POD_experiment to print the problem
as it is contructed. Moreover, key `:solver_options` holds a discrionary to direct
the solver with customize options. In this example, we configure local solvers and log_level.
For more available options, user can find the keyword in POD.jl documentation.
Users can find more examples in `examples` directory.

Each of the run activated will create a log with necessary user configuration to be
stored in the local `.history` directory.

## Instances

This is an developing repo and hence more instances will be included as POD.jl becomes
more available. Currently, this repo host 89 instances from [MINLPLIB2](http://www.gamsworld.org/minlp/minlplib2/html/). These instances are
implemented as JuMP Models in independent scripts.

The format of these instances is:
```
using JuMP
m = Model()

# Begin of model content
@variable() ...
@constraint() ...
@objective() ...
...
# End of model content

m = m
```
The last line of the file serves to output the JuMP model for the dynamic loading
scheme used in POD_experiment.

Currently, POD_experiment hosts a series of utility tools to interact with [MINLPLIB2](http://www.gamsworld.org/minlp/minlplib2/html/), which downloads and convert
`.gms` files into `.jl` to fit POD_experiment. These utility are currently in beta
phase and requires more testing.
