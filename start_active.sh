#!/bin/sh

OMP_NUM_THREADS=1 torchrun --nproc_per_node 2 interactive.py --ckpt_dir ~/ai/llama-models/7B_Split/ --tokenizer_path ~/ai/llama-models/tokenizer.model
