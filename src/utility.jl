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

    haskey(arguments, :mip_solver) ? mip_solver=options[:mip_solver] : mip_solver=GurobiSolver(OutputFlag=0)
    haskey(arguments, :nlp_solver) ? nlp_solver=options[:nlp_solver] : nlp_solver=IpoptSolver(print_level=0)

    mip_solver_string = fetch_mip_solver_shortname(string(mip_solver))
    nlp_solver_string = fetch_nlp_solver_shortname(string(nlp_solver))

    arg_string = ""
    for i in keys(arguments)
        arg_string = "$(arg_string)$(i)=$(arguments[i]),"
    end

    jname = "$(probname)"
    for i in keys(arguments)
        jname = "$(jname)_$(i)$(split(string(arguments[i]),".")[1])"
    end

    !isdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)") && mkdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)")

    jlf = open("$(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jname).jl", "w")
    write(jlf, "using JuMP, POD, $(mip_solver_string), $(nlp_solver_string)\n")
    write(jlf, "m=$(probname)($(arg_string))\n")
    write(jlf, "solve(m)\n")
    close(jlf)

    return jname
end

function fetch_mip_solver_shortname(mip_solver::AbstractString)

    if string(mip_solver)[1:6] == "Gurobi"
        return "Gurobi"
    elseif string(mip_solver)[1:7] == "CPLEX"
        return "CPLEX"
    elseif string(mip_solver)[1:3] == "Cbc"
        return "Cbc"
    end

    warning("Unsupported mip solver name. Using blank")
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

    warning("Unsupported nlp solver name. Using blank")
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

function store_history(expname="default", hpc_type="slurm", instances=[], solver_options=Dict(), hpc_options=Dict(); kwargs...)

    label = split(string(now()),".")[1]
    ext = Dict(kwargs)
    exp_info = Dict("instance"=>instances,
                    "solver_options"=>solver_options,
                    "hpc_options"=>hpc_options,
                    "label"=>label,
                    "ext"=>ext)

    history_json = open("$(Pkg.dir())/POD_experiment/.history/$(expname)_$(label).json", "w")
    JSON.print(history_json, exp_info)
    close(history_json)

    return
end

function clear_cache()

    all_shs_dir = glob("*", "$(Pkg.dir())/POD_experiment/.shs/")
    all_jls_dir = glob("*", "$(Pkg.dir())/POD_experiment/.jls/")
    all_his_dir = glob("*", "$(Pkg.dir())/POD_experiment/.history/")

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

    return
end
