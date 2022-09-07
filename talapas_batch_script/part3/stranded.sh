#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS) (i.e. group)
#SBATCH --job-name=stranded    ### Job Name
#SBATCH --output=stranded-%j.output      ### File in which to store job output
#SBATCH --error=stranded.error          ### File in which to store job error messages
#SBATCH --time=0-01:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=8     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp      ### Account used for job submission

cat ./htseq/htseq_31_4F_stranded.txt | awk '$1~"ENSM" {sum+=$2} END {print sum}'
cat ./htseq/htseq_31_4F_stranded.txt | awk '{sum+=$2} END {print sum}'

cat ./htseq/htseq_31_4F_reverse.txt | awk '$1~"ENSM" {sum+=$2} END {print sum}'
cat ./htseq/htseq_31_4F_reverse.txt | awk '{sum+=$2} END {print sum}'

cat ./htseq/htseq_10_2G_stranded.txt | awk '$1~"ENSM" {sum+=$2} END {print sum}'
cat ./htseq/htseq_10_2G_stranded.txt | awk '{sum+=$2} END {print sum}'

cat ./htseq/htseq_10_2G_reverse.txt | awk '$1~"ENSM" {sum+=$2} END {print sum}'
cat ./htseq/htseq_10_2G_reverse.txt | awk '{sum+=$2} END {print sum}'