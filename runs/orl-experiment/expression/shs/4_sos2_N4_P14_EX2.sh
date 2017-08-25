#!/bin/bash
#SBATCH --job-name="4_sos2_N4_P14_EX2"
#SBATCH --output="/home/sitew/Outputs/POD/multiKN_expression/4_sos2_N4_P14_EX2.out"
#SBATCH --constraint="cpu_model:E5-2695_v4"
#SBATCH --ntasks=1
#SBATCH --no-requeue
#SBATCH -t 3:00:00

julia /home/sitew/start_gurobi.jl
lscpu
julia /home/sitew/Github/POD_experiment/runs/orl-experiment/expression/jls/4_sos2_N4_P14_EX2.jl
