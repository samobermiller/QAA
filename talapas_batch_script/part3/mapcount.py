#!/usr/bin/env python
#'srun --account=bgmp --partition=bgmp --nodes=1 --ntasks-per-node=1 --time=1:00:00 --cpus-per-task=1 --pty bash'
#from pickle import TRUE
unmapped=0
mapped=0
with open ("31_4F_star_alignAligned.out.sam", "r") as fh:
    for line in fh:
        if line.startswith("@")==True:
            continue
        else:
            line=line.split('\t') 
            flag=int(line[1])
            if ((flag & 256) !=256):
                #bit 256 indicates whether the line is a secondary alignment or not
                if((flag & 4) != 4):
                    #bit 4 indicates whether segment is unmapped
                    mapped+=1
                else:
                    unmapped+=1
print(mapped)
print(unmapped)
