#!/bin/bash

# Checkout ROMS coupling branch
romsuser=patrickt

svn checkout --username $romsuser https://www.myroms.org/svn/coupling/trunk ROMS
if [ $? -ne 0 ]; then
    cd ROMS
    svn cleanup
    svn update
    cd ..
fi

# Apply fixes for gfortran 
cd ./ROMS
aws s3 cp s3://ioos-cloud-sandbox/public/wrfroms/roms_coupling_gfort_fixes.tgz .
tar -xvf roms_coupling_gfort_fixes.tgz
cd ..

# Checkout WRF fork and select branch
git clone git@github.com:asascience/WRF.git
cd WRF
git checkout v4.1.3_cpl_gfort
cd ..

# The official repository
#git@github.com:wrf-model/WRF.git
