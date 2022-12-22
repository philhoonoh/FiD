# srun --gpus 2 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 2 --gres=gpu:1 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 2 --gpus-per-task=1 --array=1-100 slurm-array-testing.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-nq-qa-test-slurm-100.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-slurm-nq-dev-seal.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-slurm-tqa-test-dpr.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-slurm-tqa-dev-dpr.sh


# sbatch --gpus 1 --array=1-100 run-real-incremental-slurm-tqa-dev-seal.sh
#sbatch --gpus 1 --array=4 run-real-incremental-slurm-tqa-dev-seal.sh
# sbatch --gpus 1 --array=38-100 run-real-incremental-slurm-tqa-dev-seal.sh
# sbatch --gpus 1 --array=1-100 run-real-incremental-slurm-tqa-dev-contriever.sh

# sbatch --gpus 1 --cpus-per-gpu=1 --array=1 --time=2:00:00 run-real-incremental-slurm-nq-dev-seal-context1.sh
# sbatch --gpus 1 --cpus-per-gpu=1 --array=1 --time=2:00:00 run-real-incremental-slurm-nq-dev-seal-context1.sh