#!/bin/bash
## Job Name
#SBATCH --job-name=546_blast
## Allocation Definition
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=0-12:00:00
## Memory per node
#SBATCH --mem=120G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=skreling@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/skreling/022621_546_blast


# Load Python Mox module for Python module availability

module load intel-python3_2017




source /gscratch/srlab/programs/scripts/paths.sh



/gscratch/srlab/programs/ncbi-blast-2.8.1+/bin/blastx \
-query /gscratch/srlab/sr320/data/cg/GCF_000297895.1_oyster_v9_cds_from_genomic.fna \
-db /gscratch/srlab/blastdbs/UniProtKB_20190109/uniprot_sprot.fasta  \
-out /gscratch/scrubbed/skreling/022621_546_blast/Cg-blastx-sp.tab \
-evalue 1E-05 \
-num_threads 40 \
-max_target_seqs 1 \
-max_hsps 1 \
-outfmt "6 qaccver saccver evalue"
