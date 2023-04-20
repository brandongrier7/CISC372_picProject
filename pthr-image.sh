#!/bin/bash -l
#SBATCH --job-name=pthr-output.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output output.txt-job_%j.out
#SBATCH --error output.txt-job_%j.err
#SBATCH --partition=standard

# Start my application
srun pthread-image pic1.jpg edge