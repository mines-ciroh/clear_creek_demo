#!/bin/bash

# Define the paths to the input text file and the template file
input_file="/beegfs/projects/hydrofcst/SHARP/sharp_data/states/clear_ck/clear_ck.basin_list.txt"
template_file="/beegfs/projects/hydrofcst/SHARP/sharp_data/states/clear_ck/cfe/cfe_bmi_config.TPL.ini"

# Loop through each line in the input file
while IFS= read -r basin_id; do
    # Replace BASIN_ID with the current line and save the modified file
    sed "s/BASIN_ID/$basin_id/g" "$template_file" > "./cfe_bmi_config.${basin_id}.ini"
done < "$input_file"
