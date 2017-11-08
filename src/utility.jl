function load_prob(probname::AbstractString)
    include("$(Pkg.dir())/MINLPLib_jump/instances/$(probname).jl")
end

load_prob(probname::Vector{AbstractString}) = for i in probname load_prob(i) end

function try_iflinear(c::AbstractString)
    linear = true
    try
        eval(parse(c))
    catch e
        linear = false
    end
    return linear
end

function try_addvar(m_t, var::AbstractString, var_idx::AbstractString)
    vs = "@variable(m_t, $(var)[$(var_idx)])"
    @eval $(parse(vs))
    return m
end

function try_addvar(m_t, var::AbstractString)
    vs = "@variable(m_t, $(var))"
    @eval $(parse(vs))
    return m
end

function store_history(expname="default", hpc_type="slurm", instances::Any=[], solver_options=Dict(), hpc_options=Dict(), jobname=""; kwargs...)

    label = split(string(now()),".")[1]
    ext = Dict(kwargs)
    exp_info = Dict("instance"=>instances,
                    "solver_options"=>solver_options,
                    "hpc_options"=>hpc_options,
                    "label"=>label,
                    "ext"=>ext,
                    "jobname"=>jobname)

    history_json = open("$(Pkg.dir())/MINLPLib_jump/.history/$(expname)_$(label).json", "w")
    JSON.print(history_json, exp_info)
    close(history_json)

    return
end

function clear_cache()

    all_jls_dir = glob("*", "$(Pkg.dir())/MINLPLib_jump/.jls/")
    all_prob_dir = glob("*", "$(Pkg.dir())/MINLPLib_jump/.prob/")

    if !isempty(all_jls_dir)
        for i in all_jls_dir
            rm(i, recursive=true)
        end
    end

    if !isempty(all_prob_dir)
        for i in all_prob_dir
            rm(i)
        end
    end

    return
end

function get_one_line(file::IOStream; one_line=" ")
    while one_line[end] != ';'
        one_line = string(one_line, lstrip(readline(file),' '))
    end
    one_line = split(one_line, ';', keep=false)
    @assert length(one_line) == 1
    return one_line[1]
end

"""
    Reform the constraint expression using variables with indices
"""
function replace_vars(gms::oneProblem)
    for row in gms.rows
        for i in length(gms.cols):-1:1
            gms.rowsLHS[row] = replace(gms.rowsLHS[row], gms.cols[i], string(gms.cols2vars[gms.cols[i]]))
        end
    end
end

function replace_oprs(line::AbstractString; kwargs...)

    line = replace(line, "\n", "")
    line = replace(line, " ", "")
    line = _replace_sqr(line)
    line = replace(line, "**", "^")

    return line
end

function _replace_sqr(str::AbstractString)
    # @show "Begin ",str
    for i in 1:(length(str)-4)
        if str[i:(i+3)] == "sqr("
            # @show "Found sqr("
            warp = 0
            for j in (i+4):length(str)
                if str[j] == '('
                    warp += 1
                elseif str[j] == ')'
                    warp -= 1
                end
                if warp == -1
                    substart = i+4
                    subclose = j-1
                    subStr = str[substart:subclose]
                    # @show "Before replace ", subStr
                    str = replace(str, "sqr($subStr)"," ($subStr)^2")
                    # @show "After replace ", str
                    subStr = str[substart-2:subclose-2]
                    # @show "Before sending ", subStr
                    subStr = _replace_sqr(subStr)
                    # @show "Processed subStr = ", subStr
                    str = string(str[1:substart-3], subStr, str[subclose-1:end])
                    # @show "After recomposing", length(str)
                end
            end
        end
    end
    # @show "exiting this level with ", str
    return str
end

function read_command(file::IOStream, gms::oneProblem, lInit::AbstractString; kwargs...)
    warn("I am not that smart to parse command in gms files, YET")
    return 0
end

function convert_equality(probname="")

    info("This function handles problem with too many equality constraints.", prefix="POD Experiment: ")
    if !isfile("$(Pkg.dir())/MINLPLib_jump/instances/$(probname).jl")
        info("NO problem file detected in $(Pkg.dir())/MINLPLib_jump/instances/$(probname).jl", prefix="POD Experiment: ")
        return
    end

    f = open("$(Pkg.dir())/MINLPLib_jump/instances/$(probname).jl", "r")
    outf = open("$(Pkg.dir())/MINLPLib_jump/instances/$(probname)_gl.jl", "w")

    for l in readlines(f)
        if ismatch(r"==", l)
            geq = replace(l, "==", ">=")
            leq = replace(l, "==", "<=")
            write(outf, geq)
            write(outf, "\n")
            write(outf, leq)
            write(outf, "\n")
        elseif ismatch(Regex(probname), l)
            write(outf, "function $(probname)_gl(;options=Dict())\n")
        else
            write(outf, l)
            write(outf, "\n")
        end
    end

    close(f)
    close(outf)

    return
end
