FROM nvidia/cuda:12.6.0-cudnn-devel-ubuntu20.04
LABEL authors="hugop"

# Install nano text editor
RUN apt-get update && apt-get install -y nano

# Install git
RUN apt-get update && apt-get install -y git

# Install wget
RUN apt install wget

# Install CMake, amnd add to path
RUN echo "Installing CMake"
RUN wget -P /opt/cmake https://github.com/Kitware/CMake/releases/download/v4.0.0-rc3/cmake-4.0.0-rc3-linux-x86_64.tar.gz
RUN tar -xzvf /opt/cmake/cmake-4.0.0-rc3-linux-x86_64.tar.gz -C /opt/cmake
RUN rm /opt/cmake/cmake-4.0.0-rc3-linux-x86_64.tar.gz

ENV PATH="/opt/cmake/cmake-4.0.0-rc3-linux-x86_64/bin:${PATH}"

# Install Python & pip
RUN apt update
RUN apt install python3 -y
RUN apt install python3-setuptools -y

# Install CONDA see https://www.anaconda.com/docs/getting-started/miniconda/install#quickstart-install-instructions
SHELL ["/bin/bash", "-c"]

RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
RUN bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
RUN rm ~/miniconda3/miniconda.sh
RUN . ~/miniconda3/bin/activate
ENV PATH="~/miniconda3/bin:${PATH}"

# RUN .  ~/miniconda3/etc/profile.d/conda.sh

RUN ~/miniconda3/bin/conda init --all

RUN .  ~/.bashrc

# # # Install Mamba
RUN conda install mamba -c conda-forge -y

ENV MAMBA_ROOT_PREFIX=/opt/mamba

# # # Setup python env
RUN pwd
COPY environment.yml .
RUN mamba env create -f environment.yml -y
# RUN ~/miniconda3/bin/mamba env create -f environment.yml -y

CMD ["/bin/bash"]