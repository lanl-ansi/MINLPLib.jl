from os import system
import sys

def write_slurm_head(shf,jname):
    shf.write("#!/bin/bash\n")
    shf.write("#SBATCH --job-name=\"{0}\"\n".format(jname))
    shf.write("#SBATCH --output=\"/home/sitew/Outputs/POD/multiKN_expression_2660/{0}.out\"\n".format(jname))
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
    shf.write("#PBS -o /home/sitew/Outputs/POD/multiKN_expression/{0}.o\n".format(jname))
    shf.write("#PBS -e /home/sitew/Outputs/POD/multiKN_expression/{0}.e\n\n\n".format(jname))
    shf.write("module add gurobi/7.0.1 \n")
    shf.write("lscpu\n")
    return shf

def write_jl_script(K,F,N,P,expr):
    jlf_name = "{0}_{1}_N{2}_P{3}_EX{4}".format(K,naming[F],N,P,expr)
    jlf = open("jls/{0}.jl".format(jlf_name), "w")
    jlf.write("include(\"/home/sitew/Github/POD_experiment/instances/multi.jl\")\n")
    jlf.write("m=multi{0}N(verbose=true, exprmode={1},convhull=true,{2},N={3},uniform={4})\n".format(K,expr,F,N,P))
    jlf.write("solve(m)\n")
    jlf.close()
    return jlf_name


naming = {"sos2=true":"sos2", "facet=true":"facet", "sos2=false":"minib"}
Fgroup = ["sos2=true"]
Kgroup = [3,4]
Exprgroup = {3:[1,2,3], 4:[1,2,3,4,5,6,7,8,9,10,11]}
Ngroup = {3:range(2,5), 4:range(2,5)}
Pgroup = {3:range(2,32,2), 4:range(2,32,2)}

cnt = 0
for f in Fgroup:
    for k in Kgroup:
        for ex in Exprgroup[k]:
            for n in Ngroup[k]:
                for p in Pgroup[k]:
                    jobname = write_jl_script(k,f,n,p,ex)
                    if sys.argv[1] == "slurm":
                        batchf = open("shs/{0}.sh".format(jobname), 'w')
                        batchf = write_slurm_head(batchf, jobname)
                    elif sys.argv[1] == "pbs":
                        batchf = open("shs/{0}.pbs".format(jobname), 'w')
                        batchf = write_pbs_head(batchf, jobname)
                    batchf.write("julia /home/sitew/Github/POD_experiment/runs/orl-experiment/expression/jls/{0}.jl\n".format(jobname))
                    batchf.close()
                    if sys.argv[1] == "slurm":
                        cnt += 1
                        system("sbatch shs/{0}.sh".format(jobname))
                    elif sys.argv[1] == "pbs":
                        cnt += 1
                        system("qsub shs/{0}.pbs".format(jobname))
                    #raise ValueError

print(cnt)
