# srun --gpus 2 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 2 --gres=gpu:1 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 2 --gpus-per-task=1 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-nq-qa-test-slurm-100.sh