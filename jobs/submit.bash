#!/bin/bash

##  SLURM batch script to submit jobs to amarel:
##
##  Use 'sbatch submit.bash' to queue the job
##  Use 'squeue -p p_omg_1'  to check our group jobs (including JOBID)
##  Use 'scancel JOBID'      to cancel a job

#SBATCH --exclusive                  # don't run on nodes with other jobs running
#SBATCH --partition=jbrodie_2          # Partition (job queue), NodeList: 108,116-120
#SBATCH --requeue                    # Return job to the queue if preempted
#SBATCH --job-name=DATA-WRF-ROMS     # Assign an short name to your job
#SBATCH --nodes=1                    # Number of nodes you require (each has 32 PETs)
#SBATCH --ntasks=24                  # Total number of tasks you'll launch
#SBATCH --ntasks-per-node=24         # Number of tasks you'll launch on each node
#SBATCH --cpus-per-task=1            # Cores per task (>1 if multithread tasks)
#SBATCH --mem=120000                 # Real memory (RAM) required (MB)
#SBATCH --time=2-00:00:00            # Total run time limit (DD-HH:MM:SS)
#SBATCH --output=log.01              # STDOUT output file
#SBATCH --error=err.01               # STDERR output file (optional)
#SBATCH --export=ALL                 # Export you current env to the job env

##srun --mpi=pmi2 ./wrf.exe

  srun --mpi=pmi2 /projectsp/jbrodie_1/tnmiles/COMT2020/romsM_atmsbl coupling_esmf_atm_sbl.in

##srun --mpi=pmi2 ./romsM_bulk coupling_esmf_bulk_flux.in
