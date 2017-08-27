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
    write(f,"#SBATCH --output=\"$(homedir())/$(outputpath)/$(exp_name)/$(j_name).out\"\n")
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
    write(f,"#PBS -o $(homedir())/$(outputpath)/$(exprmode)/$(jname).o\n")
    write(f,"#PBS -e $(homedir())/$(outputpath)/$(exprmode)/$(jname).e\n\n\n")
    (solver == "gurobi") && write(f,"module add gurobi/7.0.1 \n")
    write(f,"lscpu\n")

    return
end

function write_basic_jl(probname::AbstractString, arguments::Dict;
                        expname="")
    arg_string = ""
    for i in keys(arguments)
        arg_string = "$(arg_string)$(i)=$(arguments[i]),"
    end

    jname = "$(probname)"
    for i in keys(arguments)
        jname = "$(jname)_$(uppercase(i))$(arguments[i])"
    end

    jlf = open("$(Pkg.dir())/POD_experiment/.jls/$(expname)/$(jlspath)/$()")
    write(jlf, "m=$(probname)($(arg_string))\n")
    write(jlf, "solve(m)\n")
    close(jlf)

    return jname
end

function submit_to_hpc(hpc_type="slurm", jobname="", expname="")

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
