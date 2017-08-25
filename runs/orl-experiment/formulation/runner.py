from os import system
import os
import sys

def write_slurm_head(shf,jname):
    shf.write("#!/bin/bash\n")
    shf.write("#SBATCH --job-name=\"{0}\"\n".format(jname))
    shf.write("#SBATCH --output=\"/home/sitew/Outputs/POD/multiKN_formulation/{0}.out\"\n".format(jname))
    shf.write("#SBATCH --constraint=\"cpu_model:E5-2660_v3\"\n")
    shf.write("#SBATCH --ntasks=1\n")
    shf.write("#SBATCH --no-requeue\n")
    shf.write("#SBATCH -t 3:00:00\n\n")
    shf.write("julia /home/sitew/start_gurobi.jl\n")
    shf.write("lscpu\n")
    return shf

def write_pbs_head(shf, jname):
    shf.write("#!/bin/bash\n")
    shf.write("#PBS -N {0}\n".format(jname))
    shf.write("#PBS -m abe\n")
    shf.write("#PBS -M sitew@g.clemsone.edu\n")
    shf.write("#PBS -l select=1:ncpus=8:mem=16gb,walltime=3:00:00\n")
    shf.write("#PBS -o /home/sitew/Outputs/POD/multiKN_formulation/{0}.o\n".format(jname))
    shf.write("#PBS -e /home/sitew/Outputs/POD/multiKN_formulation/{0}.e\n\n\n".format(jname))
    shf.write("module add gurobi/7.0.1 \n")
    shf.write("lscpu\n")
    return shf

def write_jl_script(K,F,N,P):
    jlf_name = "{0}_{1}_N{2}_P{3}_EX1".format(K,naming[F],N,P)
    jlf = open("jls/{0}.jl".format(jlf_name), "w")
    jlf.write("include(\"/home/sitew/Github/POD_experiment/instances/multi.jl\")\n")
    jlf.write("m=multiKN(verbose=true,exprmode=1,convhull=true,K={0},{1},N={2},uniform={3})\n".format(K,F,N,P))
    jlf.write("solve(m)\n")
    jlf.close()
    return jlf_name

naming = {"sos2=true":"sos2", "facet=true":"facet", "sos2=false":"minib", "sos2_alter=true":"auxv"}
Fgroup = ["sos2=true", "facet=true", "sos2=false", "sos2_alter=true"]
Kgroup = [2, 3, 4]
Ngroup = {2:[16,15,14],3:[8,7,6],4:[4,3,2]}
Pgroup = {2:range(2,32,2),3:range(2,16,2),4:range(2,14,2)}

cnt = 0
for f in Fgroup:
    for k in Kgroup:
        for n in Ngroup[k]:
            for p in Pgroup[k]:
                jobname = write_jl_script(k,f,n,p)
                if sys.argv[1] == "slurm":
                    batchf = open("shs/{0}.sh".format(jobname), 'w')
                    batchf = write_slurm_head(batchf, jobname)
                elif sys.argv[1] == "pbs":
                    batchf = open("shs/{0}.pbs".format(jobname), 'w')
                    batchf = write_pbs_head(batchf, jobname)
                batchf.write("julia /home/sitew/Github/POD_experiment/runs/orl-experiment/formulation/jls/{0}.jl\n".format(jobname))
                batchf.close()
                if sys.argv[1] == "slurm":
                    cnt += 1
                    system("sbatch shs/{0}.sh".format(jobname))
                elif sys.argv[1] == "pbs":
                    cnt += 1
                    system("qsub shs/{0}.pbs".format(jobname))
                #raise ValueError

print(cnt)
