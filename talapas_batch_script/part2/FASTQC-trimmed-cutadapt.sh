#!/bin/bash
#SBATCH --account=bgmp               ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --output=part2_7a%j.out
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=sobermil@uoregon.edu  ### Where to send mail
#SBATCH --cpus-per-task=8
#SBATCH --error=part2_7a%j.err
conda activate QAA
/usr/bin/time -v \
fastqc -o part2output --noextract ./10_2G_both_S8_TRIMMED_1P.fq.gz ./10_2G_both_S8_TRIMMED_2P.fq.gz ./31_4F_fox_S22_TRIMMED_1P.fq.gz ./31_4F_fox_S22_TRIMMED_2P.fq.gz