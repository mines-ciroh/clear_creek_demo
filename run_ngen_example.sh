### Example run command
<path_to_ngen_exe> <path_to_catchment_data> all <path_to_nexus_data> all <path_to_realization_file>

### To run an example on Mines/Wendian, enter one of the following commands.
 
#### CFE configuration
/beegfs/projects/hydrofcst/SHARP/models/ngen_test/ngen/cmake_build/ngen ./inputs/hydrofabric/ all \
  ./inputs/hydrofabric/ all ./config/06719505/realization_file.06719505.cfe.json

#### Noah-OWP-Modular configuration
/beegfs/projects/hydrofcst/SHARP/models/ngen_test/ngen/cmake_build/ngen ./inputs/hydrofabric/ all ./inputs/hydrofabric/ all ./config/06719505/realization_file.06719505.[***]
