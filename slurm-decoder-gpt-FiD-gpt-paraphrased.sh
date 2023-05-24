#!/bin/bash

#echo $SLURM_ARRAY_TASK_ID
#export i=$SLURM_ARRAY_TASK_ID
#echo $CUDA_VISIBLE_DEVICES
export gpu_=$CUDA_VISIBLE_DEVICES
#export gpu_=0

# FiD setting
model_path="/data/philhoon-relevance/FiD/pretrained_models/nq_reader_large"
eval_data="/userhomes/philhoon/paraphrase/results/paraphrased/kilt_bm25_nq_dev_pos1_gpt-3.5-turbo_P2_0414-2155-new_c-Fid-format.json"
per_gpu_batch_size=32
n_context=1
dir='/userhomes/philhoon/paraphrase/results/paraphrased/FiD-results'
probe_name='gpt-3.5-turbo_P2'

echo "CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
    --model_path "$model_path" \
    --eval_data "$eval_data" \
    --write_results \
    --per_gpu_batch_size "$per_gpu_batch_size" \
    --n_context "$n_context" \
    --name "$probe_name" \
    --checkpoint_dir "$dir"
"
CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
--model_path "$model_path" \
--eval_data "$eval_data" \
--write_results \
--per_gpu_batch_size "$per_gpu_batch_size" \
--n_context "$n_context" \
--name "$probe_name" \
--checkpoint_dir "$dir"

### Original
model_path="/data/philhoon-relevance/FiD/pretrained_models/nq_reader_large"
eval_data="/userhomes/philhoon/paraphrase/results/paraphrased/kilt_bm25_nq_dev_pos1_gpt-3.5-turbo_P2_0414-2155-original_c-Fid-format.json"
per_gpu_batch_size=32
n_context=1
dir='/userhomes/philhoon/paraphrase/results/paraphrased/FiD-results'
probe_name='original-context'

echo "CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
    --model_path "$model_path" \
    --eval_data "$eval_data" \
    --write_results \
    --per_gpu_batch_size "$per_gpu_batch_size" \
    --n_context "$n_context" \
    --name "$probe_name" \
    --checkpoint_dir "$dir"
"
CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
--model_path "$model_path" \
--eval_data "$eval_data" \
--write_results \
--per_gpu_batch_size "$per_gpu_batch_size" \
--n_context "$n_context" \
--name "$probe_name" \
--checkpoint_dir "$dir"






### sbatch -p desktop1 --gpus 1 --cpus-per-gpu=8 slurm-decoder-gpt-FiD-gpt-paraphrased.sh

