#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --job-name=neuromorph_SMAL_Aligned_reduced_time_steps
#SBATCH --nodes=1
#SBATCH --cpus-per-task=3
#SBATCH --gres=gpu:3
#SBATCH --mem=32GB
#SBATCH --time=168:00:00

module load cuda/11.3
cd /usr/stud/srinivaa/code/neuromorph/
srun -u /usr/stud/srinivaa/anaconda3/envs/neuromorph/bin/python3 /usr/stud/srinivaa/code/neuromorph/main_train.py