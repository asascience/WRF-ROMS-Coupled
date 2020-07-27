# Checkout ROMS coupling branch
romsuser=patrickt

svn checkout --username $romsuser https://www.myroms.org/svn/coupling/trunk ROMS

cd ./ROMS
cd ..

# Note: If you encounter an error message while retrieving ROMS similar to the following:
# svn: E175002: REPORT of '/svn/coupling/!svn/me': Could not read response body: SSL error: A TLS packet with unexpected length was received. (https://www.myroms.org)
# run:
# cd ROMS
# svn cleanup
# svn update

# Checkout WRF fork and select branch
git clone git@github.com:asascience/WRF.git
cd WRF
git checkout v4.1.3_cpl_gfort
cd ..
