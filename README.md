# CUDA-CEOs
* CUDA optimised CEOs NNS algorithms

---

## Running

### Docker (preferred)
- To ensure a consistent development and run environment, we use Docker.

#### Prerequisites
- Docker
- nvidia container toolkit (see this [page](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html))
- CUDA toolkit (including drivers). This project was built with CUDA 12.6 with driver version 561.19
- **NB** - When using Windows with WSL2, special instructions apply (see this [page]https://docs.nvidia.com/cuda/wsl-user-guide/index.html)

#### Building the Image
- Run the following command in the root directory of the project:
```bash
docker build -t cuda-ceos .
```

#### Running the Container
- Run the following command in the root directory of the project:
- **NB** Make sure to add the
```bash
docker run --gpus all --runtime=nvidia -it --rm cuda-ceos
```