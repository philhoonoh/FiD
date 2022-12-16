#!/bin/bash

dataArray=("test")
echo $SLURM_ARRAY_TASK_ID
export i=$SLURM_ARRAY_TASK_ID
echo $i
echo $CUDA_VISIBLE_DEVICES
echo $SLURM_JOB_GPUS
python test-slurm.py
