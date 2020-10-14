# WRF-ROMS-Coupled

## Getting Started

## Checkout and Build the models

``` Shell
cd WRF-ROMS-Coupled (or whatever folder you cloned this repository to)
cd SORC
edit checkout.sh and change romsuser to your username
./checkout.sh (ROMS sometimes has problems checking out, see the script for fix)
./buildit.sh
Enter selection [1-75] : 34 (for Linux gfortran systems)
Compile for nesting? (1=basic, 2=preset moves, 3=vortex following) [default 1]: 1
```

## Download the forcing data and other inputs
``` Shell
cd ../jobs
./get_forcings.sh 
```

## Run the Hurricane Irene test case
The script defaults to 24 cores on the local machine. 
``` Shell
./fcstrun.sh
(or run it in the background and avoid terminal hangups)
nohup ./fcstrun.sh < /dev/null >& run.out &
tail -f run.out
```
Output will be written to /ptmp/wrfroms as it runs and then copied to /com/wrfroms when the simulation finishes.
