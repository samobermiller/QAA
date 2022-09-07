#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS) (i.e. group)
#SBATCH --job-name=align     ### Job Name
#SBATCH --output=align-%j.output      ### File in which to store job output
#SBATCH --error=align.error          ### File in which to store job error messages
#SBATCH --time=0-01:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=8     ### Number of tasks to be launched per Node
#SBATCH --account=bgmp      ### Account used for job submission
#1.2
conda activate QAA
/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_both_S8_TRIMMED_1P.fq.gz \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/10_2G_both_S8_TRIMMED_2P.fq.gz \
--genomeDir /projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a \
--outFileNamePrefix 10_2G_staralign

/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_fox_S22_TRIMMED_1P.fq.gz \
/projects/bgmp/sobermil/bioinfo/Bi622/QAA/31_4F_fox_S22_TRIMMED_2P.fq.gz \
--genomeDir /projects/bgmp/sobermil/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.ens107.STAR_2.7.10a \
--outFileNamePrefix 31_4F_star_align