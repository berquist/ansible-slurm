#!/bin/bash
set -e

cd $1
mkdir /etc/slurm-llnl
./configure --sysconfdir=/etc/slurm-llnl
make 
make contrib
make install 
cp etc/slurmd.service /etc/systemd/system/
cp etc/slurmctld.service /etc/systemd/system/
