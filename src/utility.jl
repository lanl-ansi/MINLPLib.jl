function load_prob(probname::AbstractString)
    include("$(Pkg.dir())/POD_experiment/instances/$(probname).jl")
end

load_prob(probname::Vector{AbstractString}) = for i in probname load_prob(i) end



function write_slurm_head(f, j_name, expname;
                            username="sitew",
                            outputpath="/Outputs/POD",
                            cpu_model="E5-2660_v3",
                            walltime="3:00:00",
                            solver="gurobi",
                            kwargs...)

    write(f,"#!/bin/bash\n")
    write(f,"#SBATCH --job-name=\"$(j_name)\"\n")
    write(f,"#SBATCH --output=\"$(homedir())/$(outputpath)/$(expname)/$(j_name).out\"\n")
    write(f,"#SBATCH --constraint=\"cpu_model:$(cpu_model)\"\n")
    write(f,"#SBATCH --ntasks=1\n")
    write(f,"#SBATCH --no-requeue\n")
    write(f,"#SBATCH -t $(walltime)\n\n")
    (solver == "gurobi") && write(f,"julia $(homedir())/start_gurobi.jl\n")
    write(f,"lscpu\n")

    return
end

function write_pbs_head(f, jname, expname;
                        usermail="sitew@g.clemson.edu",
                        username="sitew",
                        outputpath="/Outputs/POD",
                        ncpus="8",
                        mem="16",
                        walltime="3:00:00",
                        solver="gurobi",
                        kwargs...)

    write(f,"#!/bin/bash\n")
    write(f,"#PBS -N $(jname)\n")
    write(f,"#PBS -m abe\n")
    write(f,"#PBS -M $(usermail)\n")
    write(f,"#PBS -l select=1:ncpus=$(ncpus):mem=$(mem)gb,walltime=$(walltime)\n")
    write(f,"#PBS -o $(homedir())/$(outputpath)/$(expmode)/$(jname).o\n")
    write(f,"#PBS -e $(homedir())/$(outputpath)/$(expmode)/$(jname).e\n\n\n")
    (solver == "gurobi") && write(f,"module add gurobi/7.0.1 \n")
    write(f,"lscpu\n")

    return
end

function write_basic_jl(probname="", expname="default", arguments=Dict())

    isempty(probname) && error("probname cannot be empty")

    arg_string = ""
    for i in keys(arguments)
        arg_string = "$(arg_string)$(i)=$(arguments[i]),"
    end

    jname = "$(probname)"
    for i in keys(arguments)
        jname = "$(jname)_$(uppercase(i))$(arguments[i])"
    end

    !isdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)") && mkdir("$(Pkg.dir())/POD_experiment/.jls/$(expname)")
    jlf = open("$(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jname)", "w")
    write(jlf, "m=$(probname)($(arg_string))\n")
    write(jlf, "solve(m)\n")
    close(jlf)

    return jname
end

function write_basic_sh(expname="default", jobname="default", hpc_type="slurm")

    !isdir("$(Pkg.dir())/POD_experiment/.shs/$(expname)") && mkdir("$(Pkg.dir())/POD_experiment/.shs/$(expname)")

    if hpc_type == "slurm"
        batchf = open("$(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).sh", "w")
        write_slurm_head(batchf, jobname, expname)
    elseif hpc_type == "pbs"
        batchf = open("$(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).pbs", "w")
        write_pbs_head(batchf, jobname, expname)
    end
    write(batchf,"julia $(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jobname).jl\n")
    close(batchf)

    return
end

function submit_to_hpc(expname="default", jobname="", hpc_type="slurm")

    isempty(jobname) && error("no file name with submission")

    if hpc_type == "slurm"
        run("sbatch $(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).sh")
    elseif hpc_type == "pbs"
        run(`qsub $(Pkg.dir())/POD_experiment/.shs/$(expname)/$(jobname).pbs`)
    else
        error("wtf is this hpc_type ($(hpc_type))?")
    end

    return
end

function clear_cache()

    all_shs_dir = glob("*", "$(Pkg.dir())/POD_experiment/.shs/")
    all_jls_dir = glob("*", "$(Pkg.dir())/POD_experiment/.shs/")

    for i in all_shs_dir
        rm(i, recursive=true)
    end

    for i in all_jls_dir
        rm(i, recursive=true)
    end

    return
end
