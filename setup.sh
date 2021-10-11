#!/bin/bash

# Download and prepare raw data
mkdir data
cd data
wget https://zenodo.org/record/5101839/files/epic6.tar.gz
tar -xvf epic6.tar.gz
rm epic6.tar.gz
mv epic6 raw
cd ..

# Download the singularity container
 singularity pull library://jeevannavar/default/epicpcr-singularity-container:sha256.7687f986fd7512729466685104bcb895e91886900665748cc6e2d7af7cde7b9e
mv epicpcr-singularity-container.sif container.sif
