#!/bin/bash
# Batch process all subdirectories in a directory

# Directory containing the files to be processed
# input_dir="/home/anna_y/data/test/"
input_dir="/home/anna_y/data/write/Class/"
script="create_rds.R"
# script="nebula.R"

# Loop through each file in the directory
for directory in "$input_dir"*/; do
    echo $directory
    echo "Running $script on directory: $directory"
    ./submit.sh $script $directory
done