#!/bin/bash
# Script to generate BMI configuration files for LSTM
# Currently just creates the same file for each basin

# remove current files
rm ./bmi_clear_ck/*.yml

input_file="./clear_ck.basin_ids.txt"
template="./clear_ck.yml"
output_dir="./bmi_clear_ck/"

# loop through list and generate files
while IFS= read -r basin_id; do
    # Replace BASIN_ID with the current line and save the modified file
    sed "s/BASIN_ID/$basin_id/g" "$template" > $output_dir/lstm_bmi_config.${basin_id}.yml
done < "$input_file"