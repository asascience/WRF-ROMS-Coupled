#!/bin/bash

##  SLURM batch script to submit jobs to amarel:
##
##  Use 'sbatch submit.bash' to queue the job
##  Use 'squeue -p p_omg_1'  to check our group jobs (including JOBID)
##  Use 'scancel JOBID'      to cancel a job

##SBATCH --exclusive                 # don't run on nodes with other jobs running
#SBATCH --partition=jbrodie_2        # Partition (job queue), NodeList: 108,116-120
#SBATCH --requeue                    # Return job to the queue if preempted
#SBATCH --job-name=real.exe          # Assign an short name to your job
#SBATCH --nodes=1                    # Number of nodes you require (each has 32 PETs)
#SBATCH --ntasks=1                   # Total number of tasks you'll launch
#SBATCH --ntasks-per-node=1          # Number of tasks you'll launch on each node
#SBATCH --cpus-per-task=1            # Cores per task (>1 if multithread tasks)
#SBATCH --mem=120000                 # Real memory (RAM) required (MB)
#SBATCH --time=0-04:00:00            # Total run time limit (DD-HH:MM:SS)
#SBATCH --output=log.01              # STDOUT output file
#SBATCH --error=err.01               # STDERR output file (optional)
#SBATCH --export=ALL                 # Export you current env to the job env

ln -sf /projectsp/jbrodie_1/tnmiles/repository/WPS/met_em.d01.2011-* .

./real.exe >& real.log
mv wrfinput_d01 /projectsp/jbrodie_1/tnmiles/repository/DATA/irene_wrf_inp_d01.nc
mv wrfbdy_d01 /projectsp/jbrodie_1/tnmiles/repository/DATA/irene_wrf_bdy_d01.nc
mv wrflowinp_d01 /projectsp/jbrodie_1/tnmiles/repository/DATA/irene_wrf_sst_d01.nc


