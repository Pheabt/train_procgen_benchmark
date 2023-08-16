#!/bin/bash
#SBATCH --job-name=your_job_name
#SBATCH --output=output.log
#SBATCH --error=error.log
#SBATCH --partition=gpu  # 选择适合GPU的分区
#SBATCH --gres=gpu:1     # 请求1个GPU
#SBATCH --mem=8G        # 指定内存
#SBATCH --time=5:00:00  # 预估运行时间

# 激活您的conda环境
source /work/home/acdjbrxlyg/anaconda3/bin/activate pro  # 替换为您的实际环境路径和环境名

# 切换到存放main.py的目录
cd /work/home/acdjbrxlyg/train_procgen_benchmark/main.py

# 运行Python脚本
python main.py --gpu 0
