#!/bin/bash
#SBATCH --job-name=procgen01
#SBATCH --output=output.log
#SBATCH --error=error.log
#SBATCH --partition=gpu_batch 
#SBATCH --gres=gpu:1    

source /home/iotsc_g4/app/miniconda3/bin/activate pro 
cd /home/iotsc_g4/aaa/train_procgen_benchmark/main.py

python main.py --gpu 0
