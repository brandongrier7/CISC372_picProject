#!/bin/bash -l
#SBATCH --job-name=output.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output output.txt-job_%j.out
#SBATCH --error output.txt-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun omp-image pic1.jpg edge