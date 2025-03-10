#!/bin/bash

set -x

# Initialize mamba shell for the current shell session
eval "$(mamba shell hook --shell bash)"

# Activate the CUDA-CEOs environment
mamba activate /opt/mamba/envs/CUDA-CEOs

# Optionally, initialize the shell for future sessions (this should be done just once)
mamba shell init --shell bash --root-prefix=~/.local/share/mamba

echo "mamba activate /opt/mamba/envs/CUDA-CEOs" >> ~/.bashrc

# Start a new bash shell to retain the environment variables
exec bash