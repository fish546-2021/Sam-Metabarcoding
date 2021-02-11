# Sam-Metabarcoding

## Goals

The goal of this repository is to become comfortable with the bioinformatic pipeline for metabarcoding, working with a variety of datasets and software tools

## Repository Structure

In this Repository you will find the following:

- Analysis Folder: This folder holds scripts in Jupyter Notebooks and R Markdown files for various attempts and methods to step through dataset
- Assignments Folder: This folder holds some jupyter notebooks and assignment-related work
- Data Folder: Folder holds three folders continaing Bat metabarcoding information (Bat_Data), Mouse microbiome (MiSeq_SOP), and Wolf metabarcoding information (wolf_tutorial). Each folder contains raw and and filtered sample files
- Results Folder: Currently has results of using obitools on the wolf scat dataset, and DADA2 results on the mouse microbiome dataset. Bat dataset has some snags witht he reference database that need to be worked out before completion

*NOTE*: The obitools workflow is currently not on a Jupyter notebook because I couldn't get the virtual environment that is necessary to work in obitools to work from there and all the workflow process is in a different directory. Will move it over at some point.

## Next steps

1. I figured out why DADA2 wasn't working with the BOLD reference database and it's because you need a very specpifc format, so I'm in the process of either A) converting that BOLD reference database or B) finding an alternate database thats already formatted (currenlty have only found 16s databases though)
2. Work on bat sequences in obitools and DADA2