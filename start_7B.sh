#!/bin/sh

OMP_NUM_THREADS=1 torchrun --nproc_per_node 2 example1.py --ckpt_dir ~/ai/llama-models/7B_MP2/ --tokenizer_path ~/ai/llama-models/tokenizer.model
