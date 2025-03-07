#!/bin/bash

# script to run the current lstm configuration for Clear Creek in NextGen
# forcing data: /home/m10870071/hydrofcst/SHARP/forcings/06719505/NWM_AnA/postproc/all_forc/old
# note: It uses a pre-trained lstm model from the lstm_frame repo (nh_AORC_hourly_slope_elev_precip_temp_seq999_seed101_2801_191806)

# make sure the correct version is installed
pip install xarray==0.16.0

./cmake_build/ngen \
        /home/m10870071/hydrofcst/SHARP/inputs/hydrofabric/06719505/clear_ck.v201.catchment_data.geojson all \
        /home/m10870071/hydrofcst/SHARP/inputs/hydrofabric/06719505/clear_ck.v201.nexus_data.geojson all  \
        /home/m10870071/lstm/ngen_python/data/lstm/rc_files/realization_config_clear_ck.json