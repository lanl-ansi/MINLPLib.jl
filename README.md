# POD_experiment

A repo that manage MINLP instances and experiments for POD.jl. In this repo, a series of JuMP-based models will be stored in `instance`.
POD, as a solver package, will only carry the small instances for unit-tests together with its engine source code.
Moreover this repo also carries experiment scrips for HPC clusters. Newly designed experiments will be established as branch. They will be 
merged into master as the experiment is complete with results. Plotting results can also reside in this repo.


Instances in this repo will be utilized for:

* Experiments for new features in POD

* Benchmark POD

* Benchmark with other solvers


Experiment Lists:

* ORL-Experiment


