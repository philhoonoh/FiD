#!/bin/bash

export gpu_=$CUDA_VISIBLE_DEVICES

for file in /data/philhoon-relevance/FiD/open_domain_data/ATTEN_TRUNC_PSG_LAST/*.json
do
    name=${file##*/}
    base=${name%.json}

    echo "CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
        --model_path /data/philhoon-relevance/FiD/pretrained_models/nq_reader_large \
        --eval_data "$file" \
        --write_results \
        --per_gpu_batch_size 40 \
        --n_context 20 \
        --name "$base" \
        --checkpoint_dir /data/philhoon-relevance/FiD/results/ATTEN_TRUNC_PSG_LAST
    "
    CUDA_VISIBLE_DEVICES="$gpu_" python test_reader-slurm.py \
        --model_path /data/philhoon-relevance/FiD/pretrained_models/nq_reader_large \
        --eval_data "$file" \
        --write_results \
        --per_gpu_batch_size 40 \
        --n_context 20 \
        --name "$base" \
        --checkpoint_dir /data/philhoon-relevance/FiD/results/ATTEN_TRUNC_PSG_LAST
done

# Script for selection strategies
# inputs : all json files on /data/philhoon-relevance/FiD/open_domain_data/NQ_KILT_BM25_SELECTION
# outputs : /data/philhoon-relevance/FiD/results/NQ_KILT_BM25_SELECTION

#CUDA_VISIBLE_DEVICES=1 python test_reader.py \
#        --model_path /data/philhoon-relevance/FiD/pretrained_models/nq_reader_large \
#        --eval_data /data/philhoon-relevance/FiD/open_domain_data/NQ_KILT_BM25_SELECTION/"$dataset" \
#        --write_results \
#        --per_gpu_batch_size 128 \
#        --n_context 5 \
#        --name "$attempt" \
#        --checkpoint_dir /data/philhoon-relevance/FiD/results/NQ_KILT_BM25_SELECTION

# sbatch --gpus 1 --cpus-per-gpu=8 run-att-score-truncate_nq_dev-3.sh