# Issues

## Issues with unconverted instances
There are instances that didn't get converted to `.jl` format due to a variety of reasons.
Issues related to dimensionality, special operators, and others can be seen in the conversion process.
As MINLPLibJuMP.jl develops, we are dedicated to resolve these issues and hope to
improve the conversion rate on different libraries.

## Issues with loading errors
With a converted `.jl` file, we test the instances by loading the `JuMP` model, initialize the `NLPEvaluator` objective, and collect some dimensional information from the loaded model.
Given the scheme of model loading in `JuMP` environment is different from other modeling interfaces, we observed some exceptions and hogs during the process.
Again, as MINLPLibJuMP.jl develops, we will dedicate to resolve these issues and hope to improve the overall performance in handling MINLP instances in `JuMP`.
