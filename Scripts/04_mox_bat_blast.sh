#!/bin/bash
## Job Name
#SBATCH --job-name=546_blast_bat
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
#SBATCH --chdir=/gscratch/scrubbed/skreling/030221_546_blast_bat


##########################################################################
# Exit script if any command fails
set -e
#########################################################################
# Blast path
bldir = "/gscratch/srlab/programs/ncbi-blast-2.8.1+/bin/"

# Build blast database
{bldir}makeblastdb \
-in /gscratch/srlab/skreling/reference_under.fas \
-dbtype nucl \
-out /gscratch/srlab/skreling/reference

# Run blastn
{bldir}blastn \
-db /gscratch/srlab/skreling/reference \
-query /gscratch/srlab/skreling/dereplicated.fasta \
-out /gscratch/scrubbed/skreling/030221_546_blast_bat/bat_S2_blast_mox.tab \
-outfmt 6
