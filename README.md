# clear_creek_demo
A NextGen pilot watershed implementation for Clear Creek at Golden, Colorado

## Synopsis
This single-basin hydrologic modeling application for the Clear Creek at Golden, CO ([USGS 06719505](https://waterdata.usgs.gov/monitoring-location/06719505/#parameterCode=00060&period=P365D&showMedian=false)) watershed is a sandbox for experimentation and development using the [NextGen Water Resources Modeling Framework](https://github.com/NOAA-OWP/ngen). The application will include real-time and retrospective model simulation, model calibration (parameter estimation), short-range to seasonal forecasting, and other eco-hydro-climate analyses.  Most components of the associated applications code will be hosted in other repos while this one includes the mainly the pilot model configurations with an example of their inputs. NextGen and this example watershed modeling implementation runs in real-time on the Colorado School of Mines (CSM) HPC (Wendian).  

## Description
The major components included in the repo are the following:
 * NextGen realization file for:
   * a CFE model
   * a Noah-OWP-Modular model (in progress)
   * t-route implementation (in progress)
   * an LSTM (in progress)
   * SUMMA (in progress)
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
 * Josh Sturtevant, CSM, Lynker (joshua_sturtevant@mines.edu)
 * Andy Wood, CSM, NCAR (awwood@mines.edu)
 * Nels Frazier, Lynker, U. Wyoming

## Sponsorship
 * NOAA Cooperative Institute for Research to Operations in Hydrology ([CIROH](https://ciroh.ua.edu/))
   * Project: [CSM-CIROH Hydrologic Prediction Testbed Project](https://ciroh.mines.edu/research/) (PI A. Wood)

## Usage / Collaboration
We share this watershed example as a resource to assist the NextGen R&D community in implementing NextGen for different applications and studies.  It is unpublished and in-progress work, thus we request that users acknowledge this repo if it is useful in their work -- or better yet, reach out to Andy Wood and Josh Sturtevant to collaborate and contribute.  

## Acknowledgements
We thank Nicholas Danes and Mike Robbert, Cyberinfrastructure and Advanced Research Computing, Information and Technology Solutions (ITS), CSM, for helping to enable and troubleshoot implementions of this demo and related work on Mines HPC. 
