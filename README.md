# Sam-Metabarcoding

## Final Written Report + Presentation
[Write Up](https://github.com/fish546-2021/Sam-Metabarcoding/blob/main/Assignments/FinalWriteUp.Rmd)
[Presentation](https://docs.google.com/presentation/d/16qDp5F9E2PU1-eJhkUdx4n79HiVpTWdA-55Cm6JgZXU/edit?usp=sharing)


## Goals

The goal of this repository is to become comfortable with the bioinformatic pipeline for metabarcoding, working with a variety of datasets and software tools

## Repository Structure

In this Repository you will find the following:

- Scripts Folder: This folder holds scripts in Jupyter Notebooks and R Markdown files for various attempts and methods to step through dataset
- Assignments Folder: This folder holds some jupyter notebooks and assignment-related work
- Data Folder: Folder holds three folders continaing Bat metabarcoding information (Bat_Data), Mouse microbiome (MiSeq_SOP), and Wolf metabarcoding information (wolf_tutorial). Each folder contains raw and and filtered sample files. Bat and Wolf files also include a .obdims folder which is the file structure created by using obitools.
- Results Folder: The results folder holds outputs for wolf, mouse, and bat datasets. These include ouput tables of taxonomy and species presence information, and some figures that visualize this information.

- Intermediary files that are too large for GitHub are stored on Samantha Kreling's local machine and available upon request. Bat intermediary fils are stored at skreling@gannet.fish.washington.edu:/volume2/web/fish545_2021/skreling

## General Workflows by Dataset

#### Bat - See specifics on both work flows used below under Wolf (ObiTools) and Mouse (DADA2) 

Background information: I processed a single sample S2_L001 from the dataset and merged both the forward and reverse reads. These reads were genereated using CO1 primers (Forward: AGATATTGGAACWTTATATTTTATTTTTGG, Reverse: WACTAATCAATTWCCAAATCCTCC) and sequenced using Illumina paired-ended sequencing. Samples come from European free-tailed bat (*Tadarida teniotis*) fecal samples from Five Bridges, Northeast Portugal. I followed a different approach than the paper which will be more applicable for my eventual coyote dataset than it was in applicability for this particalar dataset. The origianl paper removed haplotypes representing less than 1% of the total number of reads and reads containing stop codons. I did not do either of these steps and instead removed sequences by length and number of reads (>80bp removed, <10 reads removed which is more applicable to mammalian diet where there will be fewer taxa represented and more of each item potentailly consumed than for an insectivorous diet). I used the Barcode of Life Database (BOLD) to obtain a reference database of insect CO1 barcodes.

1. Get data from https://dryad.figshare.com/articles/dataset/Sequence_Raw_Data_-_Part_1/10649372
2. Do some data exploration and some quality control - explore data
3. Import reads to OBITools
4. Recover full sequences from the forward and reverse reads, trim
5. Remove unaligned sequence records
6. Assign each seqeunce record to the corresponding sample 
7. Dereplciate the sequences
8. Denoise and clean the sequences
9. Create Blast directory
10. Run Blastn against the BOLD reference database
11. Process reads in R and create visualizations of data


#### Wolf - ObiTools 3 Workflow 

1. Import data
2. Recover full sequences from the forward and reverse reads, trim
3. Remove unaligned sequence records
4. Assign each sequence record to the corresponding sample/marker combination
5. Derpelicate
6. Denoise the sequence dataset
7. Assin taxonomy
8. Review results

Covert fast to tab deliminated using: https://github.com/RobertsLab/code/blob/master/fasta.md#fasta-to-tab-delimited
#### Mouse - DADA2 in R 

1. Import Data
2. Filter and Trim Data
3. Look at error rates
4. Dereplicate
5. Sequence-variant inference algorithm
6. merge paired-end reads
7. Remove chimeras
8. Assign taxonomy
9. Review results