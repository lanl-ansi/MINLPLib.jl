# MINLPLibJuMP Libraries

Sor far, MINLPLibJuMP includes `16` libraries in `.jl` format converted from `.gms` format.
Here is a simple chart showing the status of each instance libraries.

| Lib Name   | Converted  | Unconverted | % |
|--------------------|--------|------|-------|
| [PODLib](@ref)     | 82     | -    | -     |
| [bcp](@ref)        | 143    | 327  | 43.7% |
| [global](@ref)     | 356    | 369  | 96.5% |
| [ibm](@ref)        | 142    | 142  | 100%  |
| [inf](@ref)        | 607    | 608  | 100%  |
| [minlp](@ref)      | 110    | 250  | 44.0% |
| [minlp2](@ref)     | 1513   | 1527 | 99.1% |
| [morg](@ref)       | 66     | 67   | 98.5% |
| [mpec](@ref)       | 92     | 92   | 100%  |
| [mult3](@ref)      | 120    | 120  | 100%  |
| [mult4](@ref)      | 100    | 100  | 100%  |
| [poly](@ref)       | 98     | 98   | 100%  |
| [prince](@ref)     | 893    | 980  | 91.1% |
| [qcqp](@ref)       | 135    | 135  | 100%  |
| [qcqp2](@ref)      | 700    | 700  | 100%  |
| [qcqp3](@ref)      | 320    | 320  | 100%  |

It important to obtain fair benchmark results that is justifiable for projects in academia or industry.
Therefore, MINLPLibJuMP.jl values validation of the instances and record detail issues that causes
unconverted instances, loading errors, or inaccurate results in the [Issues](@ref) page.
