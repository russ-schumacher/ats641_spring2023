#!/bin/bash

#### script to run CM1 on the CSU asha cluster.

#SBATCH --partition=all
#SBATCH --job-name=test-cm1
#SBATCH --ntasks=20
#SBATCH --mail-user=your_email_address@server dot edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --output=cm1_stdout.txt

## script to run CM1

module load libraries/netcdf-2022
module load mpi/openmpi4.0.2-gcc9.2.0


echo "running CM1"
date
  mpiexec ./cm1.exe

echo "done!"
date
