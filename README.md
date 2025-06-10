# clear_creek_demo
A NextGen pilot watershed implementation for Clear Creek at Golden, Colorado

## Synopsis
This single-basin hydrologic modeling application for the Clear Creek at Golden, CO ([USGS 06719505](https://waterdata.usgs.gov/monitoring-location/06719505/#parameterCode=00060&period=P365D&showMedian=false)) watershed is a sandbox for experimentation and development using the [NextGen Water Resources Modeling Framework](https://github.com/NOAA-OWP/ngen). The application will include real-time and retrospective model simulation, model calibration (parameter estimation), short-range to seasonal forecasting, and other eco-hydro-climate analyses.  Most components of the associated applications code will be hosted in other repos while this one includes the mainly the pilot model configurations with an example of their inputs. NextGen and this example watershed modeling implementation runs in real-time on the Colorado School of Mines (CSM) HPC (Wendian).  

## Description
The major components included in the repo are the following:
 * NextGen realization file for:
   * a [CFE model](https://github.com/NOAA-OWP/cfe)
   * a [Noah-OWP-Modular model](https://github.com/NOAA-OWP/noah-owp-modular)
   * [t-route](https://github.com/NOAA-OWP/t-route) implementation (in progress)
   * an [LSTM](https://github.com/NOAA-OWP/lstm) (in progress)
   * SUMMA (in progress)
 * GIS data: Hydrofabric
   * Clear Creek NextGen v2.2 Hydrofabric data: [Mines Clear Creek HydroShare resource](https://www.hydroshare.org/resource/16f2de7e9de94148b868e9be795956bb/)
   * Subsetting tools: [https://github.com/mines-ciroh/subset_ngen_hf](https://github.com/mines-ciroh/subset_ngen_hf)
 * Forcings:
   * 1979-2024 AORCv1.1 mapped to Clear Creek hydrofabric: [Mines Clear Creek HydroShare resource](https://www.hydroshare.org/resource/16f2de7e9de94148b868e9be795956bb/)
   * Real-time NWM Analysis and Assimilation Extended dataset: https://noaa-nwm-pds.s3.amazonaws.com/index.html
   * NWM to NextGen forcing processor tool (used to map real-time AnA products to Clear Creek hydrofabric): https://github.com/CIROH-UA/ngen-datastream/tree/main/forcingprocessor
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
 * We share this watershed example as a resource to assist the NextGen R&D community in implementing NextGen for different applications and studies.
 * It is _unpublished and in-progress work_, thus we request that users acknowledge this repo if it is useful in their work -- or better yet, reach out to Andy Wood and Josh Sturtevant to collaborate and contribute.
 * If you wish to add to the repo, please follow this workflow: fork the main repo, then clone your fork for modification, then push changes back to your fork, then make a pull request back to the main repo. Please work on the **develop** branch (or create a new feature branch in your fork).

## Acknowledgements
We thank Nicholas Danes and Mike Robbert, Cyberinfrastructure and Advanced Research Computing, Information and Technology Solutions (ITS), CSM, for helping to enable and troubleshoot implementions of this demo and related work on Mines HPC. 
