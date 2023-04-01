import sys
import torch

if not torch.cuda.is_available():
    print("CUDA is not available.")
    sys.exit(0)

num_gpus = torch.cuda.device_count()
print(f"Number of available GPUs: {num_gpus}")

for i in range(num_gpus):
    print(f"cuda:{i}:{torch.cuda.get_device_properties(i)}")
