#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --job-name=neuromorph_FAUST_Aligned
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:1
#SBATCH --mem=16GB
#SBATCH --time=168:00:00

module load cuda/11.3
cd /usr/stud/srinivaa/code/neuromorph/
srun -u /usr/stud/srinivaa/anaconda3/envs/neuromorph/bin/python3 /usr/stud/srinivaa/code/neuromorph/main_train.py