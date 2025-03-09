FROM nvidia/cuda:12.6.0-cudnn-devel-ubuntu20.04
LABEL authors="hugop"

# Copy the current directory contents into the container at /app
COPY . /app

# Install nano text editor
RUN apt-get update && apt-get install -y nano

# Install git
RUN apt-get update && apt-get install -y git

# Install wget
RUN apt install wget

# Install CMake
RUN wget https://github.com/Kitware/CMake/releases/download/v4.0.0-rc3/cmake-4.0.0-rc3-linux-x86_64.tar.gz
RUN tar -xzvf cmake-4.0.0-rc3-linux-x86_64.tar.gz -C /opt/cmake


CMD ["/bin/bash"]