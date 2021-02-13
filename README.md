# Sam-Metabarcoding

## Goals

The goal of this repository is to become comfortable with the bioinformatic pipeline for metabarcoding, working with a variety of datasets and software tools

## Repository Structure

In this Repository you will find the following:

- Scripts Folder: This folder holds scripts in Jupyter Notebooks and R Markdown files for various attempts and methods to step through dataset
- Assignments Folder: This folder holds some jupyter notebooks and assignment-related work
- Data Folder: Folder holds three folders continaing Bat metabarcoding information (Bat_Data), Mouse microbiome (MiSeq_SOP), and Wolf metabarcoding information (wolf_tutorial). Each folder contains raw and and filtered sample files
- Results Folder: Currently has results of using obitools on the wolf scat dataset, and DADA2 results on the mouse microbiome dataset. Bat dataset has some snags witht he reference database that need to be worked out before completion

- Intermediary files that are too large for GitHub are stored on Samantha Kreling's local machine and available upon request.

## General Workflows by Dataset

#### Bat - See specifics on both work flows used below under Wolf (ObiTools) and Mouse (DADA2) 

1. Get data from https://dryad.figshare.com/articles/dataset/Sequence_Raw_Data_-_Part_1/10649372
2. Do some data exploration and some quality control - trim in DADA 2 using truncation to 10 quality score (standard; i.e. remove regions where quality falls below 10) or trim in commandline
3. Work through ObiTools and DADA2 workflow - stuck on both at the moment. With Obitools, I've merged the forward and reverse sequences, but don't know the DNA tag that was on this specific sample and there's not documentation in the paper that it comes from to alert me to the sequence, so a bit stuck there. With the DADA2 workflow, I've done everything except it needs a reference database that is formatted in a very specific way and I can't find a pre-formatted database for 12S metabarcoding yet so I'm looking into way to convert a fastq reference file to the specific formatting they need it in. 

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
## Next steps

1. I figured out why DADA2 wasn't working with the BOLD reference database and it's because you need a very specpifc format, so I'm in the process of either A) converting that BOLD reference database or B) finding an alternate database thats already formatted (currenlty have only found 16s databases though)
2. Work on bat sequences in obitools and DADA2. Specifically find a way around knowing the ID tag sequence for the bat samples for obitools
3. Make workflow work across mulitple samples at once (hopefully)