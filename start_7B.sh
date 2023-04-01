#!/bin/sh

CUDA_VISIBLE_DEVICES=1,2 OMP_NUM_THREADS=2 torchrun --nproc_per_node 2 example1.py --max_batch_size 10 --ckpt_dir ~/ai/llama-models/7B_MP2/ --tokenizer_path ~/ai/llama-models/tokenizer.model
