function load_prob(probname::AbstractString)
    include("$(Pkg.dir())/POD_experiment/instances/$(probname).jl")
end

load_prob(probname::Vector{AbstractString}) = for i in probname load_prob(i) end

function write_slurm_head(f, j_name, expname, hpc_options=Dict())

    haskey(hpc_options, :username) ? username=hpc_options[:username] : username=POD_USERNAME
    haskey(hpc_options, :outputpath) ? outputpath=hpc_options[:outputpath] : outputpath="Outputs/POD"
    haskey(hpc_options, :cpu) ? cpu=hpc_options[:cpu] : cpu="E5-2695_v4"
    haskey(hpc_options, :walltime) ? walltime=hpc_options[:walltime] : walltime="3:00:00"
    haskey(hpc_options, :solver) ? solver=hpc_options[:solver] : solver="gurobi"

    write(f,"#!/bin/bash\n")
    write(f,"#SBATCH --job-name=\"$(j_name)\"\n")
    write(f,"#SBATCH --output=\"$(homedir())/$(outputpath)/$(expname)/$(j_name).out\"\n")
    write(f,"#SBATCH --constraint=\"cpu_model:$(cpu)\"\n")
    write(f,"#SBATCH --ntasks=1\n")
    write(f,"#SBATCH --no-requeue\n")
    write(f,"#SBATCH -t $(walltime)\n\n")
    (solver == "gurobi") && write(f,"julia $(homedir())/start_gurobi.jl\n")
    write(f,"lscpu\n")

    if !isdir("$(homedir())/$(outputpath)/$(expname)/")
        warn("Output path not detected. Consider creating $(homedir())/$(outputpath)/$(expname).")
    end

    return
end

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

function write_pbs_head(f, jname, expname, hpc_options=Dict())

    haskey(hpc_options, :username) ? username=hpc_options[:username] : username=POD_USERNAME
    haskey(hpc_options, :usermail) ? username=hpc_options[:usermail] : username="sitew@g.clemson.edu"
    haskey(hpc_options, :outputpath) ? outputpath=hpc_options[:outputpath] : outputpath="Outputs/POD"
    haskey(hpc_options, :ncpus) ? ncpus=hpc_options[:ncpus] : cpu="8"
    haskey(hpc_options, :mem) ? mem=hpc_options[:mem] : cpu="16"
    haskey(hpc_options, :walltime) ? walltime=hpc_options[:walltime] : walltime="3:00:00"
    haskey(hpc_options, :solver) ? solver=hpc_options[:solver] : solver="gurobi"

    write(f,"#!/bin/bash\n")
    write(f,"#PBS -N $(jname)\n")
    write(f,"#PBS -m abe\n")
    write(f,"#PBS -M $(usermail)\n")
    write(f,"#PBS -l select=1:ncpus=$(ncpus):mem=$(mem)gb,walltime=$(walltime)\n")
    write(f,"#PBS -o $(homedir())/$(outputpath)/$(expmode)/$(jname).o\n")
    write(f,"#PBS -e $(homedir())/$(outputpath)/$(expmode)/$(jname).e\n\n\n")
    (solver == "gurobi") && write(f,"module add gurobi/7.0.1 \n")
    write(f,"lscpu\n")

    if !isdir("$(homedir())/$(outputpath)/$(expname)")
        warn("Output path not detected. Consider creating $(homedir())/$(outputpath)/$(expname).")
    end

    return
end

