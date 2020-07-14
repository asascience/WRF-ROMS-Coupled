#!/bin/csh -f
#
# Clean all links to files and create links the data files needed for
# running WRF.
#
# Usage:
#
#    ./set_links.sh [options]
#
# Options:
#
#    -s          Use single precision links
#

set single = 0

while ( ($#argv) > 0 )
  switch ($1)
    case "-s"
      shift
      set single = 1
    breaksw
  endsw
end

# Remove all file links.

find $PWD -type l -exec /bin/rm -fv {} \;

# Set WRF input files links.

#setenv WRF_ROOT_DIR ${HOME}/ocean/repository/WRF 
setenv WRF_ROOT_DIR /save/COMT/repo/WRF

ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA.expanded_rain .
ln -sfv ${WRF_ROOT_DIR}/run/RRTM_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_LW_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_SW_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CAM_ABS_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CAM_AEROPT_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CAMtr_volume_mixing_ratio.RCP4.5 .
ln -sfv ${WRF_ROOT_DIR}/run/CAMtr_volume_mixing_ratio.RCP6 .
ln -sfv ${WRF_ROOT_DIR}/run/CAMtr_volume_mixing_ratio.RCP8.5 CAMtr_volume_mixing_ratio
ln -sfv ${WRF_ROOT_DIR}/run/CAMtr_volume_mixing_ratio.A1B .
ln -sfv ${WRF_ROOT_DIR}/run/CAMtr_volume_mixing_ratio.A2 .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_ALB_ICE_DFS_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_ALB_ICE_DRC_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_ASM_ICE_DFS_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_ASM_ICE_DRC_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_DRDSDT0_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_EXT_ICE_DFS_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_EXT_ICE_DRC_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_KAPPA_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/CLM_TAU_DATA .
ln -sfv ${WRF_ROOT_DIR}/run/ozone.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/ozone_lat.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/ozone_plev.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/aerosol.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/aerosol_lat.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/aerosol_lon.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/aerosol_plev.formatted .
ln -sfv ${WRF_ROOT_DIR}/run/capacity.asc .
ln -sfv ${WRF_ROOT_DIR}/run/coeff_p.asc .
ln -sfv ${WRF_ROOT_DIR}/run/coeff_q.asc .
ln -sfv ${WRF_ROOT_DIR}/run/constants.asc .
ln -sfv ${WRF_ROOT_DIR}/run/masses.asc .
ln -sfv ${WRF_ROOT_DIR}/run/termvels.asc .
ln -sfv ${WRF_ROOT_DIR}/run/kernels.asc_s_0_03_0_9 .
ln -sfv ${WRF_ROOT_DIR}/run/kernels_z.asc .
ln -sfv ${WRF_ROOT_DIR}/run/bulkdens.asc_s_0_03_0_9 .
ln -sfv ${WRF_ROOT_DIR}/run/bulkradii.asc_s_0_03_0_9 .
ln -sfv ${WRF_ROOT_DIR}/run/CCN_ACTIVATE.BIN .

ln -sv ${WRF_ROOT_DIR}/run/p3_lookup_table_1.dat-v4.1 .
ln -sv ${WRF_ROOT_DIR}/run/p3_lookup_table_2.dat-v4.1 .

if ( $single == 0) then
  ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA_DBL ETAMPNEW_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA.expanded_rain_DBL ETAMPNEW_DATA.expanded_rain
  ln -sfv ${WRF_ROOT_DIR}/run/RRTM_DATA_DBL RRTM_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_LW_DATA_DBL RRTMG_LW_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_SW_DATA_DBL RRTMG_SW_DATA
else
  ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA ETAMPNEW_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/ETAMPNEW_DATA.expanded_rain ETAMPNEW_DATA.expanded_rain
  ln -sfv ${WRF_ROOT_DIR}/run/RRTM_DATA RRTM_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_LW_DATA RRTMG_LW_DATA
  ln -sfv ${WRF_ROOT_DIR}/run/RRTMG_SW_DATA RRTMG_SW_DATA
endif

ln -sfv ${WRF_ROOT_DIR}/run/GENPARM.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/LANDUSE.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/SOILPARM.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/URBPARM.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/VEGPARM.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/MPTABLE.TBL .
ln -sfv ${WRF_ROOT_DIR}/run/tr49t67 .
ln -sfv ${WRF_ROOT_DIR}/run/tr49t85 .
ln -sfv ${WRF_ROOT_DIR}/run/tr67t85 .
ln -sfv ${WRF_ROOT_DIR}/run/gribmap.txt .
ln -sfv ${WRF_ROOT_DIR}/run/grib2map.tbl .

