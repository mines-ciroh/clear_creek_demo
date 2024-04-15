# clear_creek_demo
A NextGen pilot implementation for Clear Creek at Golden, Colorado

## Synopsis
This single-basin hydrologic modeling application for the Clear Creek at Golden, CO ([USGS 06719505](https://waterdata.usgs.gov/monitoring-location/06719505/#parameterCode=00060&period=P365D&showMedian=false)) watershed is a sandbox for experimentation and development using the [NextGen Water Resources Modeling Framework](https://github.com/NOAA-OWP/ngen). The application will include real-time and retrospective model simulation, short-range to seasonal forecasting, and other eco-hydro-climate analyses.  Some components of the associated code will be hosted in other repos. NextGen and this modeling implementation have been installed and runs on the Colorado School of Mines (CSM) HPC, Wendian.  

## Description
The major components included in the repo are the following:
 * NextGen realization file for a CFE model
 * GIS data: HydroFabric
   * NextGen HydroFabric data: https://www.lynker-spatial.com/#v20/
   * Subsetting tool: https://github.com/NOAA-OWP/hydrofabric/tree/main
 * Forcings: from the real-time operational NWM Analysis and Assimilation Extended dataset mapped to the Clear Creek hydrofabric
   * NWM operational forcing data: https://noaa-nwm-pds.s3.amazonaws.com/index.html
   * NWM to NextGen forcing processor tool: https://github.com/CIROH-UA/ngen-datastream/tree/main/forcingprocessor
 * Initialization files
 * Streamflow observations

## Example run command:
<path_to_ngen_exe> <path_to_catchment_data> all <path_to_nexus_data> all <path_to_realization_file>

## Contributors
 * Josh Sturtevant, CSM, Lynker
 * Andy Wood, CSM, NCAR
 * Nels Frazier, Lynker, U. Wyoming

## Sponsorship
 * NOAA Cooperative Institute for Research to Operations in Hydrology (CIROH) -- Project:  CIROH Hydrologic Prediction Testbed Project (PI Andy Wood)

## Acknowledgements
We thank Nicholas Danes and Mike Robbert, Cyberinfrastructure and Advanced Research Computing, Information and Technology Solutions (ITS), CSM, for helping to enable and troubleshoot implementions of this demo and related work on Mines HPC. 