function write_basic_jl(probname="", expname="default", arguments=Dict())

    isempty(probname) && error("probname cannot be empty")

    mip_solver_string=fetch_mip_solver_shortname(string(GurobiSolver(OutputFlag=0)))
    nlp_solver_string=fetch_nlp_solver_shortname(string(IpoptSolver(print_level=0)))

    arg_string = "options=Dict("
    for i in keys(arguments)
        if i in [:solver_options,:N,:exprmode,:K,:D]    # Legal options for instance inputs
            if isa(arguments[i], Dict)  # Write Dictionary Argument
                arg_string = "$(arg_string):$(i)=>Dict("
                for j in keys(arguments[i])
                    (j==:mip_solver) && (mip_solver_string=fetch_mip_solver_shortname(string(arguments[i][j])))
                    (j==:nlp_solver) && (nlp_solver_string=fetch_nlp_solver_shortname(string(arguments[i][j])))
                    arg_string = "$(arg_string):$(j)=>$(arguments[i][j]),"
                end
                arg_string = "$(arg_string)),"
            else # Write normal arguments
                arg_string = "$(arg_string):$(i)=>$(arguments[i]),"
            end
        end
    end
    arg_string = "$(arg_string))"

    jname = "$(probname)"
    jname = "$(jname)_$(hash(arg_string))"

    !isdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)") && mkdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)")

    jlf = open("$(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jname).jl", "w")
    write(jlf, "using JuMP, POD, $(mip_solver_string), $(nlp_solver_string)\n")
    write(jlf, "include(\"\$(Pkg.dir())/POD_experiment/instances/$(probname).jl\")\n")
    write(jlf, "m=$(probname)($(arg_string))\n")
    write(jlf, "solve(m)\n")
    close(jlf)

    return jname
end

function fetch_mip_solver_shortname(mip_solver::AbstractString)

    if string(mip_solver)[1:6] == "Gurobi"
        return "Gurobi"
    elseif string(mip_solver)[1:5] == "CPLEX"
        return "CPLEX"
    elseif string(mip_solver)[1:3] == "Cbc"
        return "Cbc"
    end

    warn("Unsupported mip solver name $(mip_solver). Using blank")
    return ""
end

function fetch_nlp_solver_shortname(nlp_solver::AbstractString)

    if string(nlp_solver)[1:5] == "Ipopt"
        return "Ipopt"
    elseif string(nlp_solver)[1:6] == "Bonmin"
        return "AmplNLWriter"
    elseif string(nlp_solver)[1:3] == "Knitro"
        return "KNITRO"
    end

    warn("Unsupported nlp solver name $(nlp_solver). Using blank")
    return ""
end

function write_basic_sh(expname="default", jobname="default", hpc_type="slurm", hpc_options=Dict())

    !isdir("$(Pkg.dir())/POD_experiment/.shs/$(expname)") && mkdir("$(Pkg.dir())/POD_experiment/.shs/$(expname)")

    if hpc_type == "slurm"
        batchf = open("$(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).sh", "w")
        write_slurm_head(batchf, jobname, expname, hpc_options)
    elseif hpc_type == "pbs"
        batchf = open("$(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).pbs", "w")
        write_pbs_head(batchf, jobname, expname, hpc_options)
    end
    write(batchf,"julia $(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jobname).jl\n")
    close(batchf)

    return
end

function submit_to_hpc(hpc_type="slurm", jobname="", expname="default")

    isempty(jobname) && error("no file name with submission")

    if hpc_type == "slurm"
        run("sbatch $(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).sh")
    elseif hpc_type == "pbs"
        run(`qsub $(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).pbs`)
    else
        error("what cluster are you running it on ($(hpc_type))?")
    end

    return
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

    history_json = open("$(Pkg.dir())/POD_experiment/.history/$(expname)_$(label).json", "w")
    JSON.print(history_json, exp_info)
    close(history_json)

    return
end

function clear_cache()

    all_shs_dir = glob("*", "$(Pkg.dir())/POD_experiment/.shs/")
    all_jls_dir = glob("*", "$(Pkg.dir())/POD_experiment/.jls/")
    all_his_dir = glob("*", "$(Pkg.dir())/POD_experiment/.history/")
    all_gms_dir = glob("*", "$(Pkg.dir())/POD_experiment/.gms/")

    if !isempty(all_shs_dir)
        for i in all_shs_dir
            rm(i, recursive=true)
        end
    end

    if !isempty(all_jls_dir)
        for i in all_jls_dir
            rm(i, recursive=true)
        end
    end

    if !isempty(all_his_dir)
        for i in all_his_dir
            rm(i)
        end
    end

    if !isempty(all_gms_dir)
        for i in all_gms_dir
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
