function write_slurm_head(shf,jname)
    write(shf, "#!/bin/bash\n")
    write(shf, "#SBATCH --job-name=\"$(jname)\"\n")
    write(shf, "#SBATCH --output=\"/home/sitew/Outputs/POD/multiKN/$(jname).out\"\n")
    write(shf, "#SBATCH --constraint=\"cpu_model:E5-2695_v4\"\n")
    write(shf, "#SBATCH --ntasks=1\n")
    write(shf, "#SBATCH --no-requeue\n")
    write(shf, "#SBATCH -t 3:00:00\n\n")
    write(shf, "julia /home/sitew/start_gurobi.jl\n")
end

function write_pbs_head(f, jname)
    write(f, "#!/bin/bash\n")
    write(f, "#PBS -N $(jname)\n")
    write(f, "#PBS -m abe\n")
    write(f, "#PBS -M sitew@g.clemsone.edu\n")
    write(f, "#PBS -l select=1:ncpus=8:mem=16gb,walltime=3:00:00\n")
    write(f, "#PBS -o /home/sitew/Outputs/POD/multiKN_v1/$(jname).o\n")
    write(f, "#PBS -e /home/sitew/Outputs/POD/multiKN_v1/$(jname).e\n\n\n")
    write(f, "module add gurobi/7.0.1 \n")
end

function write_jl_script(K,F,N,P)
	jlf_name = string("$(K)_$(naming[F])_N$(N)_P$(P)_GRB")
	jlf = open("jls/$(jlf_name).jl", "w")
	write(jlf, "include(\"/home/sitew/Github/POD_experiment/instances/multi.jl\")\n")
	write(jlf, "m=multiKN(verbose=true,convhull=true,$(F),K=$(K),N=$(N),uniform=$(P))\n")
	write(jlf, "solve(m)\n")
	close(jlf)
	return jlf_name
end

naming = Dict("sos2=true"=>"sos2",
			  "facet=true"=>"facet",
			  "sos2=false"=>"minimum"
              "sos2_alter=true"=>"alter")

Fgroup = ["sos2=true", "sos2_alter=true", "facet=true", "sos2=false"]
Pgroup = ["nlp3", "multi3N", "blend531", "blend721", "blend146", "blend029","eniplac","meanvarx","lee1","lee2","meyer4","meyer10","meyer15"]
Sgroup = Dict("multi3N"=>"exprmode=1, N=3")

for p in Pgroup
for k in Kgroup
for n in Ngroup[k]
for p in Pgroup[k]
	jobname = write_jl_script(k,f,n,p)
    if ARGS[1] == "slurm"
        batchf = open("shs/$(jobname).sh", "w")
        write_slurm_head(batchf, jobname)
    elseif ARGS[1] == "pbs"
        batchf = open("shs/$(jobname).pbs", "w")
        write_pbs_head(batchf, jobname)
    end
	write(batchf, "julia /home/sitew/Github/POD_experiment/orl-experiment/$(expname)/jls/$(jobname).jl\n")
	close(batchf)
    if ARGS[1] == "slurm"
	    run(`sbatch shs/$(jobname).sh`)
    elseif ARGS[1] == "pbs"
        run(`qsub shs/$(jobname).pbs`)
    end
	#error("TEST")
end
end
end
end
