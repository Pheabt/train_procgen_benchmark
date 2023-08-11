import os

# Define the required packages and versions
packages = [
    "numpy",
    "pfrl",
    "setuptools==65.5.0",
    "gym==0.21",
    "procgen",
    "torch==1.10.1+cu113",
    "torchvision==0.11.2+cu113",
    "torchaudio===0.10.1+cu113"
]

# Install the specified packages
for package in packages:
    os.system(f"pip install {package} -f https://download.pytorch.org/whl/cu113/torch_stable.html stable-baselines3[extra]")
