# WRF-ROMS-Coupled

## Getting Started

## Checkout and Build the models
``` Shell
cd WRF-ROMS-Coupled (or whatever folder you cloned this repository to)
cd SORC
./checkout.sh (ROMS sometimes has problems checking out, see the script for fix)
./buildit.sh
```
## Run the Hurricane Irene test case
``` Shell
cd ../jobs
./fcstrun.sh
```
Output will be written to /ptmp/wrfroms
