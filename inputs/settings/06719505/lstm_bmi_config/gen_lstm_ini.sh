#!/bin/bash
# Script to generate BMI configuration files for LSTM
# Currently just creates the same file for each basin

# remove current files
rm ./bmi_clear_ck/*.yml

input_file="./basin_info/clear_ck.v2_2.basin_ids.txt"
template="./bmi_config_cc.yml"
output_dir="./bmi_clear_ck/"
area_csv="./basin_info/clear_ck.v2_2.basin_areas.csv"

# loop through list and generate files
while IFS= read -r basin_id; do
    # Extract the important features
    area=$(awk -F',' -v id="$basin_id" '$2 == id {print $3 }' "$area_csv")
    elev=$(awk -F',' -v id="$basin_id" '$2 == id {print $6 }' "$area_csv")
    slope=$(awk -F',' -v id="$basin_id" '$2 == id {print $7 }' "$area_csv" | tr -d '[:space:]')
    
    if [[ -z "$area" ]]; then
        echo "Warning: No area found for $basin_id"
        continue
    fi
    
    if [[ -z "$elev" ]]; then
        echo "Warning: No elevation mean found for $basin_id"
        continue
    fi
    
    if [[ -z "$slope" ]]; then
        echo "Warning: No slope mean found for $basin_id"
        continue
    fi

    # Replace BASIN_ID with the current line and save the modified file
    sed -e "s/BASIN_ID/$basin_id/g" -e "s/AREA_SQKM/$area/g" -e "s/ELEV_MEAN/$elev/g" -e "s/SLOPE_MEAN/$slope/g" "$template" > $output_dir/lstm_bmi_config.${basin_id}.yml 
done < "$input_file"