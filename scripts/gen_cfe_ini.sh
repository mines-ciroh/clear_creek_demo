#!/bin/bash
# Script to generate default catchment level CFE parameter files based on a template

# Define catchment list and the template file
input_file="./06719505.basin_list.txt"
template_file="./cfe_bmi_config.TPL.ini"
output_dir="../inputs/settings/06719505/cfe/"

# Loop through each basin and create a basin-specific ini file
while IFS= read -r basin_id; do
    # Replace BASIN_ID with the current line and save the modified file
    sed "s/BASIN_ID/$basin_id/g" "$template_file" > $output_dir/cfe_bmi_config.${basin_id}.ini
done < "$input_file"
