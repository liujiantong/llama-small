import sys
import torch

if not torch.cuda.is_available():
    print("CUDA is not available.")
    sys.exit(0)

num_gpus = torch.cuda.device_count()
print(f"Number of available GPUs: {num_gpus}")

for i in range(num_gpus):
    device = torch.device(f"cuda:{i}")
    print(torch.cuda.get_device_properties(device))
