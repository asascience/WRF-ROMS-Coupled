#!/bin/bash

# Checkout ROMS coupling branch
romsuser=patrickt

ROMSVER=186

svn checkout --username $romsuser -r $ROMSVER https://www.myroms.org/svn/coupling/trunk ROMS
if [ $? -ne 0 ]; then
    cd ROMS
    svn cleanup
    svn update
    cd ..
fi

# Apply fixes for gfortran 
cd ./ROMS
fixfile=roms_wrf_oct2020_fixes.tgz
url=https://ioos-cloud-sandbox.s3.amazonaws.com/public/wrfroms
wget $url/$fixfile
tar -xvf $fixfile
cd ..

# Checkout WRF fork and select branch
git clone git@github.com:asascience/WRF.git
cd WRF
git checkout -t origin/4.2_fixes
cd ..

# The official repository
#git@github.com:wrf-model/WRF.git
