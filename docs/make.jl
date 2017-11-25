using Documenter, MINLPLibJuMP

makedocs(
    format = :html,
    sitename = "MINLPLibJuMP",
    pages = [
        "Libraries Summary" => "libraries.md",
        "Libraries" => [
            "bcp" => "bcp.md",
            "global" => "global.md",
            "ibm" => "ibm.md",
            "inf" => "inf.md",
            "minlp" => "minlp.md",
            "minlp2" => "minlp2.md",
            "morg" => "morg.md",
            "mpec" => "mpec.md",
            "mult3" => "mult3.md",
            "mult4" => "mult4.md",
            "poly" => "poly.md",
            "pirnce" => "prince.md",
            "qcqp" => "qcqp.md",
            "qcqp2" => "qcqp2.md",
            "qcqp3" => "qcqp3.md",
            "PODLib" => "PODLib.md"
            ],
        "Issues" => "issues.md"
    ]
)


deploydocs(
    repo = "github.com/lanl-ansi/MINLPLibJuMP.jl.git",
    target = "build",
    osname = "linux",
    julia  = "0.6",
    deps   = nothing,
    make   = nothing
)
