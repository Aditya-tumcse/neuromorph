#!/bin/bash
#SBATCH --job-name="Neuromorph_training_FAUST"
#SBATCH --nodes=2
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:5,VRAM:24G
#SBATCH --mem=12G
#SBATCH --time=0:05:00
#SBATCH --mail-type=ALL
#SBATCH --output=/storage/slurm/logs/slurm-%j.out
#SBATCH --error=/storage/slurm/logs/slurm-%j.out
srun python main_train.py