#!/bin/sh
#PBS -q cfc
#PBS -A qbic
#PBS -l nodes=1:ppn=10:cfc
#PBS -l walltime=200:00:00
#PBS -l mem=50g
# properties = {properties}

set -e

echo Running on machine $(hostname)

module load qbic/anaconda/2.1.0
module load devel/java_jdk/1.7.0u45
module load bio/samtools/1.2
module load qbic/bwa
module load qbic/fastqc/0.11.4
module load qbic/picard/git
module load qbic/ngs-bits

{exec_job}
exit 0
