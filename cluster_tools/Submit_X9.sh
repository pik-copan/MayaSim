#!/usr/bin/env bash

jid1=$(sbatch job_x9_compute.sh)
echo $jid1
sleep 2
sbatch --dependency=afterok:${jid1##* } job_x9_eval.sh

