#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS) (i.e. group)
#SBATCH --job-name=htseq     ### Job Name
#SBATCH --output=htseq-%j.output      ### File in which to store job output
#SBATCH --error=htseq.error          ### File in which to store job error messages
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=8     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp      ### Account used for job submission

conda activate QAA
/usr/bin/time -v \
htseq-count --stranded=yes /projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_star_alignAligned.out.sam \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf \
> /projects/bgmp/sobermil/bioinfo/Bi622/QAA/htseq/htseq_31_4F_stranded.txt

/usr/bin/time -v \
htseq-count --stranded=reverse /projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_star_alignAligned.out.sam \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf \
> /projects/bgmp/sobermil/bioinfo/Bi622/QAA/htseq/htseq_31_4F_reverse.txt

/usr/bin/time -v \
htseq-count --stranded=yes /projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_staralignAligned.out.sam \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf \
> /projects/bgmp/sobermil/bioinfo/Bi622/QAA/htseq/htseq_10_2G_stranded.txt

/usr/bin/time -v \
htseq-count --stranded=reverse /projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_staralignAligned.out.sam \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf \
> /projects/bgmp/sobermil/bioinfo/Bi622/QAA/htseq/htseq_10_2G_reverse.txt