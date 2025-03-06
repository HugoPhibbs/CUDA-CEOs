FROM nvidia/cuda:12.6.0-cudnn-devel-ubuntu20.04
LABEL authors="hugop"

# Copy the current directory contents into the container at /app
COPY . /app

# Install nano text editor
RUN apt-get update && apt-get install -y nano

# Install git
RUN apt-get update && apt-get install -y git

CMD ["/bin/bash"]