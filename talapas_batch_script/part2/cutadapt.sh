#!/bin/bash
#SBATCH --account=bgmp               ###
#SBATCH --partition=bgmp       ### Partition
#SBATCH --output=QAA%j.out
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --mail-type=END              ### Mail events (NONE, BEGIN, END, FA$
#SBATCH --mail-user=sobermil@uoregon.edu  ### Where to send mail
#SBATCH --cpus-per-task=8
#SBATCH --error=QAA%j.err
conda activate QAA
/usr/bin/time -v \
cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
 -o /projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_both_S8_output_R1.fastq\
  -p /projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_both_S8_output_R2.fastq\
  /projects/bgmp/shared/2017_sequencing/demultiplexed/10_2G_both_S8_L008_R1_001.fastq.gz\
   /projects/bgmp/shared/2017_sequencing/demultiplexed/10_2G_both_S8_L008_R2_001.fastq.gz
/usr/bin/time -v \
cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT\
 -o /projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_fox_S22_output_R1.fastq\
  -p /projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_fox_S22_output_R2.fastq\
  /projects/bgmp/shared/2017_sequencing/demultiplexed/31_4F_fox_S22_L008_R1_001.fastq.gz\
   /projects/bgmp/shared/2017_sequencing/demultiplexed/31_4F_fox_S22_L008_R2_001.fastq.gz