#!/bin/csh -f
#
# Clean all links to files and create links the data files needed for
# running WRF.
#
# Usage:
#
#    $NEW_DIR/set_links.sh [options]
#
# Options:
#
#    -s          Use single precision links
#

set single = 0


# Set WRF input files links.

setenv NEW_DIR /com/COMT/ocean/repository/WRF/run

mv  ETAMPNEW_DATA $NEW_DIR
mv  ETAMPNEW_DATA.expanded_rain $NEW_DIR
mv  RRTM_DATA $NEW_DIR
mv  RRTMG_LW_DATA $NEW_DIR
mv  RRTMG_SW_DATA $NEW_DIR
mv  CAM_ABS_DATA $NEW_DIR
mv  CAM_AEROPT_DATA $NEW_DIR
mv  CAMtr_volume_mixing_ratio.RCP4.5 $NEW_DIR
mv  CAMtr_volume_mixing_ratio.RCP6 $NEW_DIR
#mv  CAMtr_volume_mixing_ratio.RCP8.5 CAMtr_volume_mixing_ratio
mv  CAMtr_volume_mixing_ratio.A1B $NEW_DIR
mv  CAMtr_volume_mixing_ratio.A2 $NEW_DIR
mv  CLM_ALB_ICE_DFS_DATA $NEW_DIR
mv  CLM_ALB_ICE_DRC_DATA $NEW_DIR
mv  CLM_ASM_ICE_DFS_DATA $NEW_DIR
mv  CLM_ASM_ICE_DRC_DATA $NEW_DIR
mv  CLM_DRDSDT0_DATA $NEW_DIR
mv  CLM_EXT_ICE_DFS_DATA $NEW_DIR
mv  CLM_EXT_ICE_DRC_DATA $NEW_DIR
mv  CLM_KAPPA_DATA $NEW_DIR
mv  CLM_TAU_DATA $NEW_DIR
mv  ozone.formatted $NEW_DIR
mv  ozone_lat.formatted $NEW_DIR
mv  ozone_plev.formatted $NEW_DIR
mv  aerosol.formatted $NEW_DIR
mv  aerosol_lat.formatted $NEW_DIR
mv  aerosol_lon.formatted $NEW_DIR
mv  aerosol_plev.formatted $NEW_DIR
mv  capacity.asc $NEW_DIR
mv  coeff_p.asc $NEW_DIR
mv  coeff_q.asc $NEW_DIR
mv  constants.asc $NEW_DIR
mv  masses.asc $NEW_DIR
mv  termvels.asc $NEW_DIR
mv  kernels.asc_s_0_03_0_9 $NEW_DIR
mv  kernels_z.asc $NEW_DIR
mv  bulkdens.asc_s_0_03_0_9 $NEW_DIR
mv  bulkradii.asc_s_0_03_0_9 $NEW_DIR
mv  CCN_ACTIVATE.BIN $NEW_DIR

# Can't find these!
mv  p3_lookup_table_1.dat-v2.8.2 $NEW_DIR
mv  p3_lookup_table_2.dat-v2.8.2 $NEW_DIR

#if ( $single == 0) then
#  mv  ETAMPNEW_DATA_DBL ETAMPNEW_DATA
#  mv  ETAMPNEW_DATA.expanded_rain_DBL ETAMPNEW_DATA.expanded_rain
#  mv  RRTM_DATA_DBL RRTM_DATA
#  mv  RRTMG_LW_DATA_DBL RRTMG_LW_DATA
#  mv  RRTMG_SW_DATA_DBL RRTMG_SW_DATA
#else
#  mv  ETAMPNEW_DATA ETAMPNEW_DATA
#  mv  ETAMPNEW_DATA.expanded_rain ETAMPNEW_DATA.expanded_rain
#  mv  RRTM_DATA RRTM_DATA
#  mv  RRTMG_LW_DATA RRTMG_LW_DATA
#  mv  RRTMG_SW_DATA RRTMG_SW_DATA
#endif

mv  GENPARM.TBL $NEW_DIR
mv  LANDUSE.TBL $NEW_DIR
mv  SOILPARM.TBL $NEW_DIR
mv  URBPARM.TBL $NEW_DIR
mv  VEGPARM.TBL $NEW_DIR
mv  MPTABLE.TBL $NEW_DIR
mv  tr49t67 $NEW_DIR
mv  tr49t85 $NEW_DIR
mv  tr67t85 $NEW_DIR
mv  gribmap.txt $NEW_DIR
mv  grib2map.tbl $NEW_DIR

