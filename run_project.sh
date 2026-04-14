#!/bin/bash

# This bash script will run the entire project

# remove any old constructed data
find data/data_constructed -mindepth 1 ! -name "README.md" -exec rm -rf {} +

# install any required packages
Rscript check_packages.R

# load the raw data and transform into analytical data
Rscript analysis/organize_data.R

# run the anaysis via quarto
quarto render analysis/analysis.qmd