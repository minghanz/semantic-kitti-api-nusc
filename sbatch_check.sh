#!/bin/bash
#SBATCH --job-name 4DSCK
#SBATCH --nodes=1
#SBATCH --time=10:00:00
#SBATCH --account=hpeng1
#SBATCH --mail-type=END,FAIL

#SBATCH --partition=standard
#SBATCH --cpus-per-task=1

#SBATCH --mem-per-cpu=1g

# conda init bash
source ~/anaconda3/etc/profile.d/conda.sh
# conda activate predator
conda activate 4dpls
# CUDA_VISIBLE_DEVICES=0 

### This is to print the host name
ipnip=$(hostname -i)
echo ipnip=$ipnip

python validate_submission.py --task panoptic \
/home/minghanz/repos/4D-StOP/test/Log_2023-02-25_10-25-22/test_1100/stitch4/submission.zip \
/home/minghanz/repos/4D-StOP/SemanticKitti/dataset