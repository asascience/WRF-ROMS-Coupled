#!/bin/bash
set -x
ulimit -s unlimited
ulimit -c unlimited

. /usr/share/Modules/init/bash
#module purge
export I_MPI_OFI_LIBRARY_INTERNAL=1
#export WRFIO_NCD_LARGE_FILE_SUPPORT=1
#export GFORTRAN_CONVERT_UNIT='native;big_endian:10'
export GFORTRAN_CONVERT_UNIT='big_endian'

# module load wrfroms
module load gcc/6.5.0 
module load mpi/intel/2020.0.166 
module load netcdf/4.5 
module load hdf5/1.10.5 
module load libpng/1.5.30 
module load esmf/8.0.0 

ROTDIR=`dirname ${PWD}`

CDATE=20110827
COMOUT=/com/wrfroms/$CDATE
PTMP=/ptmp/wrfroms/$CDATE

mkdir -p $COMOUT
mkdir -p $PTMP

# Copy forcing data
FRCDIR=$ROTDIR/forcing/$CDATE
cp -p $FRCDIR/* $PTMP

# Copy the links needed by WRF, these were created during the build
cp -Pp  $ROTDIR/SORC/data/* $PTMP

export I_MPI_DEBUG=1

curdir=$PWD

export NPROCS=24
export PPN=$NPROCS

echo "NPROCS is $NPROCS"


export oceanin=coupling_esmf_atm_sbl.in

#export exec=romsG_atmsbl
export exec=romsM_atmsbl

# Copy the executable
cp -p $ROTDIR/exec/$exec $PTMP
cd $PTMP

MPIOPTS=${MPIOPTS:-"-np $NPROCS -ppn $PPN"}

mpirun $MPIOPTS ./$exec $oceanin

mv $PTMP/* $COMOUT

