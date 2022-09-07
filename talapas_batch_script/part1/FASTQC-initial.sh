#!/bin/bash
#SBATCH --account=bgmp               ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --output=QAA_part1%j.out
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=sobermil@uoregon.edu  ### Where to send mail
#SBATCH --cpus-per-task=8
#SBATCH --error=QAA_part1%j.err
conda activate QAA
/usr/bin/time -v \
fastqc -o part1output --noextract /projects/bgmp/shared/2017_sequencing/demultiplexed/10_2G_both_S8_L008_R1_001.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/10_2G_both_S8_L008_R2_001.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/31_4F_fox_S22_L008_R1_001.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/31_4F_fox_S22_L008_R2_001.fastq.gz