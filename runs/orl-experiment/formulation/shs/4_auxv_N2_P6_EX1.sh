#!/bin/bash
#SBATCH --job-name="4_auxv_N2_P6_EX1"
#SBATCH --output="/home/sitew/Outputs/POD/multiKN_formulation/4_auxv_N2_P6_EX1.out"
#SBATCH --constraint="cpu_model:E5-2660_v3"
#SBATCH --ntasks=1
#SBATCH --no-requeue
#SBATCH -t 3:00:00

julia /home/sitew/start_gurobi.jl
lscpu
julia /home/sitew/Github/POD_experiment/runs/orl-experiment/formulation/jls/4_auxv_N2_P6_EX1.jl
