#!/bin/bash

. /usr/share/Modules/init/bash

module load gcc/6.5.0 
module load mpi/intel/2020.0.166 
module load netcdf/4.5 
module load hdf5/1.10.5 
module load libpng/1.5.30 
module load esmf/8.0.0 

# ROMS Compilers configis uses these to locate esmf.mk instead of using setting from modulefile
# include $(ESMF_MK_DIR)/esmf.mk
export ESMF_COMPILER=gfortran
export ESMF_ABI=64
export ESMF_COMM=intelmpi
export ESMF_SITE=default
export ESMF_DIR=/usrx/esmf/8.0.0
export ESMF_BOPT=O

clean=1
PROCS=4

if [ $clean -eq 0 ]; then
  rebuild='-noclean -noconfig'
  rebuildo='-noclean'

  yes "" | ./build_wrf.sh -move $rebuild -j $PROCS
  if [ $? -eq 0 ]; then
    ./build_roms.csh $rebuildo -j $PROCS
  else
    echo "ERROR building WRF"
  fi
else
  rebuild=''
  rebuildo=''

  ./build_wrf.sh -move -j $PROCS
  if [ $? -eq 0 ]; then
    ./build_roms.csh -j $PROCS
  else
    echo "ERROR building WRF"
  fi
fi

