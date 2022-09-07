#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS) (i.e. group)
#SBATCH --job-name=star     ### Job Name
#SBATCH --output=database-%j.output      ### File in which to store job output
#SBATCH --error=database.error          ### File in which to store job error messages
#SBATCH --time=0-01:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=8     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp      ### Account used for job submission
#1.1
conda activate QAA
/usr/bin/time -v STAR --runThreadN 8 --runMode genomeGenerate \
    --genomeDir /projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a \
    --genomeFastaFiles /projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa
    --sjdbGTFfile /projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf

    #to run script on command line: sbatch <script name>
