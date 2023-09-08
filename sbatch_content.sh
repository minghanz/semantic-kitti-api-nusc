#!/bin/bash
#SBATCH --job-name SKRT
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --account=hpeng1
#SBATCH --mail-type=END,FAIL

#SBATCH --partition=standard
#SBATCH --cpus-per-task=1

#SBATCH --mem-per-cpu=24g

# conda init bash
source ~/anaconda3/etc/profile.d/conda.sh
# conda activate predator
conda activate 4dpls
# CUDA_VISIBLE_DEVICES=0 

### This is to print the host name
ipnip=$(hostname -i)
echo ipnip=$ipnip

python content.py --nuscenes --dataset /scratch/hpeng_root/hpeng1/minghanz/nuscenes_semantickitti \
--config /scratch/hpeng_root/hpeng1/minghanz/nuscenes_semantickitti/semantic-kitti.yaml 