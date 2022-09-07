#!/bin/bash
#SBATCH --account=bgmp               ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --output=part2_6%j.out
#SBATCH --error=part2_6%j.err
#SBATCH --time=12:00:00        ### WallTime
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=sobermil@uoregon.edu  ### Where to send mail
#SBATCH --cpus-per-task=1
conda activate QAA
cd /projects/bgmp/sobermil/bioinfo/Bi622/QAA
/usr/bin/time -v \
trimmomatic PE ./10_2G_both_S8_output_R1.fastq \
./10_2G_both_S8_output_R2.fastq -baseout 10_2G_both_S8_TRIMMED.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

/usr/bin/time -v \
trimmomatic PE ./31_4F_fox_S22_output_R1.fastq \
./31_4F_fox_S22_output_R2.fastq -baseout 31_4F_fox_S22_TRIMMED.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

