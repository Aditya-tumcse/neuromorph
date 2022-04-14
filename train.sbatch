#!/bin/bash
#SBATCH --job-name="Neuromorph_training_FAUST"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:2,VRAM:12G
#SBATCH --mem=2G
#SBATCH --time=0:05:00
#SBATCH --mail-type=ALL
#SBATCH --output=/storage/slurm/logs/slurm-%j.out
#SBATCH --error=/storage/slurm/logs/slurm-%j.out
srun python main_train.py