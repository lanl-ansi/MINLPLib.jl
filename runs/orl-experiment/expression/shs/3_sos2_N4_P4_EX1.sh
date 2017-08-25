#!/bin/bash
#SBATCH --job-name="3_sos2_N4_P4_EX1"
#SBATCH --output="/home/sitew/Outputs/POD/multiKN_expression/3_sos2_N4_P4_EX1.out"
#SBATCH --constraint="cpu_model:E5-2695_v4"
#SBATCH --ntasks=1
#SBATCH --no-requeue
#SBATCH -t 3:00:00

julia /home/sitew/start_gurobi.jl
lscpu
julia /home/sitew/Github/POD_experiment/runs/orl-experiment/expression/jls/3_sos2_N4_P4_EX1.jl
