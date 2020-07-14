# WRF-ROMS-Coupled

## Getting Started

After cloning this repository:
``` Shell
cd WRF-ROMS-Coupled (or whatever you called it if something different)
cd SORC
./checkout.sh (See the script if there are issues)
./buildit.sh
```
## Run the Hurricane Irene test case
``` Shell
cd ../jobs
./fcstrun.sh
```
Output will be written to /ptmp/wrfroms
